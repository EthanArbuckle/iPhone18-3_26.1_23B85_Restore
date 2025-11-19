@interface SetupController
- (BFFNavigationController)modalWiFiSettingsNavigationController;
- (BOOL)_didRestoreIniTunes;
- (BOOL)_doesRestartFlowCauseErase;
- (BOOL)_hasLocaleAndLanguage;
- (BOOL)_isBackInBuddyAfterRestoreFromBackup:(BOOL)a3;
- (BOOL)_isBackInBuddyForActivationOnly;
- (BOOL)_isTeslaEnrolled;
- (BOOL)_restoreFromBackupJustFinished;
- (BOOL)_userSelectedLocale:(id)a3 localePaneScrollOffset:(double)a4;
- (BOOL)airplaneModeEnabled;
- (BOOL)doesTapFreeSetupAffectsClass:(Class)a3;
- (BOOL)hasCloudConfiguration;
- (BOOL)isAlertPresented:(id)a3;
- (BOOL)isFirstRunWithoutCloudConfiguration;
- (BOOL)isLanguageSet;
- (BOOL)shouldBeginMigration;
- (BOOL)shouldBeginRestore;
- (BOOL)shouldEndLifecycleForCause:(unint64_t)a3;
- (BOOL)shouldTapFreeSetupSkipControllerClass:(Class)a3;
- (BOOL)updateLanguageLocale:(id)a3;
- (BOOL)userSelectedLanguageWithLocale:(id)a3 countryCode:(id)a4 localePaneScrollOffset:(double)a5;
- (BOOL)willRestartFlowToViewController:(id)a3;
- (BOOL)willSetUpAsNew;
- (BuddyFlowItemDispositionProvider)flowItemDispositionProvider;
- (BuddyMiscState)miscState;
- (BuddyRemoteManagementProvider)remoteManagementProvider;
- (SetupController)init;
- (id)_associationErrorFromNotification:(id)a3;
- (id)_stringForStartupCause:(unint64_t)a3;
- (unint64_t)intendedRestoreType;
- (unint64_t)restoreType;
- (void)TFDEPPollTimerFired:(id)a3;
- (void)_addSBAlertItemsSupressionAssertion;
- (void)_cleanUpModalWiFiSettings;
- (void)_commitAnalytics;
- (void)_connectedToWiFiAfterProximity;
- (void)_createNavigationController;
- (void)_executeAfterBuddyPreTerminationTasksFinish:(id)a3;
- (void)_exitBuddyForDemoSetUp;
- (void)_exitBuddyForMDMMigration;
- (void)_hideModalWiFiSettingsWithReason:(id)a3;
- (void)_initializeGreen;
- (void)_languageChangeAlertDone;
- (void)_localeChanged;
- (void)_menuButtonPressed;
- (void)_modalWifiControllerDone:(id)a3;
- (void)_networkPathChanged;
- (void)_persistAnalyticsForLanguageReboot;
- (void)_persistAnalyticsForSoftwareUpdate;
- (void)_populatePowerLogAnalytics;
- (void)_populateSetupAnalytics;
- (void)_preCommitAnalytics;
- (void)_preStashAnalytics;
- (void)_preflightDispositionValidationWithControllerClass:(Class)a3;
- (void)_prepareForCloudRestoreReboot;
- (void)_prepareForDeviceMigrationAfterSoftwareUpdate:(BOOL)a3;
- (void)_prepareForMigrationReboot;
- (void)_queuePreTerminationTask:(id)a3 taskDescription:(id)a4 withTimeoutInSeconds:(id)a5;
- (void)_refreshLanguage;
- (void)_removeSBAlertItemsSupressionAssertion;
- (void)_setupAnalytics;
- (void)_setupAndStartMDMEnrollmentIfNeeded;
- (void)_setupSnapshotRemoved;
- (void)_setupStateChanged;
- (void)_showMiniAlertWithRestart:(BOOL)a3 withLanguage:(id)a4;
- (void)_showModalWiFiSettingsWithDismissalTriggers:(unint64_t)a3 completionHandler:(id)a4;
- (void)_startDeviceMigration;
- (void)_stashAnalytics;
- (void)_waitForBuddyTerminationTasksToFinish;
- (void)_wifiAssociationDidFinish:(id)a3;
- (void)_willEndLifecycleForDataTransfer;
- (void)_writeGreenInformedDefaultPlistIfNecessary;
- (void)_writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:(id)a3;
- (void)activationConfigurationChanged:(BOOL)a3 isActivated:(BOOL)a4;
- (void)buddyViewControllerDidPressAlternateSetupButton:(id)a3;
- (void)checkForUpdatedCarrierBundle;
- (void)checkMiniBuddyBreadcrumbs;
- (void)dealloc;
- (void)dialerDidDismiss:(id)a3;
- (void)didApplyProximitySettingsWithWillReboot:(id)a3;
- (void)didBecomeActive;
- (void)didEnterBackground;
- (void)didMarkBuddyComplete;
- (void)didRestartFlow;
- (void)disableTapFreeSetUp;
- (void)dismissAlert:(id)a3 animated:(BOOL)a4;
- (void)dismissAlert:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dismissProximityPinCode;
- (void)displayIncompatibleProximityPairingFromDeviceClass:(id)a3;
- (void)displayProximityPinCode:(id)a3 language:(id)a4 visual:(BOOL)a5 accessibilitySettings:(id)a6;
- (void)displayUpdateRequiredToMigrate;
- (void)endLifecycleDueToCause:(unint64_t)a3;
- (void)handleDebugGesture;
- (void)invalidateAssertionIfNeededForStartUpCause:(unint64_t)a3;
- (void)markBuddyComplete;
- (void)observer:(id)a3 didObserveLanguageChange:(BOOL)a4 localeChange:(BOOL)a5;
- (void)prepareWithCompletion:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)proximityAutomatedDeviceEnrollmentController:(id)a3 wantsToTransitionToPairingWithPin:(id)a4;
- (void)respring;
- (void)runWithScene:(id)a3;
- (void)setNeedsConfigurationUpdate;
- (void)skippedApplyProximitySettings;
- (void)startTFDEPPolling;
- (void)stopTFDEPPolling;
- (void)terminate;
- (void)unableToApplyProximitySettings;
- (void)userDidChooseLanguage;
- (void)userSelectedLanguage:(id)a3;
- (void)willApplyProximitySettingsWithCompletion:(id)a3;
- (void)willEndLifecycleDueToCause:(unint64_t)a3 allowDismissal:(BOOL)a4;
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
    v3 = [(BYRBSCPUAssertionProvider *)v2 acquireAssertion];
    [location[0] setCpuAssertion:v3];

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
    v13 = [location[0] environment];
    v14 = [v13 featureFlags];
    v15 = [v12 initWithFeatureFlags:v14];
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
    v109 = [*(location[0] + 30) buddyPreferences];
    v24 = [*(location[0] + 30) buddyPreferencesExcludedFromBackup];
    v161 = [v23 initFromBackedUpPreferences:v109 andNotBackedUpPreferences:v24];

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
    v29 = [*(location[0] + 30) existingSettings];
    v102 = [*(location[0] + 30) setupMethod];
    v30 = [(BuddyPendingRestoreState *)v28 initWithExistingSettings:v29 setupMethod:?];
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
    v98 = [*(location[0] + 30) displayZoomExecutor];
    v44 = [(AppearanceModeProvider *)v43 initWithDisplayZoomExecutor:?];
    [*(location[0] + 30) setAppearanceModeProvider:v44];

    v45 = objc_alloc_init(_TtC5Setup28SetupUserDispositionProvider);
    [*(location[0] + 30) setUserDispositionProvider:v45];

    v46 = +[BYDeviceConfiguration currentConfiguration];
    [*(location[0] + 30) setDeviceConfiguration:v46];

    v47 = [BuddyFlowItemDispositionProvider alloc];
    v114 = [*(location[0] + 30) setupMethod];
    v101 = [*(location[0] + 30) runState];
    v48 = [(BuddyFlowItemDispositionProvider *)v47 initWithSetupMethod:v114 runState:?];
    [*(location[0] + 30) setFlowItemDispositionProvider:v48];

    v49 = [BYPaneFeatureAnalyticsManager alloc];
    v123 = [*(location[0] + 30) analyticsManager];
    v117 = [*(location[0] + 30) runState];
    v96 = BYPaneFeatureAnalyticsHostSetupAssistant;
    v104 = [*(location[0] + 30) flowItemDispositionProvider];
    v50 = [v49 initWithAnalyticsManager:v123 runState:v117 host:v96 flowItemDispositionProvider:?];
    [*(location[0] + 30) setPaneFeatureAnalyticsManager:v50];

    v51 = objc_alloc_init(_TtC5Setup19LockdownModeManager);
    [*(location[0] + 30) setLockdownModeProvider:v51];

    v52 = [BYAnalyticsEventAppearance alloc];
    v113 = [*(location[0] + 30) analyticsManager];
    v100 = [*(location[0] + 30) buddyPreferencesExcludedFromBackup];
    v53 = [v52 initWithAnalyticsManager:v113 buddyPreferencesExcludedFromBackup:?];
    [*(location[0] + 30) setAnalyticsEventAppearance:v53];

    v54 = objc_alloc_init(BuddyChildSetupPresenter);
    [*(location[0] + 30) setChildSetupPresenter:v54];

    v55 = [_TtC5Setup19IntelligenceManager alloc];
    v125 = [*(location[0] + 30) featureFlags];
    v120 = [*(location[0] + 30) buddyPreferences];
    v115 = [*(location[0] + 30) chronicle];
    v103 = [*(location[0] + 30) deviceProvider];
    v56 = [(IntelligenceManager *)v55 initWithFeatureFlags:v125 preferences:v120 chronicle:v115 deviceProvider:?];
    [*(location[0] + 30) setIntelligenceProvider:v56];

    v57 = objc_alloc_init(BuddyMultilingualFlowManager);
    [*(location[0] + 30) setMultilingualFlowManager:v57];

    v58 = objc_alloc_init(_TtC5Setup32ExpressSettingsSetupCacheManager);
    [*(location[0] + 30) setExpressSettingsCache:v58];

    v59 = [BuddyDiagnosticsThreadDecorator alloc];
    v121 = [*(location[0] + 30) setupMethod];
    v116 = [*(location[0] + 30) runState];
    v105 = [*(location[0] + 30) flowItemDispositionProvider];
    v60 = [BuddyDiagnosticsThreadDecorator initWithSetupMethod:v59 runState:"initWithSetupMethod:runState:flowItemDispositionProvider:fundamentalFlowStartupProvider:" flowItemDispositionProvider:v121 fundamentalFlowStartupProvider:v116];
    [*(location[0] + 30) setDiagnosticsThreadDecorator:v60];

    v61 = +[BuddyThreatNotificationProvider sharedInstance];
    [*(location[0] + 30) setThreatNotificationProvider:v61];

    v62 = [_TtC5Setup33BuddyMultitaskingSelectionManager alloc];
    v112 = [*(location[0] + 30) deviceProvider];
    v99 = [*(location[0] + 30) buddyPreferences];
    v63 = [(BuddyMultitaskingSelectionManager *)v62 initWithDeviceProvider:v112 preferences:?];
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
    v129 = [*(location[0] + 30) passcodeCacheManager];
    v128 = [*(location[0] + 30) buddyPreferences];
    v127 = +[BYPreferencesController buddyPreferencesEphemeral];
    v126 = [*(location[0] + 30) featureFlags];
    v124 = [*(location[0] + 30) networkProvider];
    v118 = [*(location[0] + 30) managedConfiguration];
    v108 = [*(location[0] + 30) showModalWiFiSettingsBlock];
    v66 = [(BuddyEnrollmentCoordinator *)v65 initWithPasscodeCacheManager:v129 buddyPreferences:v128 buddyPreferencesEphemeral:v127 featureFlags:v126 networkProvider:v124 managedConfiguration:v118 showModalWiFiSettingsBlock:v108 exitBuddyBlock:v154];
    [*(location[0] + 30) setEnrollmentCoordinator:v66];

    v67 = [*(location[0] + 30) runState];
    v91 = [v67 hasCompletedInitialRun] ^ 1;

    if (v91)
    {
      v106 = +[BYSetupUserDisposition current];
      v68 = [v106 isChild];
      v93 = [v68 BOOLValue];

      if (v93)
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
        v70 = [*(location[0] + 30) setupMethod];
        [v70 setIntent:2];

        v71 = [*(location[0] + 30) flowItemDispositionProvider];
        [v71 setPreferredDispositions:16];
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
        v73 = [*(location[0] + 30) setupMethod];
        [v73 setIntent:1];

        v74 = [*(location[0] + 30) flowItemDispositionProvider];
        [v74 setPreferredDispositions:4];
      }
    }

    v75 = [BYBuddySafetyAndHandlingManager alloc];
    v97 = [*(location[0] + 30) buddyPreferencesExcludedFromBackup];
    v76 = [(BYBuddySafetyAndHandlingManager *)v75 initWithPreferences:?];
    [location[0] setSafetyAndHandlingManager:v76];

    v107 = [location[0] environment];
    v77 = [v107 runState];
    v92 = [v77 hasCompletedInitialRun] ^ 1;

    v78 = [location[0] safetyAndHandlingManager];
    if (v92)
    {
      [v78 restoreStatePostReboot];
    }

    else
    {
      [v78 resetState];
    }

    v79 = [location[0] safetyAndHandlingManager];
    [*(location[0] + 30) setSafetyAndHandlingManager:v79];

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

    v119 = [*(location[0] + 30) miscState];
    v110 = [location[0] environment];
    v85 = [v110 managedConfiguration];
    [v119 setWasPasscodeSetWhenBuddyStarted:{objc_msgSend(v85, "isPasscodeSet") & 1}];

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
  v5 = self;
  v4 = a2;
  [(BuddyLanguageChangeObserver *)self->_languageObserver stopObservingLanguageChanges];
  if (v5->_cloudConfigurationChangeNotificationObserver)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v2 removeObserver:v5->_cloudConfigurationChangeNotificationObserver];
  }

  if (v5->_sbAlertItemsSuppressionAssertion)
  {
    CFRelease(v5->_sbAlertItemsSuppressionAssertion);
    v5->_sbAlertItemsSuppressionAssertion = 0;
  }

  v3.receiver = v5;
  v3.super_class = SetupController;
  [(SetupController *)&v3 dealloc];
}

- (BuddyMiscState)miscState
{
  v2 = [(SetupController *)self environment:a2];
  v3 = [(BYEnvironment *)v2 miscState];

  return v3;
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

- (BOOL)_isBackInBuddyAfterRestoreFromBackup:(BOOL)a3
{
  v3 = 0;
  if (a3)
  {
    v4 = [(SetupController *)self _restoreFromBackupJustFinished];
    v3 = 0;
    if (v4)
    {
      v3 = [(SetupController *)self _hasLocaleAndLanguage];
    }
  }

  return v3 & 1;
}

- (void)_preflightDispositionValidationWithControllerClass:(Class)a3
{
  v18 = self;
  v17 = a2;
  aClass = a3;
  if ((os_variant_has_internal_ui() & 1) == 0)
  {
    v3 = [(SetupController *)v18 environment];
    v4 = [(BYEnvironment *)v3 flowItemDispositionProvider];
    v5 = [v4 dispositions];

    v15 = v5;
    if ((v5 & 2) == 2 && ([(objc_class *)aClass conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem]& 1) != 0)
    {
      v14 = [(objc_class *)aClass applicableDispositions];
      v13 = (v14 & v15) != 0;
      if ((v14 & v15) == 0)
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
        v6 = [(SetupController *)v18 environment];
        v7 = [(BYEnvironment *)v6 setupMethod];
        [v7 setIntent:1];

        v8 = [(SetupController *)v18 environment];
        v9 = [(BYEnvironment *)v8 flowItemDispositionProvider];
        [v9 setPreferredDispositions:4];
      }
    }
  }
}

- (void)_createNavigationController
{
  v133 = self;
  v132 = a2;
  [(SetupController *)self _refreshLanguage];
  v2 = [BFFNavigationController alloc];
  v3 = +[BYDevice currentDevice];
  v4 = [v2 initIgnoringDismissals:{objc_msgSend(v3, "type") == 1}];
  nav = v133->_nav;
  v133->_nav = v4;

  [BFFViewControllerSpinnerManager configureWithNavigationController:v133->_nav];
  v6 = [(SetupController *)v133 environment];
  v7 = [(BYEnvironment *)v6 buddyPreferencesExcludedFromBackup];
  LOBYTE(v3) = [v7 BOOLForKey:@"PushWithoutDeferringTransitionsWhileInBackground"];

  v131 = v3 & 1;
  if ([(SetupController *)v133 launchedForMigration]|| (v131 & 1) != 0)
  {
    location = _BYLoggingFacility();
    v129 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      if ([(SetupController *)v133 launchedForMigration])
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
    [(BFFNavigationController *)v133->_nav setPushWithoutDeferringTransitionsWhileInBackground:1];
  }

  [(SetupController *)v133 _setupAnalytics];
  v10 = +[BFFStyle sharedStyle];
  [v10 applyThemeToNavigationController:v133->_nav];

  v11 = [(BFFNavigationController *)v133->_nav view];
  v12 = +[BFFStyle sharedStyle];
  v13 = [v12 backgroundColor];
  [v11 setBackgroundColor:v13];

  v14 = [BuddyFlowDiverter alloc];
  v15 = [(BuddyFlowDiverter *)v14 initWithEnvironment:v133->_environment];
  [(SetupController *)v133 setFlowDiverter:v15];

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
    [(SetupController *)v133 setFundamentalFlow:v17];

    v18 = [(SetupController *)v133 environment];
    v19 = [(BYEnvironment *)v18 diagnosticsThreadDecorator];
    [(BuddyFundamentalFlow *)v19 overrideThrowExceptionHandler:&stru_10032B268];
  }

  else
  {
    v20 = [BuddyFundamentalFlow alloc];
    v21 = v133;
    v18 = objc_alloc_init(BuddyFeatureFlags);
    v19 = [(BuddyFundamentalFlow *)v20 initWithFlowProvider:v21 featureFlags:v18];
    [(SetupController *)v133 setFundamentalFlow:v19];
  }

  objc_initWeak(&from, v133);
  v120 = _NSConcreteStackBlock;
  v121 = -1073741824;
  v122 = 0;
  v123 = sub_1000730C0;
  v124 = &unk_10032B290;
  objc_copyWeak(&v125, &from);
  v22 = [(SetupController *)v133 fundamentalFlow];
  [(BuddyFlowProducer *)v22 setWillSupplyInitialFlowItemClass:&v120];
  v119 = 0;

  v23 = [BuddyNavigationFlowController alloc];
  v24 = v133;
  v25 = v133->_nav;
  v26 = [(SetupController *)v133 flowDiverter];
  v27 = [(SetupController *)v133 environment];
  v28 = [(BuddyNavigationFlowController *)v23 initWithNavigationController:v25 usingRestoreProvider:v24 usingFlowDiverter:v26 environment:v27];
  [(SetupController *)v133 setNavigationFlowController:v28];

  v29 = v133;
  v30 = [(SetupController *)v133 navigationFlowController];
  [(BuddyNavigationFlowController *)v30 setFlowDelegate:v29];

  v31 = v133;
  v32 = [(SetupController *)v133 navigationFlowController];
  [(BuddyNavigationFlowController *)v32 setLifecycleDelegate:v31];

  v33 = [(SetupController *)v133 environment];
  v34 = [(BYEnvironment *)v33 proximitySetupController];
  v35 = [(SetupController *)v133 navigationFlowController];
  [(BuddyNavigationFlowController *)v35 setProximitySetupController:v34];

  v36 = [(SetupController *)v133 fundamentalFlow];
  v37 = [(SetupController *)v133 navigationFlowController];
  [(BuddyNavigationFlowController *)v37 setFlowProducer:v36];

  v38 = [(SetupController *)v133 environment];
  v39 = [(BYEnvironment *)v38 buddyPreferences];
  v40 = [(SetupController *)v133 navigationFlowController];
  [(BuddyNavigationFlowController *)v40 setBuddyPreferences:v39];

  v41 = [(SetupController *)v133 environment];
  v42 = [(BYEnvironment *)v41 analyticsManager];
  v43 = [(SetupController *)v133 navigationFlowController];
  [(BuddyNavigationFlowController *)v43 setAnalyticsManager:v42];

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
  v45 = [(SetupController *)v133 environment];
  v46 = [(BYEnvironment *)v45 buddyPreferencesExcludedFromBackup];
  v47 = [v46 BOOLForKey:@"AnimateLanguageChoice"];

  v112 = v47 & 1;
  v48 = [(SetupController *)v133 environment];
  v49 = [(BYEnvironment *)v48 buddyPreferencesExcludedFromBackup];
  [v49 removeObjectForKey:@"AnimateLanguageChoice" onlyFromMemory:0];

  [(SetupController *)v133 setInitialAnimateLanguageChoiceValue:v112 & 1];
  v50 = 0;
  if (v115)
  {
    v50 = v112;
  }

  v133->_shouldAnimateLocaleScreen = v50 & 1;
  v51 = +[BYLocationController sharedBuddyLocationController];
  [v51 setFakeMode:v133->_shouldAnimateLocaleScreen];

  v52 = [(SetupController *)v133 environment];
  v53 = [(BYEnvironment *)v52 buddyPreferencesExcludedFromBackup];
  v54 = [v53 BOOLForKey:@"DisplayZoomRestart"];
  [(SetupController *)v133 setShouldProceedFromAppearancePane:v54 & 1];

  v55 = [(SetupController *)v133 environment];
  v56 = [(BYEnvironment *)v55 buddyPreferencesExcludedFromBackup];
  [v56 removeObjectForKey:@"DisplayZoomRestart" onlyFromMemory:0];

  v57 = [(SetupController *)v133 shouldProceedFromAppearancePane];
  [(SetupController *)v133 setInitialDisplayZoomRestartValue:v57 & 1];
  CFPreferencesAppSynchronize(BYBuddyNotBackedUpIdentifier);
  v58 = [(SetupController *)v133 navigationFlowController];
  v103 = _NSConcreteStackBlock;
  v104 = -1073741824;
  v105 = 0;
  v106 = sub_100073134;
  v107 = &unk_10032B2B8;
  v108 = v133;
  v110 = v112 & 1;
  v111 = v115;
  v109 = v118;
  [(BuddyNavigationFlowController *)v58 setupInitialFlowWithCompletion:&v103];

  v59 = +[BuddyCloudConfigManager sharedManager];
  v60 = [v59 isMultiUser];

  v102 = v60 & 1;
  v61 = +[ACAccountStore defaultStore];
  v101 = [v61 aa_primaryAppleAccount];

  v100 = [v101 aa_isManagedAppleID] & 1;
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

    sub_100073590(v136, v62, v101, v63);
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
  v66 = [v65 didRestoreFromBackup];

  v95 = v66 & 1;
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
  v68 = [(SetupController *)v133 environment];
  v69 = [(BYEnvironment *)v68 proximitySetupController];
  v87 = _NSConcreteStackBlock;
  v88 = -1073741824;
  v89 = 0;
  v90 = sub_1000735BC;
  v91 = &unk_10032B2E0;
  v92 = v133;
  [v69 needsToResume:&v87];

  v70 = +[BYDevice currentDevice];
  LOBYTE(v69) = [v70 type] == 1;

  if (v69)
  {
    v71 = objc_alloc_init(BuddyBackgroundViewController);
    [(SetupController *)v133 setBackgroundViewController:v71];

    window = v133->_window;
    v73 = [(SetupController *)v133 backgroundViewController];
    [(BFFWindow *)window setRootViewController:v73];

    [(BFFNavigationController *)v133->_nav setModalPresentationStyle:2];
    [(BFFNavigationController *)v133->_nav setModalInPresentation:1];
    +[OBWelcomeController preferredContentSize];
    *&v86 = v74;
    *(&v86 + 1) = v75;
    v76 = v133->_nav;
    v85 = v86;
    [(BFFNavigationController *)v76 setForcedPreferredContentSize:v74, v75];
    [(BFFWindow *)v133->_window makeKeyAndVisible];
    v77 = [(SetupController *)v133 backgroundViewController];
    [(UIViewController *)v77 presentViewController:v133->_nav animated:1 completion:0];

    v78 = +[UIApplication sharedApplication];
    v79 = [(UIApplication *)v78 connectedScenes];
    v84 = [(NSSet *)v79 anyObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v80 = v84;
      [v80 _setBackgroundStyle:{3, v80}];
      objc_storeStrong(&v83, 0);
    }

    v81 = [(SetupController *)v133 backgroundViewController];
    [(BYEnvironment *)v133->_environment setBuddyBackgroundViewController:v81];

    objc_storeStrong(&v84, 0);
  }

  else
  {
    [(BFFWindow *)v133->_window setRootViewController:v133->_nav];
    [(BFFWindow *)v133->_window makeKeyAndVisible];
  }

  if (v115)
  {
    v82 = +[BuddySIMManager sharedManager];
    [v82 allowSIMUnlock];
  }

  objc_storeStrong(&v92, 0);
  objc_storeStrong(&v101, 0);
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
  v45 = self;
  v44 = a2;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(BYBuddyRunKeychainSyncMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v42 = CFPreferencesGetAppBooleanValue(BYBuddyRunMesaMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v41 = CFPreferencesGetAppBooleanValue(BYBuddyRunPaymentMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v40 = CFPreferencesGetAppBooleanValue(BYBuddyRunDiagnosticsMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v39 = CFPreferencesGetAppBooleanValue(BYBuddyRunCombinedDiagnosticsMismatchMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v38 = CFPreferencesGetAppBooleanValue(BYBuddyRunHSA2MiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v45->_inMiniBuddyFromPostDemoRestoreBreadcrumb = CFPreferencesGetAppBooleanValue(BYBuddyRunPostDemoRestoreMiniBuddy, BYBuddyNotBackedUpIdentifier, 0) != 0;
  v37 = CFPreferencesGetAppBooleanValue(BYBuddyRunStolenDeviceProtectionMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v36 = CFPreferencesGetAppBooleanValue(BYBuddyRunStandardMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v35 = CFPreferencesGetAppBooleanValue(BYBuddyRunRestoreSIMSetupMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v34 = CFPreferencesGetAppBooleanValue(BYBuddyRunMDMMigrationAfterSoftwareUpdateMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  oslog = _BYLoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100073FE4(buf, AppBooleanValue, v42, v41, v40, v39, v38, v45->_inMiniBuddyFromPostDemoRestoreBreadcrumb, v37, v36, v35, v34);
    _os_log_impl(&_mh_execute_header, oslog, v32, "Run with breadcrumbs: keychain=%d, touchid=%d, payment=%d, diagnostics=%d, combined diagnostics mismatch=%d, hsa2=%d, post demo restore=%d, stolen device protection=%d, standard=%d, restore SIMSetup: %d, MDM migration after SU: %d", buf, 0x44u);
  }

  objc_storeStrong(&oslog, 0);
  if (AppBooleanValue || v42 || v41 || v40 || v39 || v38 || v45->_inMiniBuddyFromPostDemoRestoreBreadcrumb || v37 || v36 || v35 || v34)
  {
    v45->_inMiniBuddyFromBreadcrumb = 1;
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
        v2 = [(SetupController *)v45 environment];
        v3 = [(BYEnvironment *)v2 managedConfiguration];
        [v3 removeBoolSetting:MCFeatureDiagnosticsSubmissionAllowed];

        v4 = [(SetupController *)v45 environment];
        v5 = [(BYEnvironment *)v4 capabilities];
        v6 = [v5 eligibleForChlorine];

        if (v6)
        {
          v7 = [(SetupController *)v45 environment];
          v8 = [(BYEnvironment *)v7 managedConfiguration];
          [v8 removeBoolSetting:MCFeatureAppAnalyticsAllowed];
        }
      }

      else
      {
        v29 = 0;
        v27 = 0;
        v9 = 0;
        if (v39)
        {
          v30 = [(SetupController *)v45 environment];
          v29 = 1;
          v28 = [v30 capabilities];
          v27 = 1;
          v9 = [v28 eligibleForChlorine];
        }

        if (v27)
        {
        }

        if (v29)
        {
        }

        if (v9)
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
          v12 = [(SetupController *)v45 environment];
          v13 = [(BYEnvironment *)v12 miscState];
          [v13 setLaunchedWithCombinedAnalyticsMismatch:1];
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
      v14 = [(SetupController *)v45 environment];
      v15 = [(BYEnvironment *)v14 miscState];
      [v15 setLaunchedToShowStolenDeviceProtection:1];
    }

    if (v35)
    {
      v16 = [(SetupController *)v45 environment];
      v17 = [(BYEnvironment *)v16 miscState];
      [v17 setLaunchedToShowSIMSetupAfterRestore:1];
    }

    if (v34)
    {
      [(SetupController *)v45 setLaunchedToShowMDMMigrationAfterSoftwareUpdate:1];
    }

    [location synchronize];
    v18 = [(SetupController *)v45 environment];
    v19 = [(BYEnvironment *)v18 buddyPreferencesExcludedFromBackup];
    v20 = [v19 BOOLForKey:@"ForcePrimaryAppleIDAuthentication"];

    if (v20)
    {
      v21 = [(SetupController *)v45 miscState];
      [(BuddyMiscState *)v21 setForcePrimaryAppleIDAuthentication:1];

      v22 = [(SetupController *)v45 environment];
      v23 = [(BYEnvironment *)v22 buddyPreferencesExcludedFromBackup];
      [v23 removeObjectForKey:@"ForcePrimaryAppleIDAuthentication" onlyFromMemory:0];
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

- (void)runWithScene:(id)a3
{
  v153 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v153->_window)
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
    [(BFFWindow *)v153->_window setWindowScene:location[0]];
    v148 = 1;
  }

  else
  {
    v5 = [(SetupController *)v153 inactivityTimer];
    [(BuddyInactivityTimer *)v5 start];

    v6 = dispatch_get_global_queue(25, 0);
    dispatch_async(v6, &stru_10032B300);

    v7 = dispatch_get_global_queue(25, 0);
    dispatch_async(v7, &stru_10032B320);

    v8 = +[BFFStyle sharedStyle];
    [v8 applyThemeToAllTableViews];

    objc_initWeak(&from, v153);
    v141 = _NSConcreteStackBlock;
    v142 = -1073741824;
    v143 = 0;
    v144 = sub_100075918;
    v145 = &unk_10032AF58;
    objc_copyWeak(&v146, &from);
    v9 = [BuddyMenuController menuButtonConsumerWithHandler:&v141];
    menuButtonConsumer = v153->_menuButtonConsumer;
    v153->_menuButtonConsumer = v9;

    v11 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v136 = -1073741824;
    v137 = 0;
    v138 = sub_100075960;
    v139 = &unk_10032B0D0;
    v140 = v153;
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
    window = v153->_window;
    v153->_window = v16;

    v18 = +[BYDevice currentDevice];
    v19 = [v18 type] == 0;

    if (v19)
    {
      v20 = v153->_window;
      v21 = +[UIColor blackColor];
      [(BFFWindow *)v20 setBackgroundColor:v21];
    }

    v22 = v153->_window;
    v23 = +[UIColor systemBlueColor];
    [(BFFWindow *)v22 setTintColor:v23];

    [(SetupController *)v153 checkMiniBuddyBreadcrumbs];
    v24 = +[BYSetupStateNotifier sharedNotifier];
    [v24 notifyStateChangedTo:1];

    v25 = +[ACAccountStore defaultStore];
    v129 = [v25 aa_primaryAppleAccount];

    if (!v129)
    {
      v26 = +[ACAccountStore defaultStore];
      v27 = [v26 aa_accountsEnabledForDataclass:kAccountDataclassDeviceLocator];
      v128 = [v27 lastObject];

      if (v128)
      {
        [v128 aa_setPrimaryAccount:1];
        v28 = +[ACAccountStore defaultStore];
        [v28 saveAccount:v128 withCompletionHandler:0];
      }

      objc_storeStrong(&v128, 0);
    }

    v29 = +[BYSetupStateManager sharedManager];
    v30 = 1;
    if (([v29 didSetupUsingiTunes] & 1) == 0)
    {
      v30 = 1;
      if (![(SetupController *)v153 _didRestoreIniTunes])
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

    v121 = [(SetupController *)v153 environment];
    v34 = [v121 networkProvider];
    v35 = [v34 networkReachable];

    if (v35)
    {
      v36 = +[BuddyAppleIDConfigurationManager sharedManager];
      [v36 getURLConfigurationWithHandler:0];

      v37 = dispatch_get_global_queue(0, 0);
      dispatch_async(v37, &stru_10032B340);
    }

    v90 = [(SetupController *)v153 environment];
    v38 = [(BYEnvironment *)v90 analyticsManager];
    v158[0] = @"networkReachable";
    v39 = [(SetupController *)v153 environment];
    v40 = [(BYEnvironment *)v39 networkProvider];
    v41 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v40 networkReachable] & 1);
    v159[0] = v41;
    v158[1] = @"hasCompletedInitialSetup";
    v42 = [(SetupController *)v153 environment];
    v43 = [(BYEnvironment *)v42 runState];
    v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v43 hasCompletedInitialRun] & 1);
    v159[1] = v44;
    v45 = [NSDictionary dictionaryWithObjects:v159 forKeys:v158 count:2];
    [v38 addEvent:@"com.apple.setupassistant.ios.start" withPayload:v45 persist:1];

    v120 = _BYLoggingFacility();
    v119 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [v121 networkProvider];
      v47 = [v46 networkReachable] & 1;
      v48 = [v121 networkProvider];
      sub_100075A38(v157, v47, [v48 connectedOverWiFi] & 1);
      _os_log_impl(&_mh_execute_header, v120, v119, "Network reachability at startup: %d isWifi: %d", v157, 0xEu);
    }

    objc_storeStrong(&v120, 0);
    v49 = nw_path_monitor_create();
    [(SetupController *)v153 setPathMonitor:v49];

    v50 = [(SetupController *)v153 pathMonitor];
    v51 = &_dispatch_main_q;
    nw_path_monitor_set_queue(v50, v51);

    v52 = [(SetupController *)v153 pathMonitor];
    update_handler = _NSConcreteStackBlock;
    v114 = -1073741824;
    v115 = 0;
    v116 = sub_100075A58;
    v117 = &unk_10032B368;
    v118 = v153;
    nw_path_monitor_set_update_handler(v52, &update_handler);

    v53 = [(SetupController *)v153 pathMonitor];
    nw_path_monitor_start(v53);

    v54 = objc_alloc_init(BuddyProximityAutomatedDeviceEnrollmentController);
    [v121 setProximityAutomatedDeviceEnrollmentController:v54];

    v55 = v153;
    v56 = [v121 proximityAutomatedDeviceEnrollmentController];
    [v56 setDelegate:v55];

    v57 = [ProximitySetupController alloc];
    v58 = [v121 miscState];
    v59 = [v121 buddyPreferences];
    v60 = [v121 buddyPreferencesExcludedFromBackup];
    v61 = [v121 featureFlags];
    v62 = [v121 analyticsManager];
    v63 = [v121 setupMethod];
    v64 = [(ProximitySetupController *)v57 initWithMiscState:v58 buddyPreferences:v59 buddyPreferencesExcludedFromBackup:v60 featureFlags:v61 analyticsManager:v62 setupMethod:v63];
    [v121 setProximitySetupController:v64];

    v65 = v153;
    v66 = [v121 proximitySetupController];
    [v66 setDelegate:v65];

    [(SetupController *)v153 _createNavigationController];
    v67 = +[UIDevice currentDevice];
    [(UIDevice *)v67 setBatteryMonitoringEnabled:1];

    [(SetupController *)v153 _initializeGreen];
    v68 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v68 addObserver:v153 selector:"_updateLoadingStatus" name:RUIHTTPRequestLoadingStatusDidChangeNotification object:0];

    center = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(center, v153, sub_100075AA8, @"com.apple.springboard.setupsnapshotremoved", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(center, v153, sub_100075AE0, @"com.apple.purplebuddy.SetupStateChanged", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(center, v153, sub_100075B18, @"AppleDatePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    v69 = +[BuddyActivationConfiguration currentConfiguration];
    [v69 addDelegate:v153];

    v110 = 0;
    v70 = [v121 runState];
    v71 = 0;
    if (([v70 hasCompletedInitialRun] & 1) == 0)
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
      v73 = [objc_opt_class() currentAppStates];
      v74 = [v121 buddyPreferencesExcludedFromBackup];
      [v72 persist:v73 to:v74];
    }

    v75 = objc_alloc_init(BuddyLanguageChangeObserver);
    languageObserver = v153->_languageObserver;
    v153->_languageObserver = v75;

    [(BuddyLanguageChangeObserver *)v153->_languageObserver setDelegate:?];
    [(BuddyLanguageChangeObserver *)v153->_languageObserver startObservingLanguageChanges];
    v77 = +[BYLocationController sharedBuddyLocationController];
    v78 = [(SetupController *)v153 environment];
    v79 = [(BYEnvironment *)v78 analyticsManager];
    [v77 configureForAnalytics:v79];

    v109 = +[NSFileManager defaultManager];
    if (([v109 fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/FirstTime"] & 1) != 0 && ((objc_msgSend(v109, "createFileAtPath:contents:attributes:", @"/var/mobile/Media/iTunes_Control/iTunes/ShowLicense", 0, 0) & 1) == 0 || (objc_msgSend(v109, "createFileAtPath:contents:attributes:", @"/var/mobile/Media/iTunes_Control/iTunes/ShowMarketing", 0, 0) & 1) == 0 || (objc_msgSend(v109, "removeItemAtPath:error:", @"/var/mobile/Media/iTunes_Control/iTunes/FirstTime", 0) & 1) == 0))
    {
      [v109 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowLicense" error:0];
      [v109 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowMarketing" error:0];
    }

    v80 = [BFFBackupDeviceController alloc];
    v81 = [v121 proximitySetupController];
    v82 = [(BFFBackupDeviceController *)v80 initWithProximitySetupController:v81];
    [v121 setBackupDeviceController:v82];

    if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
    {
      [(SetupController *)v153 startTFDEPPolling];
    }

    v83 = [v121 buddyPreferencesExcludedFromBackup];
    v84 = [BuddySuspendTask hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:v83];

    if (v84)
    {
      v85 = objc_opt_new();
      [v121 setSuspendTask:v85];
    }

    v86 = +[OBAnalyticsManager sharedManager];
    [v86 setShouldStashMetrics:1];

    v87 = +[BYNetworkMonitor sharedInstance];
    v103 = _NSConcreteStackBlock;
    v104 = -1073741824;
    v105 = 0;
    v106 = sub_100075B50;
    v107 = &unk_10032B2E0;
    v108 = v121;
    [(BYNetworkMonitor *)v87 withMinimumNetworkType:1 timeout:&v103 runBlock:30.0];

    v97 = _NSConcreteStackBlock;
    v98 = -1073741824;
    v99 = 0;
    v100 = sub_100076038;
    v101 = &unk_10032B0D0;
    v102 = v153;
    v88 = [location[0] statusBarManager];
    [v88 setDebugMenuHandler:&v97];

    v91 = _NSConcreteStackBlock;
    v92 = -1073741824;
    v93 = 0;
    v94 = sub_100076088;
    v95 = &unk_10032B0D0;
    v96 = v153;
    v89 = [v121 displayZoomExecutor];
    [v89 setWillCommit:&v91];

    objc_storeStrong(&v96, 0);
    objc_storeStrong(&v102, 0);
    objc_storeStrong(&v108, 0);
    objc_storeStrong(&v109, 0);
    objc_storeStrong(&v118, 0);
    objc_storeStrong(&v121, 0);
    objc_storeStrong(&v129, 0);
    objc_storeStrong(&v140, 0);
    objc_destroyWeak(&v146);
    objc_destroyWeak(&from);
    v148 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)buddyViewControllerDidPressAlternateSetupButton:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)_networkPathChanged
{
  v37 = self;
  oslog[1] = a2;
  v2 = byte_1003A6FC0 & 1;
  v3 = [(SetupController *)self environment];
  v4 = [(BYEnvironment *)v3 networkProvider];
  v5 = [v4 networkReachable] & 1;

  if (v2 != v5)
  {
    oslog[0] = _BYLoggingFacility();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v37 environment];
      v7 = [v6 networkProvider];
      v8 = [v7 networkReachable] & 1;
      v9 = [v37 environment];
      v10 = [v9 networkProvider];
      sub_100075A38(buf, v8, [v10 connectedOverWiFi] & 1);
      _os_log_impl(&_mh_execute_header, oslog[0], v35, "Network reachability changed: %d isWifi: %d", buf, 0xEu);
    }

    objc_storeStrong(oslog, 0);
    v11 = [v37 environment];
    v12 = [v11 networkProvider];
    byte_1003A6FC0 = [v12 networkReachable] & 1;
  }

  v13 = [v37 environment];
  v14 = [v13 networkProvider];
  v15 = [v14 networkReachable];

  if (v15)
  {
    v16 = [v37 environment];
    v17 = [v16 systemTimeUpdateManager];
    [v17 updateSystemTime];

    v18 = +[BuddyAppleIDConfigurationManager sharedManager];
    [v18 getURLConfigurationWithHandler:0];

    if ([v37 modalWiFiDismissalTriggers])
    {
      [v37 _hideModalWiFiSettingsWithReason:@"successful network reachability"];
    }

    v19 = [v37 environment];
    v20 = [v19 enrollmentCoordinator];
    [v20 networkAcquired];

    v21 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_100076618;
    v33 = &unk_10032B0D0;
    v34 = v37;
    dispatch_async(v21, &block);

    objc_storeStrong(&v34, 0);
  }

  v22 = [v37 environment];
  v23 = [v22 networkProvider];
  v24 = [v23 connectedOverWiFi];

  if (v24)
  {
    *(v37 + 112) = 1;
  }

  v25 = [v37 navigationFlowController];
  v26 = [v25 wifiController];
  v27 = [v37 environment];
  v28 = [v27 networkProvider];
  [v26 reachabilityChanged:{objc_msgSend(v28, "networkReachable") & 1}];
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
  v3 = [(NSArray *)v2 firstObject];
  languageAtStartup = self->_languageAtStartup;
  self->_languageAtStartup = v3;

  v5 = +[NSLocale preferredLanguages];
  [(SetupController *)self setPreferredLanguagesAtStartup:v5];

  v6 = +[NSLocale currentLocale];
  v7 = [(NSLocale *)v6 localeIdentifier];
  localeIdentifierAtStartup = self->_localeIdentifierAtStartup;
  self->_localeIdentifierAtStartup = v7;
}

- (id)_stringForStartupCause:(unint64_t)a3
{
  if (a3)
  {
    switch(a3)
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
  v9 = self;
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
    v4 = [NSTimer scheduledTimerWithTimeInterval:v9 target:"TFDEPPollTimerFired:" selector:0 userInfo:1 repeats:1.0];
    TFDEPPollTimer = v9->_TFDEPPollTimer;
    v9->_TFDEPPollTimer = v4;
  }
}

- (void)stopTFDEPPolling
{
  v7 = self;
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
    [(NSTimer *)v7->_TFDEPPollTimer invalidate];
    objc_storeStrong(&v7->_TFDEPPollTimer, 0);
  }
}

- (BOOL)_isTeslaEnrolled
{
  v2 = [MDMCloudConfiguration sharedConfiguration:a2];
  v3 = [v2 isTeslaEnrolled];

  return v3 & 1;
}

- (void)TFDEPPollTimerFired:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SetupController *)v21 environment];
  v19 = [(BYEnvironment *)v3 managedConfiguration];

  v17 = 0;
  v15 = 0;
  v13 = 0;
  if (-[SetupController _isTeslaEnrolled](v21, "_isTeslaEnrolled") || (v18 = -[SetupController environment](v21, "environment"), v17 = 1, v16 = [v18 enrollmentCoordinator], v15 = 1, v4 = 0, (objc_msgSend(v16, "shouldDoReturnToService") & 1) != 0))
  {
    v14 = [v19 installedMDMProfileIdentifier];
    v13 = 1;
    v4 = v14 != 0;
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
    [(SetupController *)v21 stopTFDEPPolling];
    v21->_isTapFreeSetup = 1;
    v7 = [(BYEnvironment *)v21->_environment featureFlags];
    v8 = [v7 isMDMEnrollmentFlowControllerAdoptionEnabled] ^ 1;

    if (v8)
    {
      [v19 cloudConfigurationUIDidCompleteWasApplied:1];
    }

    v9 = [(SetupController *)v21 navigationFlowController];
    [(BuddyNavigationFlowController *)v9 beginTapFreeSetUp];
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)doesTapFreeSetupAffectsClass:(Class)a3
{
  v3 = objc_opt_respondsToSelector();
  v4 = 0;
  if (v3)
  {
    v4 = [(objc_class *)a3 controllerAffectedByTapFreeSetup];
  }

  return v4 & 1;
}

- (BOOL)shouldTapFreeSetupSkipControllerClass:(Class)a3
{
  isTapFreeSetup = self->_isTapFreeSetup;
  v4 = 0;
  if (isTapFreeSetup)
  {
    v4 = [(SetupController *)self doesTapFreeSetupAffectsClass:a3];
  }

  return v4 & 1;
}

- (void)_setupAndStartMDMEnrollmentIfNeeded
{
  v53 = self;
  v52 = a2;
  v2 = [(SetupController *)self cachedStartupCause];
  v3 = 0;
  if (v2 != 1)
  {
    v3 = [(SetupController *)v53 cachedStartupCause]!= 2;
  }

  v51 = v3;
  v50 = [(BYEnvironment *)v53->_environment enrollmentCoordinator];
  v4 = [(BYEnvironment *)v53->_environment featureFlags];
  v5 = [v4 isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (v5)
  {
    [v50 setNavigationController:v53->_nav];
    v6 = [(BYEnvironment *)v53->_environment enrollmentCoordinator];
    v7 = [v6 shouldDoReturnToService];

    if (v7)
    {
      v49 = [(BYEnvironment *)v53->_environment enrollmentCoordinator];
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
      [(BFFNavigationController *)v53->_nav setPushWithoutDeferringTransitionsWhileInBackground:1];
      v10 = +[BuddyCloudConfigManager sharedManager];
      [v10 setEnrollmentCoordinator:v49];

      v39 = _NSConcreteStackBlock;
      v40 = -1073741824;
      v41 = 0;
      v42 = sub_100077670;
      v43 = &unk_10032B438;
      v44 = v53;
      v45 = v51;
      [v49 setLanguageSettingBlock:&v39];
      v11 = [(BYEnvironment *)v53->_environment enrollmentCoordinator];
      [v11 startEnrollmentFlow];

      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v49, 0);
    }
  }

  else
  {
    v12 = +[BuddyCloudConfigManager sharedManager];
    [v12 setEnrollmentCoordinator:v50];

    if ([v50 shouldDoReturnToService])
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
      [(BFFNavigationController *)v53->_nav setPushWithoutDeferringTransitionsWhileInBackground:1];
      v15 = dispatch_get_global_queue(2, 0);
      block = _NSConcreteStackBlock;
      v31 = -1073741824;
      v32 = 0;
      v33 = sub_10007791C;
      v34 = &unk_10032B0D0;
      v35 = v50;
      dispatch_async(v15, &block);

      v16 = [v50 languageStrings];
      v29 = [v16 firstObject];

      v28 = [v50 localeString];
      if ([v29 length] && objc_msgSend(v28, "length"))
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
        [(SetupController *)v53 userSelectedLanguageWithLocale:v29 countryCode:v28 localePaneScrollOffset:0.0];
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
          v21 = [(SetupController *)v53 navigationFlowController];
          [(BuddyNavigationFlowController *)v21 proceedPastLanguageLocalePane];
        }
      }

      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v35, 0);
    }
  }

  objc_storeStrong(&v50, 0);
}

- (void)didBecomeActive
{
  v24 = self;
  v23 = a2;
  if (self->_lockStartTimestamp)
  {
    [BuddyTimestamp intervalSinceTimestamp:v24->_lockStartTimestamp];
    v22 = *&v2;
    v24->_cumulativeLockedDuration = v24->_cumulativeLockedDuration + v2;
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(buf, v22);
      _os_log_impl(&_mh_execute_header, oslog, v20, "Spent %0.2fs locked/inactive", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v24->_lockStartTimestamp = 0;
  }

  if (!v24->_buddyStartTimestamp)
  {
    v3 = +[BuddyTimestamp currentTimestamp];
    v24->_buddyStartTimestamp = v3;
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
    v4 = [(SetupController *)v24 environment];
    v5 = [(BYEnvironment *)v4 analyticsManager];
    v25[0] = @"networkReachable";
    v6 = [(SetupController *)v24 environment];
    v7 = [(BYEnvironment *)v6 networkProvider];
    v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 networkReachable] & 1);
    v26[0] = v8;
    v25[1] = @"hasCompletedInitialSetup";
    v9 = [(SetupController *)v24 environment];
    v10 = [(BYEnvironment *)v9 runState];
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 hasCompletedInitialRun] & 1);
    v26[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v5 addEvent:@"com.apple.setupassistant.ios.initialForeground" withPayload:v12 persist:1];
  }

  v13 = [(SetupController *)v24 navigationFlowController];
  v16 = [(BuddyNavigationFlowController *)v13 topFlowItem];

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v16 shouldStopInactivityTimer])
  {
    v14 = [(SetupController *)v24 inactivityTimer];
    [(BuddyInactivityTimer *)v14 stop];
  }

  v15 = [(SetupController *)v24 navigationAnalytics];
  [(BuddyNavigationAnalytics *)v15 didBecomeActive];

  objc_storeStrong(&v16, 0);
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
  v22 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v22->_buddyDone)
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
  v4 = [(SetupController *)v22 monitor];

  if (v4)
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
    v7 = [(SetupController *)v22 monitor];
    [(FBSDisplayLayoutMonitor *)v7 invalidate];

    [(SetupController *)v22 setMonitor:0];
    [(SetupController *)v22 markBuddyComplete];
    [(SetupController *)v22 didMarkBuddyComplete];
  }

  if (!v22->_buddyDone || ([UIApp isSuspendedUnderLock] & 1) != 0)
  {
    v9 = [(SetupController *)v22 inactivityTimer];
    [(BuddyInactivityTimer *)v9 start];
  }

  else
  {
    v8 = v22;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000781A0;
    v15 = &unk_10032B0D0;
    v16 = v22;
    [(SetupController *)v8 _executeAfterBuddyPreTerminationTasksFinish:&v11];
    objc_storeStrong(&v16, 0);
  }

  v10 = [(SetupController *)v22 navigationAnalytics];
  [(BuddyNavigationAnalytics *)v10 didEnterBackground];
}

- (void)willTerminate
{
  v2 = [(SetupController *)self environment:a2];
  v3 = [(BYEnvironment *)v2 proximitySetupController];
  [v3 setupFinished];
}

- (void)terminate
{
  v20 = self;
  location[1] = a2;
  v2 = +[BYSetupStateNotifier sharedNotifier];
  [v2 notifyStateChangedTo:3];

  location[0] = 0;
  if ([(SetupController *)v20 shouldLaunchSuspendTaskURL])
  {
    v3 = [(SetupController *)v20 environment];
    v4 = [(BYEnvironment *)v3 suspendTask];
    v5 = [v4 launchURL];
    v6 = location[0];
    location[0] = v5;
  }

  v7 = [(SetupController *)v20 environment];
  v8 = [(BYEnvironment *)v7 displayZoomExecutor];
  [v8 setWillCommit:0];

  v9 = [(SetupController *)v20 environment];
  v10 = [(BYEnvironment *)v9 displayZoomExecutor];
  v11 = [v10 commitIfNeededWithRelaunchURL:location[0] transitionWithScreenshot:0];

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
  v40 = self;
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
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [(SetupController *)v40 environment];
    v7 = [(BYEnvironment *)v6 proximitySetupController];
    v8 = [v7 hasAppliedSettings];

    v36 = v8 & 1;
    v33 = 0;
    v31 = 0;
    v29 = 0;
    v9 = 0;
    if (v8)
    {
      v34 = [(SetupController *)v40 environment];
      v33 = 1;
      v32 = [(BYEnvironment *)v34 pendingRestoreState];
      v31 = 1;
      v30 = [v32 backupItem];
      v29 = 1;
      v9 = v30 == 0;
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
            v22 = [v25 domain];
            v21 = 1;
            v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v22, [v25 code]);
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
    v14 = [(SetupController *)v40 environment];
    v15 = [(BYEnvironment *)v14 managedConfiguration];
    CFPreferencesSetAppValue(@"DefaultValueForPasswordAndCreditCardAutoFill", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 isPasscodeSet] & 1), @"com.apple.WebUI");

    CFPreferencesAppSynchronize(@"com.apple.WebUI");
  }
}

- (void)markBuddyComplete
{
  v52 = self;
  v51 = a2;
  v2 = self;
  objc_sync_enter(v2);
  v50 = [(SetupController *)v52 markBuddyCompleteDidRun];
  [(SetupController *)v52 setMarkBuddyCompleteDidRun:1];
  objc_sync_exit(v2);

  if (v50)
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
    v7 = [(SetupController *)v52 environment];
    v8 = [(BYEnvironment *)v7 chronicle];
    v9 = [(SetupController *)v52 environment];
    v10 = [(BYEnvironment *)v9 buddyPreferences];
    v11 = [(SetupController *)v52 environment];
    v12 = [(BYEnvironment *)v11 buddyPreferencesExcludedFromBackup];
    [v8 persistBackedUpFeaturesInPreferences:v10 andNotBackedFeaturesInPreferences:v12 persistImmediately:0];

    v13 = [(SetupController *)v52 environment];
    v14 = [(BYEnvironment *)v13 buddyPreferences];
    [v14 removeObjectForKey:@"DebugFlowItemClassNames" onlyFromMemory:0];

    v15 = [(SetupController *)v52 environment];
    v16 = [(BYEnvironment *)v15 buddyPreferencesExcludedFromBackup];
    [v16 removeObjectForKey:@"PushWithoutDeferringTransitionsWhileInBackground"];

    v17 = [(SetupController *)v52 environment];
    v18 = [(BYEnvironment *)v17 buddyPreferencesExcludedFromBackup];
    [BuddySetupAnalytics removeFromDiskWithPreferences:v18];

    v19 = [(SetupController *)v52 environment];
    v20 = [(BYEnvironment *)v19 expressSettingsCache];

    if (v20)
    {
      v21 = v52;
      v38 = _NSConcreteStackBlock;
      v39 = -1073741824;
      v40 = 0;
      v41 = sub_100079148;
      v42 = &unk_10032B488;
      v43 = v52;
      v22 = [NSNumber numberWithDouble:3.0];
      [(SetupController *)v21 _queuePreTerminationTask:&v38 taskDescription:@"Finalize express settings" withTimeoutInSeconds:v22];

      objc_storeStrong(&v43, 0);
    }

    else if (os_variant_has_internal_ui())
    {
      v23 = +[NSAssertionHandler currentHandler];
      [(NSAssertionHandler *)v23 handleFailureInMethod:v51 object:v52 file:@"SetupController.m" lineNumber:1502 description:@"expressSettingsCache must not be nil"];
    }

    v24 = [(SetupController *)v52 environment];
    v25 = [(BYEnvironment *)v24 buddyPreferencesExcludedFromBackup];
    [v25 removeObjectForKey:@"UserLastSelectedLocale"];

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

    v32 = [(SetupController *)v52 environment];
    v33 = [(BYEnvironment *)v32 buddyPreferences];
    [BuddyRestoreState removeFromPreferences:v33];

    v34 = [(SetupController *)v52 environment];
    v35 = [(BYEnvironment *)v34 buddyPreferencesExcludedFromBackup];
    [BuddyMigrationState removeFromPreferences:v35];

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
    [(SetupController *)v52 _commitAnalytics];
  }
}

- (void)didMarkBuddyComplete
{
  v29 = self;
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
  [(SetupController *)v29 checkForUpdatedCarrierBundle];
  v4 = v29;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_1000797F0;
  v24 = &unk_10032B488;
  v25 = v29;
  [(SetupController *)v4 _queuePreTerminationTask:&v20 taskDescription:@"MDM RTS" withTimeoutInSeconds:0];
  v5 = [(SetupController *)v29 mobileAssetsNewFeaturesAssetManager];

  if (v5)
  {
    preTerminationTasksQueue = v29->_preTerminationTasksQueue;
    block = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1000798D0;
    v18 = &unk_10032B0D0;
    v19 = v29;
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
  CFNotificationCenterRemoveEveryObserver(center, v29);
  [(BuddyLanguageChangeObserver *)v29->_languageObserver stopObservingLanguageChanges];
  objc_storeStrong(&v25, 0);
}

- (void)_exitBuddyForDemoSetUp
{
  v7 = self;
  oslog[1] = a2;
  if ([(SetupController *)self shouldEndLifecycleForCause:2])
  {
    [(SetupController *)v7 willEndLifecycleDueToCause:2 allowDismissal:1];
    [(SetupController *)v7 endLifecycleDueToCause:2];
    [(SetupController *)v7 _waitForBuddyTerminationTasksToFinish];
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
  v7 = self;
  oslog[1] = a2;
  if ([(SetupController *)self shouldEndLifecycleForCause:5])
  {
    [(SetupController *)v7 willEndLifecycleDueToCause:5 allowDismissal:1];
    [(SetupController *)v7 endLifecycleDueToCause:5];
    [(SetupController *)v7 _waitForBuddyTerminationTasksToFinish];
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
  v7 = self;
  oslog[1] = a2;
  if ([(SetupController *)self shouldEndLifecycleForCause:3])
  {
    [(SetupController *)v7 willEndLifecycleDueToCause:3 allowDismissal:0];
    [(SetupController *)v7 endLifecycleDueToCause:3];
    [(SetupController *)v7 _waitForBuddyTerminationTasksToFinish];
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
  v7 = self;
  oslog[1] = a2;
  if ([(SetupController *)self shouldEndLifecycleForCause:4])
  {
    [(SetupController *)v7 willEndLifecycleDueToCause:4 allowDismissal:0];
    [(SetupController *)v7 endLifecycleDueToCause:4];
    [(SetupController *)v7 _waitForBuddyTerminationTasksToFinish];
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
  v36 = self;
  location[1] = a2;
  [(SetupController *)self _stashAnalytics];
  v2 = +[AALoginPluginManager sharedInstance];
  [(AALoginPluginManager *)v2 unstashLoginResponse];

  v3 = [(SetupController *)v36 environment];
  v4 = [(BYEnvironment *)v3 settingsManager];
  v5 = [(SetupController *)v36 environment];
  v6 = [(BYEnvironment *)v5 flowSkipController];
  v7 = [v6 getFlowSkipIdentifiers];
  [v4 stashFlowSkipIdentifiers:v7];

  v8 = [(SetupController *)v36 environment];
  v9 = [(BYEnvironment *)v8 buddyPreferences];
  v10 = +[NSDate date];
  [v9 setObject:v10 forKey:BYBuddyLastExitKey];

  v11 = [(SetupController *)v36 environment];
  v12 = [(BYEnvironment *)v11 settingsManager];
  v37 = _AXSCopySettingsDataBlobForBuddy();
  v13 = v37;
  [v12 stashAccessibilityData:v13];

  v14 = [(SetupController *)v36 environment];
  v15 = [(BYEnvironment *)v14 buddyPreferences];
  location[0] = [v15 preferences];

  memset(__b, 0, sizeof(__b));
  v16 = [location[0] allKeys];
  v17 = [v16 countByEnumeratingWithState:__b objects:v38 count:16];
  if (v17)
  {
    v18 = *__b[2];
    do
    {
      for (i = 0; i < v17; ++i)
      {
        if (*__b[2] != v18)
        {
          objc_enumerationMutation(v16);
        }

        v34 = *(__b[1] + 8 * i);
        v20 = [(SetupController *)v36 environment];
        v21 = [(BYEnvironment *)v20 settingsManager];
        v22 = [location[0] objectForKeyedSubscript:v34];
        v23 = [(SetupController *)v36 environment];
        v24 = [(BYEnvironment *)v23 buddyPreferences];
        v25 = [v24 domain];
        [v21 setObject:v22 forDomain:v25 key:v34];
      }

      v17 = [v16 countByEnumeratingWithState:__b objects:v38 count:16];
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
  v28 = [(SetupController *)v36 environment];
  v29 = [(BYEnvironment *)v28 settingsManager];
  [v29 hideStashInSafeHaven];

  objc_storeStrong(location, 0);
}

- (void)observer:(id)a3 didObserveLanguageChange:(BOOL)a4 localeChange:(BOOL)a5
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = a4;
  v37 = a5;
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
    [(BFFNavigationController *)v40->_nav setPushWithoutDeferringTransitionsWhileInBackground:1];
    v12 = [(SetupController *)v40 environment];
    v13 = [(BYEnvironment *)v12 buddyPreferencesExcludedFromBackup];
    [v13 setObject:&__kCFBooleanTrue forKey:@"PushWithoutDeferringTransitionsWhileInBackground" persistImmediately:1];
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
  if (!v38 || ((v16 = +[NSLocale preferredLanguages](NSLocale, "preferredLanguages"), v25 = -[NSArray firstObject](v16, "firstObject"), v16, (v24 = ([v25 isEqualToString:v40->_languageAtStartup] ^ 1) & 1) == 0) ? (v23 = 0) : (-[SetupController respring](v40, "respring"), v23 = 1), objc_storeStrong(&v25, 0), !v23))
  {
    if (!v37)
    {
      goto LABEL_23;
    }

    v22 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    if (![(NSString *)v40->_localeIdentifierAtStartup isEqualToString:v22])
    {
      v17 = [[NSLocale alloc] initWithLocaleIdentifier:v22];
      v20 = [v17 countryCode];

      [(SetupController *)v40 _writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:v20];
      v18 = [(SetupController *)v40 environment];
      v19 = [(BYEnvironment *)v18 capabilities];
      [v19 eligibilitySetDeviceLocale:v20];

      [(SetupController *)v40 respring];
      v23 = 1;
      objc_storeStrong(&v20, 0);
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
  v5 = self;
  location[1] = a2;
  SBSLockDevice();
  [(BFFWindow *)v5->_window setUserInteractionEnabled:0];
  location[0] = [SBSRelaunchAction actionWithReason:@"Language change remotely" options:6 targetURL:0];
  v2 = +[FBSSystemService sharedService];
  v3 = [NSSet setWithObject:location[0]];
  [v2 sendActions:v3 withResult:0];

  objc_storeStrong(location, 0);
}

- (void)_queuePreTerminationTask:(id)a3 taskDescription:(id)a4 withTimeoutInSeconds:(id)a5
{
  v58 = self;
  v57 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v55 = 0;
  objc_storeStrong(&v55, a4);
  v54 = 0;
  objc_storeStrong(&v54, a5);
  v7 = v55;
  v51 = 0;
  v49 = 0;
  if (!v55)
  {
    v52 = +[NSUUID UUID];
    v51 = 1;
    v7 = [(NSUUID *)v52 UUIDString];
    v50 = v7;
    v49 = 1;
  }

  v53 = v7;
  if (v49)
  {
  }

  if (v51)
  {
  }

  objc_initWeak(&from, v58);
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

  dispatch_group_enter(v58[18]);
  oslog = _BYLoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v53);
    _os_log_impl(&_mh_execute_header, oslog, v32, "Queuing pretermination task: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v10 = v58[19];
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
      v14 = v58[19];
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
      v22[0] = v58;
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
  v12 = self;
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
  dispatch_group_wait(v12->_preTerminationTasksDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
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

- (void)_executeAfterBuddyPreTerminationTasksFinish:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  preTerminationTasksDispatchGroup = v17->_preTerminationTasksDispatchGroup;
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

- (BOOL)isAlertPresented:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SetupController *)v9 navigationController];
  v4 = [v3 topViewController];
  v5 = [v4 presentedViewController];
  v6 = v5 == location[0];

  objc_storeStrong(location, 0);
  return v6;
}

- (void)dismissAlert:(id)a3 animated:(BOOL)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SetupController *)v6 dismissAlert:location[0] animated:a4 completion:0];
  objc_storeStrong(location, 0);
}

- (void)dismissAlert:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v8 = 0;
  objc_storeStrong(&v8, a5);
  if (!-[SetupController isAlertPresented:](v11, "isAlertPresented:", location[0]) || ([location[0] isBeingDismissed] & 1) != 0)
  {
    if (v8)
    {
      (*(v8 + 2))();
    }
  }

  else
  {
    v7 = [location[0] presentingViewController];
    [v7 dismissViewControllerAnimated:v9 completion:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_menuButtonPressed
{
  v130 = self;
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
  v4 = [(SetupController *)v130 navigationFlowController];
  v125 = 0;
  v123 = 0;
  v5 = 0;
  if (![(BuddyNavigationFlowController *)v4 isStartOverAllowed])
  {
    v126 = [(SetupController *)v130 navigationController];
    v125 = 1;
    v124 = [v126 topViewController];
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

  if ((v5 & 1) == 0 && !v130->_emergencyDialer)
  {
    v6 = [(SetupController *)v130 navigationController];
    v7 = [v6 topViewController];
    v122 = [v7 presentedViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v122;
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&v122, v8);
    if (v130->_homeButtonMenuController)
    {
      [(SetupController *)v130 dismissAlert:v130->_homeButtonMenuController animated:1];
      [(SetupController *)v130 _removeSBAlertItemsSupressionAssertion];
      objc_storeStrong(&v130->_homeButtonMenuController, 0);
    }

    else if (!v122)
    {
      if (v130->_buddyDone)
      {
        if ([(SetupController *)v130 allowDismissalForExit])
        {
          [(SetupController *)v130 endLifecycleDueToCause:1];
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

        v10 = [(SetupController *)v130 navigationFlowController];
        v121 = [(BuddyNavigationFlowController *)v10 topFlowItem];

        v120 = 0;
        if (objc_opt_respondsToSelector())
        {
          v11 = [v121 displayLanguage];
          v12 = v120;
          v120 = v11;
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
        homeButtonMenuController = v130->_homeButtonMenuController;
        v130->_homeButtonMenuController = v14;

        if (MGGetBoolAnswer() & 1)
        {
          v16 = v130->_homeButtonMenuController;
          v17 = +[NSBundle mainBundle];
          v18 = SFLocalizedStringFromTableInBundleForLanguage();
          v108 = _NSConcreteStackBlock;
          v109 = -1073741824;
          v110 = 0;
          v111 = sub_10007C85C;
          v112 = &unk_10032B598;
          v113 = v130;
          v19 = [UIAlertAction actionWithTitle:v18 style:2 handler:&v108];
          [(UIAlertController *)v16 addAction:v19];

          [(SetupController *)v130 _addSBAlertItemsSupressionAssertion];
          objc_storeStrong(&v113, 0);
        }

        v107 = +[BuddyAccessibilityUtilities accessibilityViewController];
        v105 = 0;
        v103 = 0;
        v20 = 0;
        if (v107)
        {
          v106 = [(SetupController *)v130 navigationController];
          v105 = 1;
          v104 = [v106 presentedViewController];
          v103 = 1;
          v20 = v104 == 0;
        }

        if (v103)
        {
        }

        if (v105)
        {
        }

        if (v20)
        {
          v21 = v130->_homeButtonMenuController;
          v22 = +[NSBundle mainBundle];
          v23 = SFLocalizedStringFromTableInBundleForLanguage();
          v96 = _NSConcreteStackBlock;
          v97 = -1073741824;
          v98 = 0;
          v99 = sub_10007CB80;
          v100 = &unk_10032B5C0;
          v101 = v130;
          v102 = v107;
          v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:&v96];
          [(UIAlertController *)v21 addAction:v24];

          objc_storeStrong(&v102, 0);
          objc_storeStrong(&v101, 0);
        }

        v95 = 0;
        v25 = [(SetupController *)v130 environment];
        v26 = [(BYEnvironment *)v25 networkProvider];
        v93 = 0;
        showWiFiInMenu = 0;
        if ([v26 supportsWiFi])
        {
          v94 = [(BFFNavigationController *)v130->_nav presentedViewController];
          v93 = 1;
          showWiFiInMenu = 0;
          if (!v94)
          {
            showWiFiInMenu = v130->_showWiFiInMenu;
          }
        }

        if (v93)
        {
        }

        if (showWiFiInMenu)
        {
          v28 = [(SetupController *)v130 navigationController];
          v29 = [v28 topViewController];
          v30 = [(SetupController *)v130 navigationFlowController];
          v31 = [(BuddyNavigationFlowController *)v30 wifiController];
          v32 = [(BuddyWiFiController *)v31 viewController];

          if (v29 == v32 || !v130->_wifiControllerInAdvancedMode)
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
          v37 = v130->_homeButtonMenuController;
          v87 = _NSConcreteStackBlock;
          v88 = -1073741824;
          v89 = 0;
          v90 = sub_10007CCB0;
          v91 = &unk_10032B598;
          v92 = v130;
          v38 = [UIAlertAction actionWithTitle:v95 style:0 handler:&v87];
          [(UIAlertController *)v37 addAction:v38];

          objc_storeStrong(&v92, 0);
        }

        v84 = 0;
        v39 = 0;
        if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
        {
          v85 = [(SetupController *)v130 navigationFlowController];
          v84 = 1;
          v39 = [v85 isStartOverAllowed];
        }

        if (v84)
        {
        }

        v86 = v39 & 1;
        if (v39)
        {
          v40 = v130->_homeButtonMenuController;
          v41 = +[NSBundle mainBundle];
          v42 = SFLocalizedStringFromTableInBundleForLanguage();
          v78 = _NSConcreteStackBlock;
          v79 = -1073741824;
          v80 = 0;
          v81 = sub_10007CDB4;
          v82 = &unk_10032B598;
          v83 = v130;
          v43 = [UIAlertAction actionWithTitle:v42 style:0 handler:&v78];
          [(UIAlertController *)v40 addAction:v43];

          objc_storeStrong(&v83, 0);
        }

        if (+[BuddyMenuController supportsHomeGesture])
        {
          v44 = v130->_homeButtonMenuController;
          v45 = +[NSBundle mainBundle];
          v46 = SFLocalizedStringFromTableInBundleForLanguage();
          v72 = _NSConcreteStackBlock;
          v73 = -1073741824;
          v74 = 0;
          v75 = sub_10007CFE8;
          v76 = &unk_10032B598;
          v77 = v130;
          v47 = [UIAlertAction actionWithTitle:v46 style:0 handler:&v72];
          [(UIAlertController *)v44 addAction:v47];

          objc_storeStrong(&v77, 0);
        }

        if ((+[DMCMultiUserModeUtilities inSharediPadUserSession]& 1) != 0)
        {
          v48 = v130->_homeButtonMenuController;
          v49 = +[NSBundle mainBundle];
          v50 = SFLocalizedStringFromTableInBundleForLanguage();
          v51 = [UIAlertAction actionWithTitle:v50 style:0 handler:&stru_10032B600];
          [(UIAlertController *)v48 addAction:v51];
        }

        if (os_variant_has_internal_ui())
        {
          v52 = +[BYPreferencesController buddyPreferencesEphemeral];
          v53 = [v52 BOOLForKey:@"showInternalUI"];

          v54 = v130->_homeButtonMenuController;
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

        v57 = v130->_homeButtonMenuController;
        v65 = _NSConcreteStackBlock;
        v66 = -1073741824;
        v67 = 0;
        v68 = sub_10007D4F4;
        v69 = &unk_10032B598;
        v70 = v130;
        v58 = [UIAlertAction actionWithTitle:v71 style:1 handler:&v65];
        [(UIAlertController *)v57 addAction:v58];

        v59 = [(SetupController *)v130 navigationController];
        [v59 buddy_presentAlertController:v130->_homeButtonMenuController];

        objc_storeStrong(&v70, 0);
        objc_storeStrong(&v71, 0);
        objc_storeStrong(&v95, 0);
        objc_storeStrong(&v107, 0);
        objc_storeStrong(&v119, 0);
        objc_storeStrong(&v120, 0);
        objc_storeStrong(&v121, 0);
      }
    }

    objc_storeStrong(&v122, 0);
  }
}

- (void)_showModalWiFiSettingsWithDismissalTriggers:(unint64_t)a3 completionHandler:(id)a4
{
  v59 = self;
  v58 = a2;
  v57 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
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
  v6 = [(SetupController *)v59 navigationController];
  v7 = [v6 topViewController];
  v8 = [(SetupController *)v59 navigationFlowController];
  v9 = [(BuddyNavigationFlowController *)v8 wifiController];
  v10 = [(BuddyWiFiController *)v9 viewController];

  if (v7 == v10)
  {
    if (v57)
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

    v15 = [(SetupController *)v59 navigationFlowController];
    v16 = [(BuddyNavigationFlowController *)v15 wifiController];
    [(BuddyWiFiController *)v16 setShowNetworkSettings:1];

    v59->_wifiControllerInAdvancedMode = 1;
    goto LABEL_18;
  }

  if (location)
  {
    v17 = [(SetupController *)v59 modalWiFiCompletionHandlers];
    v18 = objc_retainBlock(location);
    [(NSMutableArray *)v17 addObject:v18];
  }

  v19 = v59;
  v20 = [(SetupController *)v59 modalWiFiDismissalTriggers];
  [(SetupController *)v19 setModalWiFiDismissalTriggers:v20 | v57];
  v21 = [(SetupController *)v59 modalWiFiSettingsNavigationController];

  if (!v21)
  {
    v22 = +[NSNotificationCenter defaultCenter];
    v23 = v59;
    v24 = sub_10007DB98();
    [(NSNotificationCenter *)v22 addObserver:v23 selector:"_wifiAssociationDidFinish:" name:v24 object:0];

    v45 = objc_alloc_init(sub_10007DCA0());
    [v45 setShowNetworkSettings:1];
    v25 = +[BuddyActivationConfiguration currentConfiguration];
    [v45 setSupportsCellularActivation:{objc_msgSend(v25, "supportsCellularActivation")}];

    [v45 setBuddyDelegate:v59];
    v26 = [objc_alloc(sub_10007DDB4()) initWithViewController:v45];
    modalWifiManager = v59->_modalWifiManager;
    v59->_modalWifiManager = v26;

    v28 = [UIBarButtonItem alloc];
    v29 = +[NSBundle mainBundle];
    v30 = [(NSBundle *)v29 localizedStringForKey:@"DONE" value:&stru_10032F900 table:@"Localizable"];
    v31 = [v28 initWithTitle:v30 style:2 target:v59 action:"_modalWifiControllerDone:"];
    v32 = [(WFNetworkListController *)v59->_modalWifiManager viewController];
    v33 = [v32 navigationItem];
    [v33 setRightBarButtonItem:v31];

    v34 = [BFFNavigationController alloc];
    v35 = [(WFNetworkListController *)v59->_modalWifiManager viewController];
    v44 = [v34 initWithRootViewController:v35];

    v36 = [(SetupController *)v59 navigationController];
    [v36 forcedPreferredContentSize];
    [v44 setForcedPreferredContentSize:{v37, v38, *&v37, *&v38}];

    v39 = [(SetupController *)v59 navigationFlowController];
    [v44 setDelegate:v39];

    v40 = [(SetupController *)v59 navigationController];
    [v44 setModalPresentationStyle:{objc_msgSend(v40, "modalPresentationStyle")}];

    v41 = v59;
    v42 = [v44 presentationController];
    [v42 setDelegate:v41];

    v43 = [(SetupController *)v59 navigationController];
    [v43 presentViewController:v44 animated:1 completion:0];

    [(SetupController *)v59 setModalWiFiSettingsNavigationController:v44];
    [(WFNetworkListController *)v59->_modalWifiManager startScanning];
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

- (void)_hideModalWiFiSettingsWithReason:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [v16 navigationController];
  v4 = [v3 presentedViewController];
  v5 = [v16 modalWiFiSettingsNavigationController];

  if (v4 == v5)
  {
    oslog = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100071CBC(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Hiding modal Wi-Fi with reason: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [v16 navigationController];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10007E0B4;
    v11 = &unk_10032B0D0;
    v12 = v16;
    [v6 dismissViewControllerAnimated:1 completion:&v7];

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_modalWifiControllerDone:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SetupController *)v4 _hideModalWiFiSettingsWithReason:@"user tapped Done button"];
  objc_storeStrong(location, 0);
}

- (void)_wifiAssociationDidFinish:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SetupController *)v7 _associationErrorFromNotification:location[0]];
  v4 = v3 == 0;

  v5 = ([(SetupController *)v7 modalWiFiDismissalTriggers]& 2) != 0;
  if (v4 && v5)
  {
    [(SetupController *)v7 _hideModalWiFiSettingsWithReason:@"successful association"];
  }

  objc_storeStrong(location, 0);
}

- (id)_associationErrorFromNotification:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] userInfo];
  v4 = sub_10007E284();
  v5 = [v3 objectForKeyedSubscript:v4];

  objc_storeStrong(location, 0);

  return v5;
}

- (void)_cleanUpModalWiFiSettings
{
  v13 = self;
  location[1] = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = sub_10007DB98();
  [(NSNotificationCenter *)v2 removeObserver:v13 name:v3 object:0];

  [(SetupController *)v13 setModalWiFiSettingsNavigationController:0];
  [(SetupController *)v13 setModalWiFiDismissalTriggers:0];
  v4 = [(SetupController *)v13 modalWiFiCompletionHandlers];
  location[0] = [(NSMutableArray *)v4 copy];

  v5 = [(SetupController *)v13 modalWiFiCompletionHandlers];
  [(NSMutableArray *)v5 removeAllObjects];

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
  v7 = self;
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
    v7->_sbAlertItemsSuppressionAssertion = SBSAlertItemsSuppressionAssertionCreate();
  }
}

- (void)_removeSBAlertItemsSupressionAssertion
{
  v7 = self;
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
    CFRelease(v7->_sbAlertItemsSuppressionAssertion);
    v7->_sbAlertItemsSuppressionAssertion = 0;
  }
}

- (void)dialerDidDismiss:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SetupController *)v10 _removeSBAlertItemsSupressionAssertion];
  objc_storeStrong(&v10->_emergencyDialer, 0);
  v3 = [(SetupController *)v10 navigationController];
  v4 = [v3 topViewController];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___BuddyProximityAdvertisingFlow];

  if (v5)
  {
    v6 = [(SetupController *)v10 navigationController];
    v7 = [v6 topViewController];
    [v7 beginAdvertisingForProximitySetup];
  }

  v8 = +[BuddySIMManager sharedManager];
  [v8 allowSIMUnlock];

  objc_storeStrong(location, 0);
}

- (void)_setupSnapshotRemoved
{
  v17 = self;
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
  v4 = 1;
  if (!v17->_shouldAnimateLocaleScreen)
  {
    v4 = [(SetupController *)v17 shouldProceedFromAppearancePane];
  }

  v13 = v4 & 1;
  if (v4)
  {
    v5 = dispatch_time(0, 1000000000);
    v6 = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10007E98C;
    v11 = &unk_10032B0D0;
    v12 = v17;
    dispatch_after(v5, v6, &v7);

    objc_storeStrong(&v12, 0);
  }
}

- (void)_setupStateChanged
{
  v9 = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10007EB18;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_showMiniAlertWithRestart:(BOOL)a3 withLanguage:(id)a4
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
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
  v9 = [(SetupController *)v27 navigationController];
  v10 = [v9 topViewController];
  v11 = v25;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10007F0B4;
  v16 = &unk_10032B688;
  v18 = v25;
  v17 = v27;
  [v10 presentViewController:v19[0] animated:v11 completion:&v12];

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
  v8 = [v9[0] restoreInfo];
  location = [v8 date];
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
  objc_storeStrong(&v8, 0);
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

- (BOOL)updateLanguageLocale:(id)a3
{
  v94 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v92 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:v92];
  v91 = [v3 countryCode];

  [(SetupController *)v94 _writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:v91];
  v4 = [(SetupController *)v94 environment];
  v5 = [(BYEnvironment *)v4 capabilities];
  [v5 eligibilitySetDeviceLocale:v91];

  v90 = +[NSUserDefaults standardUserDefaults];
  v89 = v94->_languageAtStartup;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 1;
  v84 = 0;
  v6 = [(SetupController *)v94 environment];
  v7 = [(BYEnvironment *)v6 proximitySetupController];
  v8 = [v7 receivedLanguages];
  v9 = [v8 count];

  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v10 localizations];
    v12 = [(SetupController *)v94 environment];
    v13 = [(BYEnvironment *)v12 proximitySetupController];
    v14 = [v13 receivedLanguages];
    v15 = [NSBundle preferredLocalizationsFromArray:v11 forPreferences:v14];
    v16 = [(NSArray *)v15 firstObject];
    v17 = v88;
    v88 = v16;

    v85 = 0;
    v18 = [(SetupController *)v94 environment];
    v19 = [(BYEnvironment *)v18 proximitySetupController];
    v20 = [v19 receivedLanguages];
    v21 = v86;
    v86 = v20;

    v22 = [(SetupController *)v94 preferredLanguagesAtStartup];
    v84 = ([v86 isEqualToArray:v22] ^ 1) & 1;
  }

  else
  {
    v23 = [(SetupController *)v94 userSelectedLanguageWithLocale];

    if (v23)
    {
      v24 = [(SetupController *)v94 userSelectedLanguageWithLocale];
      v25 = v88;
      v88 = v24;

      v26 = [NSLocale localeWithLocaleIdentifier:v88];
      v27 = [(NSLocale *)v26 regionCode];
      v28 = v87;
      v87 = v27;
    }

    else
    {
      v29 = [(SetupController *)v94 userSelectedLanguage];

      if (v29)
      {
        v30 = [(SetupController *)v94 userSelectedLanguage];
        v31 = v88;
        v88 = v30;
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
  v33 = [(SetupController *)v94 safetyAndHandlingManager];
  [(BYBuddySafetyAndHandlingManager *)v33 setLanguageCode:v83];

  v34 = [(SetupController *)v94 safetyAndHandlingManager];
  [(BYBuddySafetyAndHandlingManager *)v34 setCountryCode:v87];

  v35 = [(SetupController *)v94 environment];
  v36 = [(BYEnvironment *)v35 buddyPreferences];
  [v36 setObject:v83 forKey:@"Language"];

  [v90 removeObjectForKey:@"LockdownSetLanguage"];
  [v90 removeObjectForKey:@"LockdownSetLocale"];
  v82 = 1;
  if (v88 && ([v89 isEqualToString:v88] & 1) == 0)
  {
    v37 = +[NSBundle mainBundle];
    v38 = [(NSBundle *)v37 preferredLocalizations];
    v81 = [(NSArray *)v38 firstObject];

    v39 = +[NSBundle mainBundle];
    v40 = [(NSBundle *)v39 localizations];
    v41 = [NSBundle preferredLocalizationsFromArray:v40 forPreferences:v86];
    v80 = [(NSArray *)v41 firstObject];

    if ([v81 length] && objc_msgSend(v80, "length"))
    {
      v82 = ([v80 isEqualToString:v81] & 1) == 0;
    }

    oslog = _BYLoggingFacility();
    v78 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100080778(buf, v81, v80, v82);
      _os_log_impl(&_mh_execute_header, oslog, v78, "currentBundle: %{public}@; selectedBundle: %{public}@; selectedLanguageLoadsDifferentBundle? %d", buf, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v80, 0);
    objc_storeStrong(&v81, 0);
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
    [(BFFWindow *)v94->_window setUserInteractionEnabled:0];
    if (location[0])
    {
      (*(location[0] + 2))();
    }

    [v90 setObject:v83 forKey:@"Language"];
    [v90 synchronize];
    v54 = [(SetupController *)v94 environment];
    v55 = [(BYEnvironment *)v54 buddyPreferencesExcludedFromBackup];
    [v55 setObject:&__kCFBooleanTrue forKey:@"AnimateLanguageChoice" persistImmediately:1];

    v56 = [(SetupController *)v94 safetyAndHandlingManager];
    [(BYBuddySafetyAndHandlingManager *)v56 persistStateForReboot];

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

      v58 = [(SetupController *)v94 environment];
      v59 = [(BYEnvironment *)v58 buddyPreferences];
      [v59 setObject:v63 forKey:@"Locale"];

      objc_storeStrong(&v63, 0);
    }

    [(SetupController *)v94 userDidChooseLanguage];
    [(SetupController *)v94 _persistAnalyticsForLanguageReboot];
    v60 = [(SetupController *)v94 environment];
    v61 = [(BYEnvironment *)v60 proximitySetupController];
    [v61 prepareForReboot];

    [(SetupController *)v94 _showMiniAlertWithRestart:1 withLanguage:v88];
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
    v71 = [v72 firstObject];
    v44 = 0;
    if (v88)
    {
      v44 = [v71 isEqualToString:v88] ^ 1;
    }

    v70 = v44 & 1;
    v69 = _BYLoggingFacility();
    v68 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      sub_100073058(v97, v71, v88);
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

        v46 = [(SetupController *)v94 environment];
        v47 = [(BYEnvironment *)v46 buddyPreferences];
        [v47 setObject:v67 forKey:@"Locale"];

        objc_storeStrong(&v67, 0);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleLanguagePreferencesChangedNotification", 0, 0, 1u);
      v49 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v49, @"com.apple.language.changed", 0, 0, 1u);
    }

    v50 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v50, BYSetupAssistantDidCompleteLanguageLocaleNotification, 0, 0, 1u);
    [(SetupController *)v94 userDidChooseLanguage];
    v51 = [(SetupController *)v94 environment];
    v52 = [(BYEnvironment *)v51 proximitySetupController];
    [v52 languageChangeCompleted];

    v53 = +[BuddySIMManager sharedManager];
    [v53 allowSIMUnlock];

    v95 = 0;
    v66 = 1;
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
  }

  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&v91, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(location, 0);
  return v95 & 1;
}

- (void)_setupAnalytics
{
  v25 = self;
  v24[1] = a2;
  v2 = [BuddyNavigationAnalytics alloc];
  v3 = [(SetupController *)v25 navigationController];
  v4 = [(BuddyNavigationAnalytics *)v2 initWithNavigationController:v3];
  [(SetupController *)v25 setNavigationAnalytics:v4];

  v5 = [(SetupController *)v25 environment];
  v6 = [(BYEnvironment *)v5 buddyPreferencesExcludedFromBackup];
  v7 = [BuddySetupAnalytics loadFromDiskWithPreferences:v6];
  [(SetupController *)v25 setSetupAnalytics:v7];

  v8 = [(SetupController *)v25 setupAnalytics];
  LOBYTE(v7) = v8 == 0;

  if (v7)
  {
    v9 = [BuddySetupAnalytics alloc];
    v10 = [(SetupController *)v25 environment];
    v11 = [(BYEnvironment *)v10 buddyPreferencesExcludedFromBackup];
    v12 = [(BuddySetupAnalytics *)v9 initWithPreferences:v11];
    [(SetupController *)v25 setSetupAnalytics:v12];

    LOBYTE(v12) = BYSetupAssistantHasCompletedInitialRun();
    v13 = [(SetupController *)v25 setupAnalytics];
    [(BuddySetupAnalytics *)v13 setHasCompletedInitialSetup:v12 & 1];
  }

  v14 = [(SetupController *)v25 environment];
  v15 = [(BYEnvironment *)v14 buddyPreferences];
  v24[0] = [BuddyRestoreState loadFromPreferences:v15];

  v16 = [(SetupController *)v25 environment];
  v17 = [(BYEnvironment *)v16 buddyPreferencesExcludedFromBackup];
  v23 = [BuddyMigrationState loadFromPreferences:v17];

  if (v24[0] || v23)
  {
    location = [v24[0] persistDate];
    if (!location)
    {
      location = [v23 persistDate];
    }

    v18 = [(SetupController *)v25 setupAnalytics];
    [(BuddySetupAnalytics *)v18 setSoftwareUpdatePerformed:1];

    [location timeIntervalSinceNow];
    v20 = -v19;
    v21 = [(SetupController *)v25 setupAnalytics];
    [(BuddySetupAnalytics *)v21 setOtherDuration:v20];

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
}

- (void)_preStashAnalytics
{
  [(SetupController *)self _populateSetupAnalytics];
  v2 = [(SetupController *)self navigationAnalytics];
  [(BuddyNavigationAnalytics *)v2 prepareEventForCurrentViewController];

  v3 = [(SetupController *)self navigationAnalytics];
  v4 = [(SetupController *)self environment];
  v5 = [(BYEnvironment *)v4 analyticsManager];
  [(BuddyNavigationAnalytics *)v3 addEventsUsingAnalyticsManager:v5];

  v6 = [(SetupController *)self setupAnalytics];
  v7 = [(SetupController *)self environment];
  v8 = [(BYEnvironment *)v7 analyticsManager];
  [(BuddySetupAnalytics *)v6 addEventUsingAnalyticsManager:v8];

  [(SetupController *)self setSetupAnalytics:0];
}

- (void)_stashAnalytics
{
  [(SetupController *)self _preStashAnalytics];
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 analyticsManager];
  v4 = [(SetupController *)self environment];
  v5 = [(BYEnvironment *)v4 settingsManager];
  [v3 stash:v5];

  v6 = [(SetupController *)self environment];
  v7 = [(BYEnvironment *)v6 analyticsManager];
  [v7 reset];
}

- (void)_preCommitAnalytics
{
  [(SetupController *)self _populateSetupAnalytics];
  [(SetupController *)self _populatePowerLogAnalytics];
  v2 = [(SetupController *)self navigationAnalytics];
  [(BuddyNavigationAnalytics *)v2 prepareEventForCurrentViewController];

  v3 = [(SetupController *)self navigationAnalytics];
  v4 = [(SetupController *)self environment];
  v5 = [(BYEnvironment *)v4 analyticsManager];
  [(BuddyNavigationAnalytics *)v3 addEventsUsingAnalyticsManager:v5];

  v6 = [(SetupController *)self setupAnalytics];
  v7 = [(SetupController *)self environment];
  v8 = [(BYEnvironment *)v7 analyticsManager];
  [(BuddySetupAnalytics *)v6 addEventUsingAnalyticsManager:v8];
}

- (void)_commitAnalytics
{
  [(SetupController *)self _preCommitAnalytics];
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 analyticsManager];
  [v3 commit];
}

- (void)_populateSetupAnalytics
{
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 setupMethod];
  v4 = [v3 dataTransferMethod];
  v5 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)v5 setDataTransferMethod:v4];

  v6 = [(SetupController *)self setupAnalytics];
  v7 = [(SetupController *)self environment];
  v8 = [(BYEnvironment *)v7 networkProvider];
  -[BuddySetupAnalytics setInAppleStore:](v6, "setInAppleStore:", (-[BuddySetupAnalytics inAppleStore](v6, "inAppleStore") | [v8 inAppleStore] & 1) != 0);

  v9 = [(SetupController *)self setupAnalytics];
  v10 = [(BFFNavigationController *)self->_nav viewControllers];
  -[BuddySetupAnalytics setNumberOfPanesPresented:](v9, "setNumberOfPanesPresented:", [v10 count] + -[BuddySetupAnalytics numberOfPanesPresented](v9, "numberOfPanesPresented"));

  v11 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)v11 backgroundDuration];
  [(BuddySetupAnalytics *)v11 setBackgroundDuration:v12 + self->_cumulativeLockedDuration];

  v13 = [(SetupController *)self setupAnalytics];
  [BuddyTimestamp intervalSinceTimestamp:self->_buddyStartTimestamp];
  v15 = v14 - self->_cumulativeLockedDuration;
  [(BuddySetupAnalytics *)v13 activeDuration];
  [(BuddySetupAnalytics *)v13 setActiveDuration:v16 + v15];

  v17 = +[ACAccountStore defaultStore];
  v18 = [v17 aa_primaryAppleAccount];
  v19 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)v19 setIsSignedIntoAppleID:v18 != 0];

  v20 = [(SetupController *)self environment];
  v21 = [(BYEnvironment *)v20 flowSkipController];
  v22 = [v21 getFlowSkipIdentifiers];
  v23 = [v22 count];
  v24 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)v24 setFollowUpItemsCount:v23];
}

- (void)_populatePowerLogAnalytics
{
  v39 = self;
  v38[1] = a2;
  v38[0] = objc_alloc_init(BYSetupUserDisposition);
  location = 0;
  v2 = [v38[0] date];

  if (v2)
  {
    v3 = [v38[0] date];
    v4 = location;
    location = v3;
  }

  else
  {
    v5 = [(SetupController *)v39 environment];
    v6 = [(BYEnvironment *)v5 runState];
    v7 = [v6 hasCompletedInitialRun] ^ 1;

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
    v15 = [(SetupController *)v39 environment];
    v16 = [(BYEnvironment *)v15 analyticsManager];
    v17 = [NSNumber numberWithDouble:v30];
    [v16 addPowerLogEvent:0 withPayload:v17];
  }

  v18 = [(SetupController *)v39 environment];
  v19 = [(BYEnvironment *)v18 setupMethod];

  if (v19)
  {
    v20 = [(SetupController *)v39 environment];
    v21 = [(BYEnvironment *)v20 analyticsManager];
    v22 = [(SetupController *)v39 environment];
    v23 = [(BYEnvironment *)v22 setupMethod];
    v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 dataTransferMethod]);
    [v21 addPowerLogEvent:1 withPayload:v24];
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
  v2 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)v2 persist];
}

- (void)_persistAnalyticsForSoftwareUpdate
{
  [(SetupController *)self _populateSetupAnalytics];
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 analyticsManager];
  v4 = [(SetupController *)self environment];
  v5 = [(BYEnvironment *)v4 settingsManager];
  [v3 stash:v5];

  v6 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)v6 persist];
}

- (void)displayProximityPinCode:(id)a3 language:(id)a4 visual:(BOOL)a5 accessibilitySettings:(id)a6
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38 = a5;
  v37 = 0;
  objc_storeStrong(&v37, a6);
  v9 = [(SetupController *)v41 proximityPairingController];

  if (!v9)
  {
    v10 = objc_alloc_init(BuddyProximityPairingController);
    [(SetupController *)v41 setProximityPairingController:v10];

    v11 = _AXSCopySettingsDataBlobForBuddy();
    [(SetupController *)v41 setDefaultAccessibilitySettings:v11];

    v12 = [(SetupController *)v41 navigationFlowController];
    v13 = [(BuddyNavigationFlowController *)v12 environmentInjector];
    v14 = [(SetupController *)v41 proximityPairingController];
    v15 = v13[2](v13, v14);
  }

  v16 = [(SetupController *)v41 environment];
  v17 = [(BYEnvironment *)v16 featureFlags];
  v18 = [(SetupController *)v41 proximityPairingController];
  [(BuddyProximityPairingController *)v18 setFeatureFlags:v17];

  v19 = [(SetupController *)v41 navigationFlowController];
  v20 = [(SetupController *)v41 proximityPairingController];
  [(BuddyProximityPairingController *)v20 setDelegate:v19];

  v21 = [(SetupController *)v41 proximityPairingController];
  [(BuddyProximityPairingController *)v21 setNonUserInitiatedDismissal:0];

  v22 = location[0];
  v23 = [(SetupController *)v41 proximityPairingController];
  [(BuddyProximityPairingController *)v23 setPairingCode:v22];

  v24 = v39;
  v25 = [(SetupController *)v41 proximityPairingController];
  [(BuddyProximityPairingController *)v25 setLanguage:v24];

  if (v38)
  {
    v26 = [(SetupController *)v41 proximityPairingController];
    [(BuddyProximityPairingController *)v26 showVisualPairing];
  }

  else
  {
    v26 = [(SetupController *)v41 proximityPairingController];
    [(BuddyProximityPairingController *)v26 showPairingCode];
  }

  v27 = [(SetupController *)v41 navigationController];
  v28 = [v27 topViewController];
  v29 = [v28 navigationItem];
  v30 = +[NSBundle mainBundle];
  v31 = SFLocalizedStringFromTableInBundleForLanguage();
  [v29 setBackButtonTitle:v31];

  v32 = [(SetupController *)v41 navigationController];
  v33 = [v32 topViewController];
  v34 = [(SetupController *)v41 proximityPairingController];

  if (v33 != v34)
  {
    if (v37)
    {
      _AXSRestoreSettingsFromDataBlobForBuddy();
    }

    v35 = [(SetupController *)v41 navigationFlowController];
    v36 = [(SetupController *)v41 proximityPairingController];
    [(BuddyNavigationFlowController *)v35 pushFlowItem:v36 animated:1];
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissProximityPinCode
{
  v2 = [(SetupController *)self navigationController];
  v3 = [v2 topViewController];
  v4 = [(SetupController *)self proximityPairingController];
  v5 = 0;
  if (v3 == v4)
  {
    v6 = v4;
    v7 = [(SetupController *)self applyingProximitySettings];
    v4 = v6;
    v5 = (v7 & 1) == 0;
  }

  if (v5)
  {
    v8 = [(SetupController *)self defaultAccessibilitySettings];
    _AXSRestoreSettingsFromDataBlobForBuddy();

    [(SetupController *)self setDefaultAccessibilitySettings:0];
    v9 = [(SetupController *)self proximityPairingController];
    [(BuddyProximityPairingController *)v9 setNonUserInitiatedDismissal:1];

    v10 = [(SetupController *)self navigationController];
    v11 = [v10 popViewControllerAnimated:1];

    [(SetupController *)self setProximityPairingController:0];
  }
}

- (void)displayIncompatibleProximityPairingFromDeviceClass:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

  v10 = [(SetupController *)v15 navigationController];
  [v10 presentViewController:v11 animated:1 completion:0];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)displayUpdateRequiredToMigrate
{
  v17 = self;
  v16[1] = a2;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_CONTROLLER"];
  [(BFFWindow *)v17->_window setUserInteractionEnabled:1];
  v2 = [(SetupController *)v17 navigationController];
  v3 = [v2 topViewController];
  v4 = [(SetupController *)v17 proximityPairingController];

  if (v3 == v4)
  {
    v5 = [(SetupController *)v17 navigationController];
    v6 = [v5 popViewControllerAnimated:1];

    [(SetupController *)v17 setProximityPairingController:0];
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

  v13 = [(SetupController *)v17 navigationController];
  [v13 presentViewController:location animated:1 completion:0];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
}

- (void)willPerformProximityHandshake
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100082294;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)willApplyProximitySettingsWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100082454;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)didApplyProximitySettingsWithWillReboot:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000825BC;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)unableToApplyProximitySettings
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100082888;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)skippedApplyProximitySettings
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100082A54;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_connectedToWiFiAfterProximity
{
  v9 = self;
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
  v4 = [(SetupController *)v9 environment];
  v5 = [(BYEnvironment *)v4 networkProvider];
  [v5 assumeNetworkReachabilityOverWiFi];
}

- (void)activationConfigurationChanged:(BOOL)a3 isActivated:(BOOL)a4
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  if (a3)
  {
    oslog = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(buf, v16);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Activation State Changed, isActivated = %d", buf, 8u);
    }

    objc_storeStrong(&oslog, 0);
    v4 = objc_alloc_init(BuddyActivationRecord);
    v5 = [(SetupController *)v19 environment];
    [(BYEnvironment *)v5 setActivationRecord:v4];

    v6 = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100082D68;
    v11 = &unk_10032B688;
    v12 = v19;
    v13 = v16;
    dispatch_async(v6, &v7);

    objc_storeStrong(&v12, 0);
  }
}

- (void)proximityAutomatedDeviceEnrollmentController:(id)a3 wantsToTransitionToPairingWithPin:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v5 = [BuddyProximityAutomatedDeviceEnrollmentPairingController alloc];
  v11 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v5 initWithPairingCode:v12];
  v6 = [(SetupController *)v14 navigationFlowController];
  v7 = [(BuddyNavigationFlowController *)v6 environmentInjector];
  v8 = v7[2](v7, v11);

  v9 = [(SetupController *)v14 navigationFlowController];
  [v11 setDelegate:v9];

  v10 = [(SetupController *)v14 navigationFlowController];
  [(BuddyNavigationFlowController *)v10 pushFlowItem:v11 animated:1];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_prepareForDeviceMigrationAfterSoftwareUpdate:(BOOL)a3
{
  v88 = self;
  v87 = a2;
  v86 = a3;
  v3 = [(SetupController *)self environment];
  v4 = [(BYEnvironment *)v3 miscState];
  v5 = [v4 migrationManager];

  if (!v5)
  {
    location = 0;
    v84 = 0;
    v83 = +[BuddyMigrationCapability currentDeviceShouldOfferMigration];
    v6 = [(SetupController *)v88 environment];
    v7 = [(BYEnvironment *)v6 proximitySetupController];
    v8 = [v7 information];
    v9 = [(SetupController *)v88 environment];
    v10 = [(BYEnvironment *)v9 proximitySetupController];
    v11 = [v10 productVersion];
    v12 = [(SetupController *)v88 environment];
    v13 = [(BYEnvironment *)v12 proximitySetupController];
    v14 = [v13 deviceClass];
    obj = 0;
    v15 = [BuddyMigrationCapability sourceDeviceSupportsMigration:v8 productVersion:v11 deviceClass:v14 softwareUpdateRequired:&v84 reason:&obj];
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
      objc_initWeak(&from, v88);
      v17 = [(SetupController *)v88 environment];
      v18 = [(BYEnvironment *)v17 proximitySetupController];
      v73 = _NSConcreteStackBlock;
      v74 = -1073741824;
      v75 = 0;
      v76 = sub_100083C48;
      v77 = &unk_10032AF58;
      objc_copyWeak(&v78, &from);
      v19 = [(SetupController *)v88 environment];
      v20 = [(BYEnvironment *)v19 passcodeCacheManager];
      v21 = [(SetupController *)v88 environment];
      v62 = [(BYEnvironment *)v21 analyticsManager];
      v61 = [(SetupController *)v88 environment];
      v22 = [(BYEnvironment *)v61 lockdownModeProvider];
      v23 = [v18 createTargetDeviceMigrationManagerWithPrepareForMigrationRebootBlock:&v73 passcodeCacheManager:v20 analyticsManager:v62 lockdownModeProvider:v22];
      v24 = [(SetupController *)v88 environment];
      v25 = [(BYEnvironment *)v24 miscState];
      [v25 setMigrationManager:v23];
      v72 = 0;

      LOBYTE(v20) = v84;
      v26 = [(SetupController *)v88 environment];
      v27 = [(BYEnvironment *)v26 miscState];
      v28 = [v27 migrationManager];
      [v28 setRequiresUpdateToMigrate:v20 & 1];

      v29 = [(SetupController *)v88 environment];
      v30 = [(BYEnvironment *)v29 networkProvider];
      v31 = [(SetupController *)v88 environment];
      v32 = [(BYEnvironment *)v31 miscState];
      v33 = [v32 migrationManager];
      [v33 setNetworkProvider:v30];

      v34 = [(SetupController *)v88 environment];
      v35 = [(BYEnvironment *)v34 miscState];
      v36 = [v35 migrationManager];
      LOBYTE(v31) = [v36 requiresUpdateToMigrate];

      if (v31)
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
        v39 = [(SetupController *)v88 environment];
        v40 = [(BYEnvironment *)v39 miscState];
        v41 = [v40 migrationManager];
        [v41 setWillMigrate:1];
      }

      else
      {
        v42 = v86;
        v43 = [(SetupController *)v88 environment];
        v44 = [(BYEnvironment *)v43 miscState];
        v45 = [v44 migrationManager];
        [v45 setSoftwareUpdateDidOccur:v42];

        v46 = [(SetupController *)v88 environment];
        v47 = [(BYEnvironment *)v46 proximitySetupController];
        [v47 beginDeviceToDeviceMigration];

        v48 = [(SetupController *)v88 environment];
        v49 = [(BYEnvironment *)v48 proximitySetupController];
        v50 = [(SetupController *)v88 environment];
        v51 = [(BYEnvironment *)v50 miscState];
        v52 = [v51 migrationManager];
        [v49 addObserver:v52];

        v53 = [(SetupController *)v88 environment];
        v54 = [(BYEnvironment *)v53 miscState];
        v55 = [v54 migrationManager];
        v63 = _NSConcreteStackBlock;
        v64 = -1073741824;
        v65 = 0;
        v66 = sub_100083C8C;
        v67 = &unk_10032B6F0;
        v68 = v88;
        [v55 startKeychainDataTransferWithCompletionHandler:&v63];

        objc_storeStrong(&v68, 0);
      }

      objc_destroyWeak(&v78);
      objc_destroyWeak(&from);
    }

    if (![location length])
    {
      objc_storeStrong(&location, @"none");
    }

    v56 = [(SetupController *)v88 environment];
    v57 = [(BYEnvironment *)v56 analyticsManager];
    v89[0] = @"targetSupports";
    v58 = [NSNumber numberWithBool:v83 & 1];
    v90[0] = v58;
    v89[1] = @"sourceSupports";
    v59 = [NSNumber numberWithBool:v82 & 1];
    v90[1] = v59;
    v89[2] = @"reason";
    v90[2] = location;
    v60 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:3];
    [v57 addEvent:@"com.apple.setupassistant.ios.migration.ability" withPayload:v60 persist:1];

    objc_storeStrong(&location, 0);
  }
}

- (void)_startDeviceMigration
{
  v30 = self;
  location[1] = a2;
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 buddyPreferences];
  [v3 setObject:&__kCFBooleanTrue forKey:@"RestoreChoice"];

  v4 = [v30 environment];
  v5 = [v4 setupMethod];
  [v5 setDataTransferMethod:2];

  v6 = [v30 environment];
  v7 = [v6 proximitySetupController];
  location[0] = [v7 backupMetadata];

  oslog = _BYLoggingFacility();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v27, "Using metadata from source device: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = location[0];
  v9 = [v30 environment];
  v10 = [v9 existingSettings];
  [v10 setBackupMetadata:v8];

  v11 = [v30 environment];
  v12 = [v11 miscState];
  v13 = [v12 migrationManager];
  [v13 setUserChoseMigration:1];

  v14 = [v30 environment];
  v15 = [v14 miscState];
  v16 = [v15 migrationManager];
  v17 = [v16 requiresUpdateToMigrate] ^ 1;

  if (v17)
  {
    v18 = [v30 environment];
    v19 = [v18 miscState];
    v20 = [v19 migrationManager];
    v21 = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = sub_100084150;
    v25 = &unk_10032B6F0;
    v26 = v30;
    [v20 waitForKeychainDataTransfer:&v21];

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
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 flowItemDispositionProvider];
  v4 = [v3 dispositions] & 0x10;

  if (v4 == 16)
  {
    return 0;
  }

  v5 = +[ACAccountStore defaultStore];
  v6 = [v5 aa_primaryAppleAccount];
  v7 = v6 != 0;

  v18 = v7;
  v8 = [(SetupController *)self environment];
  v9 = [(BYEnvironment *)v8 managedConfiguration];
  v10 = [v9 isPasscodeSet];

  v17 = v10 & 1;
  v11 = [(SetupController *)self environment];
  v12 = [(BYEnvironment *)v11 miscState];
  v13 = [v12 migrationManager];
  v14 = [v13 hasTransferredData];

  v15 = 1;
  if ((v17 & 1) == 0)
  {
    v15 = 1;
    if (!v18)
    {
      return v14 & 1;
    }
  }

  return v15;
}

- (BOOL)willRestartFlowToViewController:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [(SetupController *)v17 _doesRestartFlowCauseErase];
  if (!v15 || (BYSetupAssistantHasCompletedInitialRun() & 1) != 0)
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
    window = v17->_window;
    v4 = [(SetupController *)v17 navigationController];
    v5 = [(SetupController *)v17 environment];
    v6 = [(BYEnvironment *)v5 proximitySetupController];
    v7 = [(SetupController *)v17 environment];
    v8 = [(BYEnvironment *)v7 analyticsManager];
    v14 = [BuddyEraseAlertController alertControllerWithWindow:window navigationController:v4 proximitySetupController:v6 analyticsManager:v8];

    v9 = [(SetupController *)v17 navigationController];
    [v9 buddy_presentAlertController:v14];

    v18 = 0;
    v13 = 1;
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (void)didRestartFlow
{
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 miscState];
  [v3 setUserSelectedCellularActivation:0];

  v4 = [(SetupController *)self environment];
  v5 = [(BYEnvironment *)v4 pendingRestoreState];
  [v5 clearBackupItem];

  v6 = [(SetupController *)self environment];
  v7 = [(BYEnvironment *)v6 proximitySetupController];
  [v7 startOver];

  v8 = [(SetupController *)self environment];
  v9 = [(BYEnvironment *)v8 flowItemDispositionProvider];
  v10 = [v9 dispositions] & 0x10;

  if (v10 != 16)
  {
    v11 = [(SetupController *)self environment];
    v12 = [(BYEnvironment *)v11 setupMethod];
    [v12 setIntent:0];
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
  v8 = self;
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
    [(SetupController *)v8 setGreenController:v4];
  }
}

- (void)_writeGreenInformedDefaultPlistIfNecessary
{
  v3 = [NSLocale currentLocale:a2];
  v4 = [(NSLocale *)v3 countryCode];
  [(SetupController *)self _writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:v4];
}

- (void)_writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(SetupController *)v10 _canShortCircuitGreen])
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
    v5 = [(SetupController *)v10 greenController];
    [(BYGreenController *)v5 writeInformedDefaultPlistIfNecessaryForLocaleRegionCode:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)userSelectedLanguage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SetupController *)v4 setUserSelectedLanguage:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)userSelectedLanguageWithLocale:(id)a3 countryCode:(id)a4 localePaneScrollOffset:(double)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  [(SetupController *)v10 setUserSelectedLanguageWithLocale:location[0]];
  LOBYTE(a4) = [(SetupController *)v10 _userSelectedLocale:0 localePaneScrollOffset:a5];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return a4 & 1;
}

- (BOOL)_userSelectedLocale:(id)a3 localePaneScrollOffset:(double)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
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

    v6 = [(SetupController *)v20 environment];
    v7 = [(BYEnvironment *)v6 buddyPreferences];
    [v7 setObject:location[0] forKey:@"Locale"];
  }

  v8 = v20;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100084D9C;
  v14 = &unk_10032B718;
  v15[0] = v20;
  v15[1] = *&v18;
  LOBYTE(v8) = [(SetupController *)v8 updateLanguageLocale:&v10];
  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (BOOL)shouldEndLifecycleForCause:(unint64_t)a3
{
  if (a3)
  {
    if (a3 - 1 < 5)
    {
      v9 = 1;
    }
  }

  else
  {
    v7 = BYSetupAssistantHasCompletedInitialRun() & 1;
    v3 = +[BuddyActivationConfiguration currentConfiguration];
    v4 = [v3 hasActivated];

    v5 = 0;
    if (v7)
    {
      v5 = 0;
      if (!self->_inMiniBuddyFromBreadcrumb)
      {
        v5 = v4 & 1;
      }
    }

    v9 = v5 & 1;
  }

  return v9 & 1;
}

- (void)willEndLifecycleDueToCause:(unint64_t)a3 allowDismissal:(BOOL)a4
{
  v57 = self;
  v56 = a2;
  v55 = a3;
  v54 = a4;
  if (self->_buddyDone)
  {
    oslog = _BYLoggingFacility();
    v52 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100077E48(buf, v55);
      _os_log_error_impl(&_mh_execute_header, oslog, v52, "Ignoring request will exit cause %ld request as an exit has already begun", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    if (v54)
    {
      v51 = _BYLoggingFacility();
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        sub_100077E48(v61, v55);
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
        sub_100077E48(v60, v55);
        _os_log_impl(&_mh_execute_header, v49, v48, "Will end lifecycle due to cause %ld...", v60, 0xCu);
      }

      objc_storeStrong(&v49, 0);
    }

    v4 = [v57 environment];
    v5 = [v4 lockdownModeProvider];
    v6 = [v5 hasStagedEnablement];

    v47 = v6 & 1;
    if (v55 == 1 && v54 && +[BuddyMenuController supportsHomeGesture]&& (v47 & 1) == 0)
    {
      [*(v57 + 12) invalidate];
      objc_storeStrong(v57 + 12, 0);
    }

    *(v57 + 42) = 1;
    [v57 setAllowDismissalForExit:v54];
    v7 = [v57 environment];
    v8 = [v7 analyticsManager];
    v58[0] = @"duration";
    [BuddyTimestamp intervalSinceTimestamp:*(v57 + 15)];
    v9 = [NSNumber numberWithDouble:?];
    v59[0] = v9;
    v58[1] = @"startupCause";
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v57 cachedStartupCause]);
    v59[1] = v10;
    v58[2] = @"exitCause";
    v11 = [NSNumber numberWithUnsignedInteger:v55];
    v59[2] = v11;
    v58[3] = @"hasCompletedInitialRun";
    v12 = [NSNumber numberWithBool:BYSetupAssistantHasCompletedInitialRun()];
    v59[3] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
    [v8 addEvent:@"com.apple.setupassistant.ios.duration" withPayload:v13 persist:1];

    if (v55 >= 3 && v55 - 3 < 2)
    {
      [v57 _willEndLifecycleForDataTransfer];
    }

    else
    {
      v14 = +[ACAccountStore defaultStore];
      v15 = [v14 aa_primaryAppleAccount];

      if (v15)
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

      v20 = [v57 environment];
      v21 = [v20 suspendTask];
      v22 = [v21 launchURL];
      v39 = 0;
      v37 = 0;
      v23 = 1;
      if (v22)
      {
        v40 = [v57 environment];
        v39 = 1;
        v38 = [v40 lockdownModeProvider];
        v37 = 1;
        v23 = [v38 hasStagedEnablement] ^ 1;
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
        v32 = v57;
        [v33 setTransitionHandler:&v28];
        v26 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v33, v28, v29, v30, v31];
        [v57 setMonitor:v26];

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, BYSetupAssistantUISessionNoLongerExclusiveNotification, 0, 0, 1u);
        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
      }
    }
  }
}

- (void)endLifecycleDueToCause:(unint64_t)a3
{
  v123 = self;
  v122 = a2;
  v121 = a3;
  location = _BYLoggingFacility();
  v119 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, v121);
    _os_log_impl(&_mh_execute_header, location, v119, "Ending lifecycle due to cause %ld...", buf, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v118 = 1;
  v3 = 1;
  if (v121 != 3)
  {
    v3 = v121 == 4;
  }

  v117 = v3;
  v116 = 0;
  v4 = +[UIApplication sharedApplication];
  v5 = [(UIApplication *)v4 applicationState]== 2;

  v115 = v5;
  v6 = [(SetupController *)v123 navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 lastObject];
  v9 = [v8 conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem];

  if (v9)
  {
    v10 = [(SetupController *)v123 navigationController];
    v11 = [v10 viewControllers];
    v114 = [v11 lastObject];

    if (objc_opt_respondsToSelector())
    {
      v118 = [v114 allowedTerminationSources] == 0;
    }

    objc_storeStrong(&v114, 0);
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

  switch(v121)
  {
    case 0uLL:
      goto LABEL_49;
    case 1uLL:
      v14 = [(SetupController *)v123 environment];
      v15 = [(BYEnvironment *)v14 suspendTask];
      v16 = [v15 launchURL];
      v106 = 0;
      v104 = 0;
      v17 = 0;
      if (v16)
      {
        v107 = [(SetupController *)v123 environment];
        v106 = 1;
        v105 = [v107 buddyPreferencesExcludedFromBackup];
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
      v18 = [(SetupController *)v123 environment];
      v19 = [(BYEnvironment *)v18 lockdownModeProvider];
      v20 = [v19 hasStagedEnablement];

      if (v20)
      {
        if (v108)
        {
          v21 = [(SetupController *)v123 environment];
          v22 = [(BYEnvironment *)v21 buddyPreferencesExcludedFromBackup];
          [v22 setObject:&__kCFBooleanTrue forKey:BYBuddyRunStandardMiniBuddy];
        }

        [(SetupController *)v123 willMarkBuddyComplete];
        [(SetupController *)v123 markBuddyComplete];
        [(SetupController *)v123 didMarkBuddyComplete];
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
        v25 = v123;
        v95 = _NSConcreteStackBlock;
        v96 = -1073741824;
        v97 = 0;
        v98 = sub_100086884;
        v99 = &unk_10032B0D0;
        v100 = v123;
        [(SetupController *)v25 _executeAfterBuddyPreTerminationTasksFinish:&v95];
        objc_storeStrong(&v100, 0);
        return;
      }

      if (v108)
      {
        [(SetupController *)v123 setShouldLaunchSuspendTaskURL:1];
        [(SetupController *)v123 willMarkBuddyComplete];
        [(SetupController *)v123 markBuddyComplete];
        [(SetupController *)v123 didMarkBuddyComplete];
        v94 = 0;
        v26 = +[LSApplicationWorkspace defaultWorkspace];
        v27 = [(SetupController *)v123 environment];
        v28 = [(BYEnvironment *)v27 suspendTask];
        v29 = [v28 launchURL];
        v127 = SBSOpenApplicationOptionKeyLaunchApplicationAfterSetup;
        v128 = &__kCFBooleanTrue;
        v30 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        obj = 0;
        v31 = [v26 openURL:v29 withOptions:v30 error:&obj];
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
              v90 = [v94 domain];
              v89 = 1;
              v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v90, [v94 code]);
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
          v33 = v123;
          v81 = _NSConcreteStackBlock;
          v82 = -1073741824;
          v83 = 0;
          v84 = sub_100086AC0;
          v85 = &unk_10032B0D0;
          v86 = v123;
          [(SetupController *)v33 _executeAfterBuddyPreTerminationTasksFinish:&v81];
          objc_storeStrong(&v86, 0);
        }

        objc_storeStrong(&v94, 0);
        return;
      }

LABEL_49:
      if (v118 && v115 && v121 == 1)
      {
        v34 = [(SetupController *)v123 environment];
        v35 = [(BYEnvironment *)v34 managedConfiguration];
        v36 = [v35 isPasscodeSet];

        if (v36)
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
          [(SetupController *)v123 willMarkBuddyComplete];
          [(SetupController *)v123 markBuddyComplete];
          [(SetupController *)v123 didMarkBuddyComplete];
          v39 = v123;
          v72 = _NSConcreteStackBlock;
          v73 = -1073741824;
          v74 = 0;
          v75 = sub_100086AEC;
          v76 = &unk_10032B0D0;
          v77 = v123;
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
          v44 = [(NSBundle *)v43 bundleIdentifier];
          v124 = FBSOpenApplicationOptionKeyUnlockDevice;
          v125 = &__kCFBooleanTrue;
          v45 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
          [v42 openApplication:v44 options:v45 withResult:&stru_10032B780];
        }
      }

      else
      {
        if ((os_variant_has_internal_ui() & 1) != 0 && v121 == 1 && v118 && !v115 && (v116 & 1) == 0)
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
          [(SetupController *)v123 markBuddyComplete];
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
          [(SetupController *)v123 didMarkBuddyComplete];
          v50 = v123;
          v57 = _NSConcreteStackBlock;
          v58 = -1073741824;
          v59 = 0;
          v60 = sub_100086C50;
          v61 = &unk_10032B0D0;
          v62 = v123;
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

  if (v121 - 3 < 2)
  {
    [(SetupController *)v123 willMarkBuddyComplete];
    [(SetupController *)v123 markBuddyComplete];
    return;
  }

  if (v121 == 5)
  {
    goto LABEL_49;
  }
}

- (unint64_t)intendedRestoreType
{
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 setupMethod];
  v4 = [v3 intendedDataTransferMethod];

  return v4 == 1;
}

- (unint64_t)restoreType
{
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 setupMethod];
  v4 = [v3 dataTransferMethod];

  return v4 == 1;
}

- (void)prepareWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(2, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100086EB4;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)invalidateAssertionIfNeededForStartUpCause:(unint64_t)a3
{
  v4 = 0;
  if (a3 < 6)
  {
    goto LABEL_6;
  }

  if (a3 == 6)
  {
LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  if (a3 == 7)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_8;
  }

  if (a3 - 9 < 2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v4)
  {
    v3 = [(SetupController *)self cpuAssertion];
    [(BYCPUAssertion *)v3 invalidate];

    [(SetupController *)self setCpuAssertion:0];
  }
}

- (BOOL)airplaneModeEnabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(RadiosPreferences);
  v2 = [location[0] airplaneMode];
  objc_storeStrong(location, 0);
  return v2 & 1;
}

- (BOOL)shouldBeginRestore
{
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 pendingRestoreState];
  v4 = [(SetupController *)self environment];
  v5 = [(BYEnvironment *)v4 buddyPreferences];
  v6 = [BuddySoftwareUpdateRestoreFlow controllerNeedsToRunWithPendingRestoreState:v3 buddyPreferences:v5];

  return v6 & 1;
}

- (BOOL)shouldBeginMigration
{
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 buddyPreferencesExcludedFromBackup];
  v4 = [(SetupController *)self environment];
  v5 = [(BYEnvironment *)v4 runState];
  v6 = +[BuddyMigrationStateProvider validateAndResolveMigrationStateUsingPreferences:didCompleteInitialRun:](BuddyMigrationStateProvider, "validateAndResolveMigrationStateUsingPreferences:didCompleteInitialRun:", v3, [v5 hasCompletedInitialRun] & 1);
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
  v3 = [v2 cloudConfigurationDetails];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)willSetUpAsNew
{
  v2 = [(SetupController *)self environment];
  v3 = [(BYEnvironment *)v2 pendingRestoreState];
  v4 = [v3 backupItem];
  v5 = v4 != 0;

  v12 = v5;
  v6 = [(SetupController *)self environment];
  v7 = [(BYEnvironment *)v6 miscState];
  v8 = [v7 migrationManager];
  v9 = [v8 migrationInProgressOrCompleted];

  v10 = 1;
  if (!v12)
  {
    v10 = v9 & 1;
  }

  return (v10 ^ 1) & 1;
}

- (BuddyFlowItemDispositionProvider)flowItemDispositionProvider
{
  v2 = [(SetupController *)self environment:a2];
  v3 = [(BYEnvironment *)v2 flowItemDispositionProvider];

  return v3;
}

- (BuddyRemoteManagementProvider)remoteManagementProvider
{
  v2 = [(SetupController *)self environment:a2];
  v3 = [(BYEnvironment *)v2 enrollmentCoordinator];

  return v3;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] presentedViewController];
  v4 = [(SetupController *)v11 modalWiFiSettingsNavigationController];

  if (v3 == v4)
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
    [(SetupController *)v11 _cleanUpModalWiFiSettings];
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