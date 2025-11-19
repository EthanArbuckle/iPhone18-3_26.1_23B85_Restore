@interface GAXBackboard
+ (id)sharedInstance;
- ($21446A09B9FFC90E178416D3428B6537)gaxState;
- (BOOL)_appWithIdentifierIsBeingInstalled:(id)a3;
- (BOOL)_gaxShouldRemainEnabledByManagedConfiguration;
- (BOOL)_hasPasscode;
- (BOOL)_hasTimeRestrictionExpired;
- (BOOL)_isAllowingAllTouchByOverride;
- (BOOL)_isIgnoringAllTouchByOverride;
- (BOOL)_isPasscodeStale;
- (BOOL)_isRunningInStoreDemoMode;
- (BOOL)_shouldAllowDirectInactiveToActiveTransition;
- (BOOL)allowsMotion;
- (BOOL)allowsTripleClickSheet;
- (BOOL)appIsAllowedToSelfLock:(id)a3;
- (BOOL)appLayoutIsMultiAppForIntegrityVerifier:(id)a3;
- (BOOL)appWithBundleIdentifier:(id)a3 auditToken:(id *)a4 isAuthorizedForASAMStyle:(int64_t)a5;
- (BOOL)frontmostAppIsAcceptableForSessionAppWithIntegrityVerifier:(id)a3;
- (BOOL)hasMultipleSessionAppsForIntegrityVerifier:(id)a3;
- (BOOL)isActive;
- (BOOL)isCheckerBoardRunningForIntegrityVerifier:(id)a3;
- (BOOL)isInWorkspace;
- (BOOL)isPasscodeViewVisible;
- (BOOL)isPreBoardRunningForIntegrityVerifier:(id)a3;
- (BOOL)isSelfLockedToAppWithIdentifier:(id)a3;
- (BOOL)isSystemAppAccessDisabledForIntegrityVerifier:(id)a3;
- (BOOL)isUnmanagedSelfLocked;
- (BOOL)processWithAuditTokenIsEntitledForInternalASAM:(id *)a3;
- (BOOL)processWithAuditTokenIsEntitledForUnmanagedASAM:(id *)a3;
- (BOOL)sessionAppGAXClientDidCheckInForIntegrityVerifier:(id)a3;
- (BOOL)sessionAppIsPreferencesForIntegrityVerifier:(id)a3;
- (BOOL)sessionAppIsPurpleBuddyForIntegrityVerifier:(id)a3;
- (BOOL)sessionAppWithIdentifier:(id)a3 isRelaunchableForIntegrityVerifier:(id)a4;
- (BOOL)shouldProceedWithVerificationForIntegrityVerifier:(id)a3;
- (BOOL)wantsAppSelfLockMode;
- (BOOL)wantsSingleAppMode;
- (BOOL)wantsSingleAppModeOrAppSelfLockMode;
- (GAXBackboard)init;
- (NSString)effectiveAppBundleIdentifier;
- (double)_remainingLockoutDuration;
- (id)_accessIgnoredTouchRegions;
- (id)_availabilitySpringboardParametersFromSystemAppInfoQuery:(id)a3;
- (id)_debugGAXDescription;
- (id)_errorMessageForAvailability:(unint64_t)a3;
- (id)_passcode;
- (id)_unarchivedIgnoredTouchRegionsWithDataArray:(id)a3;
- (id)asamConfigurationDictionaryForBackboardServer:(id)a3;
- (id)currentReasonsToBlockAllEvents;
- (id)currentSessionApp;
- (id)expectedSessionAppIdentifier;
- (id)profileManagerSessionAppID:(id)a3;
- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(unint64_t)a4;
- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6;
- (int)activeAppInterfaceOrientationWithBackboardServer:(id)a3;
- (int64_t)backboardServer:(id)a3 restrictionStateForIdentifier:(id)a4;
- (int64_t)effectiveASAMStyleForAppWithBundleIdentifier:(id)a3 auditToken:(id *)a4 desiredStyle:(int64_t)a5;
- (unint64_t)_availabilityForRequestType:(int)a3 springboardParameters:(id)a4;
- (unint64_t)currentGuidedAccessModeForBackboardServer;
- (unint64_t)relaunchAttemptsForSessionAppWithIdentifier:(id)a3 forIntegrityVerifier:(id)a4;
- (unsigned)_previousModeIgnoringWorkspace:(BOOL)a3;
- (void)_applyAllowedStatesForRestrictions;
- (void)_applyChangedStatesForRestrictions;
- (void)_applyDeniedStatesForRestrictions;
- (void)_applyUnmanagedSelfLockRestrictionsForStyle:(int64_t)a3;
- (void)_clearChangedStatesForRestrictions;
- (void)_clearSavedActiveAppIDAfterRelaunchIfNeeeded;
- (void)_clearSavedTimeRestrictionsSettingsAfterRelaunchIfNeeded;
- (void)_didFinishTransitioningFromWorkspaceToApplication;
- (void)_didFinishTransitioningFromWorkspaceToSession;
- (void)_handleAssistiveTouchEnabledNotification:(id)a3;
- (void)_handleInCheckerBoardScenarioUpdated;
- (void)_handleInPreBoardScenarioUpdated;
- (void)_handleLostModeChanged;
- (void)_handleSubstationalTransition;
- (void)_handleTelephonyCallStatusChangedNotification:(id)a3;
- (void)_handleToggleServerModeNotification:(id)a3;
- (void)_handleUpdateGAXClientState;
- (void)_launchSessionAppWithIdentifier:(id)a3;
- (void)_notifyEffectiveAppDidChange:(id)a3;
- (void)_notifyOfGAXBackboardStateChange;
- (void)_performValidation;
- (void)_prepareGuidedAccessAfterConnectingToSpringboard:(BOOL)a3;
- (void)_prepareGuidedAccessAfterConnectingToSpringboard:(BOOL)a3 springBoardPID:(int)a4;
- (void)_removeUnmanagedSelfLockRestrictions;
- (void)_resetOverrideTouchReasons;
- (void)_setPasscode:(id)a3;
- (void)_showPasscodeViewForVerification:(unsigned int)a3;
- (void)_showUnmanagedASAMBannerWithType:(int)a3;
- (void)_transitionToMode:(unsigned int)a3 requireUserUnlock:(BOOL)a4 assumeUserInterfaceConnectionSevered:(BOOL)a5 completion:(id)a6;
- (void)_updateDisablingSystemGesturesForMode:(unsigned int)a3;
- (void)_updateIsInitializingAndWasActiveBeforeReboot:(BOOL)a3;
- (void)_updateSessionAppForSingleAppMode;
- (void)_updateSessionAppWithIdentifier:(id)a3 notifyUserInterfaceServer:(BOOL)a4 sessionAppIdentifierDidChange:(BOOL *)a5;
- (void)addReasonToBlockAllEvents:(id)a3;
- (void)appDidChangeForAppSelfLockModeWithProfileManager:(id)a3;
- (void)appDidChangeForSingleAppModeWithProfileManager:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applyUnmanagedSelfLockStaticRestrictionsWithProfileManager:(id)a3;
- (void)attemptAppRelaunchForAppWithIdentifier:(id)a3 withIntegrityVerifier:(id)a4;
- (void)backboardServer:(id)a3 clientWentInvalid:(unsigned int)a4;
- (void)backboardServer:(id)a3 didFinishLaunchingApplicationWithConfiguration:(unsigned int)a4 appLaunchGeneration:(unint64_t)a5 errorMessage:(id)a6;
- (void)backboardServer:(id)a3 isMakingEmergencyCall:(BOOL)a4;
- (void)backboardServer:(id)a3 passcodeDidChange:(id)a4;
- (void)backboardServer:(id)a3 sbMiniAlertIsShowing:(BOOL)a4;
- (void)backboardServer:(id)a3 tripleClickSheetDidShow:(unsigned int)a4;
- (void)backboardServer:(id)a3 voiceOverItemChooserDidShow:(unsigned int)a4;
- (void)backboardServerPresentGuidedAccessActiveBanner:(id)a3;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
- (void)dealloc;
- (void)deviceWasLockedWithBackboardServer:(id)a3;
- (void)deviceWasUnlockedWithBackboardServer:(id)a3;
- (void)didEnableSystemAppAccess;
- (void)didEnterAppSelfLockModeWithProfileManager:(id)a3;
- (void)didEnterSingleAppModeWithProfileManager:(id)a3;
- (void)didExitAppSelfLockModeWithProfileManager:(id)a3;
- (void)didExitSingleAppModeWithProfileManager:(id)a3;
- (void)didFinishVerificationWithIntegrityVerifier:(id)a3;
- (void)didVerifyEvent:(unint64_t)a3 withOutcome:(unint64_t)a4 withIntegrityVerifier:(id)a5;
- (void)effectiveAppDidBecomeInvalidWithAppManager:(id)a3;
- (void)eventProcessor:(id)a3 shouldAllowTripleClickSheet:(BOOL *)a4 tripleClickAlertIsVisible:(BOOL *)a5;
- (void)eventProcessor:(id)a3 showAlertWithType:(int)a4;
- (void)eventProcessor:(id)a3 transitionToMode:(unsigned int)a4;
- (void)eventProcessor:(id)a3 updateAssistiveTouchBootstrapPort:(unsigned int)a4;
- (void)handleGuidedAccessAutomationCommand:(id)a3 completion:(id)a4;
- (void)homeClickSwallowedInSpringBoard;
- (void)monitorForTouchID;
- (void)pauseVerificationForProfileManager:(id)a3;
- (void)presentStandardActiveTopBanner;
- (void)purpleBuddyDidTerminateWithAppManager:(id)a3;
- (void)removeReasonToBlockAllEvents:(id)a3;
- (void)removeUnmanagedSelfLockStaticRestrictionsWithProfileManager:(id)a3;
- (void)resumeVerificationForProfileManager:(id)a3;
- (void)sessionAppIsBeingInstalledForIntegrityVerifier:(id)a3 sessionIdentifier:(id)a4 completion:(id)a5;
- (void)setEnabled:(BOOL)a3 fromAppWithIdentifier:(id)a4 withAuditToken:(id *)a5 configuration:(id)a6 completion:(id)a7;
- (void)setShouldStartSessionUponFrontmostAppChanged:(BOOL)a3;
- (void)systemDidRestartDueToLowBatteryWithBackboardServer:(id)a3;
- (void)timeAlarmDidOccurForTimeRestriction:(id)a3;
- (void)timeDidExpireForTimeRestriction:(id)a3;
- (void)timeRestrictionWasCancelled:(id)a3;
- (void)userConfirmUnmanagedASAMForAppWithBundleID:(id)a3 requireConfirmation:(BOOL)a4 completion:(id)a5;
- (void)userInterfaceClient:(id)a3 willActivateUserInterfaceServiceWithInitializationMessage:(id)a4;
- (void)willBeginVerificationWithIntegrityVerifier:(id)a3;
@end

@implementation GAXBackboard

+ (id)sharedInstance
{
  if (qword_595F8 != -1)
  {
    sub_2AC88();
  }

  v3 = qword_595F0;

  return v3;
}

- (GAXBackboard)init
{
  v49.receiver = self;
  v49.super_class = GAXBackboard;
  v2 = [(GAXBackboard *)&v49 init];
  if (!v2)
  {
    return v2;
  }

  v3 = +[NSMutableDictionary dictionary];
  [(GAXBackboard *)v2 setClientPortsToBundleIds:v3];

  v41 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
  [v41 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  [v41 setUseWallTime:1];
  [(GAXBackboard *)v2 setUnmanagedASAMFailsafeTimer:v41];
  v40 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];

  [v40 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  [(GAXBackboard *)v2 setAppLaunchFailureDetectionTimer:v40];
  v4 = +[NSMutableSet set];
  [(GAXBackboard *)v2 setReasonsToBlockAllEvents:v4];

  v5 = dispatch_queue_create("GAXBackboardStateAccess", 0);
  gaxStateAccessQueue = v2->_gaxStateAccessQueue;
  v2->_gaxStateAccessQueue = v5;

  v39 = objc_alloc_init(GAXEventProcessor);
  [(GAXBackboard *)v2 setEventProcessor:v39];
  [(GAXEventProcessor *)v39 setDelegate:v2];
  v38 = objc_alloc_init(GAXVerifier);
  [(GAXBackboard *)v2 setIntegrityVerifier:v38];
  [(GAXVerifier *)v38 setDelegate:v2];
  [(GAXBackboard *)v2 setIsApplicationBeingInstalled:0];
  v7 = [AXPasscodeAccessor alloc];
  v8 = GAXLogCommon();
  v9 = [v7 initWithServiceName:@"GuidedAccess" accountName:@"user" groupName:@"com.apple.springboard" logFacility:v8];
  passcodeHandle = v2->_passcodeHandle;
  v2->_passcodeHandle = v9;

  LODWORD(v8) = notify_register_dispatch("com.apple.accessibility.guidedaccess.session.active", &dword_59600, &_dispatch_main_q, &stru_4D488);
  if (v8)
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_2AC9C();
    }
  }

  else
  {
    byte_59604 = 1;
    *buf = 0;
    v51[0] = buf;
    v51[1] = 0x2020000000;
    v52 = 0;
    v12 = v2->_gaxStateAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1239C;
    block[3] = &unk_4D4B0;
    v48 = buf;
    v47 = v2;
    dispatch_sync(v12, block);
    notify_set_state(dword_59600, *(v51[0] + 24));
    v13 = GAXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_2AD10(v51);
    }

    _Block_object_dispose(buf, 8);
  }

  v37 = [[AXUIClient alloc] initWithIdentifier:@"GAXUIClientIdentifierBackboard" serviceBundleName:@"GuidedAccess"];
  [v37 setDelegate:v2];
  [(GAXBackboard *)v2 setUserInterfaceClient:v37];
  v14 = objc_alloc_init(GAXBackboardServer);
  [(GAXBackboard *)v2 setBackboardServer:v14];
  [(GAXBackboardServer *)v14 setBackboardDelegate:v2];
  v36 = +[GAXSettings sharedInstance];
  [(GAXBackboard *)v2 _clearSavedActiveAppIDAfterRelaunchIfNeeeded];
  [(GAXBackboard *)v2 _clearSavedTimeRestrictionsSettingsAfterRelaunchIfNeeded];
  v15 = [v36 activeAppID];
  if (v15)
  {

LABEL_12:
    v16 = GAXLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "GAX was active before system rebooted or device wants single app mode. Disabling events immediately until init is complete", buf, 2u);
    }

    [(GAXBackboard *)v2 _updateIsInitializingAndWasActiveBeforeReboot:1];
    goto LABEL_15;
  }

  if ([(GAXBackboard *)v2 wantsSingleAppMode])
  {
    goto LABEL_12;
  }

LABEL_15:
  v17 = objc_alloc_init(GAXAppManager);
  [(GAXAppManager *)v17 setDelegate:v2];
  [(GAXBackboard *)v2 setAppManager:v17];
  v18 = objc_alloc_init(GAXProfileManager);
  [(GAXBackboard *)v2 setProfileManager:v18];
  [(GAXProfileManager *)v18 setDelegate:v2];
  v19 = [GAXTimeRestrictionManager alloc];
  v20 = +[AXAccessQueue mainAccessQueue];
  v21 = [v19 initWithAssertedAccessQueue:v20];

  [(GAXBackboard *)v2 setTimeRestrictionManager:v21];
  [v21 setDelegate:v2];
  v22 = objc_alloc_init(GAXAccessibilityFeatureManager);
  [(GAXBackboard *)v2 setAxFeatureManager:v22];
  [(GAXBackboard *)v2 _prepareGuidedAccessAfterConnectingToSpringboard:0];
  v23 = GAXLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_2ADA4();
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_123B8;
  v44[3] = &unk_4C958;
  v24 = v2;
  v45 = v24;
  dispatch_async(&_dispatch_main_q, v44);

  v25 = +[NSNotificationCenter defaultCenter];
  v26 = +[NSOperationQueue mainQueue];
  v27 = AXSystemAppServerDiedNotification;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_123C0;
  v42[3] = &unk_4D4D8;
  v28 = v24;
  v43 = v28;
  v29 = [v25 addObserverForName:v27 object:0 queue:v26 usingBlock:v42];
  [(GAXBackboard *)v28 setSpringboardDiedObserverToken:v29];

  [(GAXBackboard *)v28 setAppLaunchGeneration:1];
  v30 = +[FMDFMIPManager sharedInstance];
  v28->_isLostModeActive = [v30 lostModeIsActive];

  v31 = GAXLogIntegrity();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    isLostModeActive = v28->_isLostModeActive;
    *buf = 67109120;
    *&buf[4] = isLostModeActive;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Initial value for Lost Mode: %i", buf, 8u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v28, sub_123C8, kLostModeChangedRestrictedNotification, 0, CFNotificationSuspensionBehaviorCoalesce);
  v34 = +[LSApplicationWorkspace defaultWorkspace];
  [v34 addObserver:v28];

  return v2;
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Did get applicationsDidInstall callback", buf, 2u);
  }

  [(GAXBackboard *)self setIsApplicationBeingInstalled:0];
  v5 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_124B0;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)setShouldStartSessionUponFrontmostAppChanged:(BOOL)a3
{
  self->_shouldStartSessionUponFrontmostAppChanged = a3;
  if (a3)
  {
    objc_initWeak(&location, self);
    v4 = [(GAXBackboard *)self appLaunchFailureDetectionTimer];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_12738;
    v6[3] = &unk_4D528;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    [v4 afterDelay:v6 processBlock:30.0];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [(GAXBackboard *)self appLaunchFailureDetectionTimer];
    [v5 cancel];
  }
}

- (void)addReasonToBlockAllEvents:(id)a3
{
  v4 = a3;
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Adding reason to block events: %{public}@", buf, 0xCu);
  }

  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12998;
  v8[3] = &unk_4D050;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(gaxStateAccessQueue, v8);
}

- (void)removeReasonToBlockAllEvents:(id)a3
{
  v4 = a3;
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Removing reason to block events: %{public}@", buf, 0xCu);
  }

  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12B08;
  v8[3] = &unk_4D050;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(gaxStateAccessQueue, v8);
}

- (id)currentReasonsToBlockAllEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_12C48;
  v10 = sub_12C58;
  v11 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_12C60;
  v5[3] = &unk_4D4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_prepareGuidedAccessAfterConnectingToSpringboard:(BOOL)a3
{
  +[AXSpringBoardServer server];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12E6C;
  v8[3] = &unk_4D578;
  v8[4] = self;
  v5 = v10 = a3;
  v9 = v5;
  v6 = objc_retainBlock(v8);
  v7 = v6;
  if (v5)
  {
    [v5 pid:v6];
  }

  else
  {
    (v6[2])(v6, 0xFFFFFFFFLL);
  }
}

- (void)_prepareGuidedAccessAfterConnectingToSpringboard:(BOOL)a3 springBoardPID:(int)a4
{
  memset(v12, 0, 28);
  [(GAXBackboard *)self gaxState];
  v7 = +[AXSpringBoardServer server];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_13114;
  v9[3] = &unk_4D5C8;
  v9[4] = self;
  v11 = a3;
  v10 = a4;
  v8[0] = v12[0];
  *(v8 + 12) = *(v12 + 12);
  [v7 gaxBackboardStateDidChange:v8 completion:v9];
}

- (void)dealloc
{
  v3 = [(GAXBackboard *)self eventProcessor];
  [v3 cleanup];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.SubstantialTransition", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, kAXSGuidedAccessActivateNotification, 0);
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = [(GAXBackboard *)self springboardDiedObserverToken];
  [v6 removeObserver:v7];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = [(GAXBackboard *)self preBoardDidFinishObserverToken];
  [v8 removeObserver:v9];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = [(GAXBackboard *)self checkerBoardDidFinishObserverToken];
  [v10 removeObserver:v11];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:self];

  if (byte_59604 == 1)
  {
    notify_cancel(dword_59600);
    byte_59604 = 0;
  }

  v13 = [(GAXBackboard *)self backboardServer];
  v21 = 0;
  v14 = [v13 stopServerWithError:&v21];
  v15 = v21;
  if ((v14 & 1) == 0)
  {
    v16 = GAXLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_2AF68();
    }
  }

  [v13 removeAllHandlersForTarget:self];
  v17 = [(GAXBackboard *)self userInterfaceClient];
  [v17 setDelegate:0];

  v18 = [(GAXBackboard *)self substantialTransitionTimer];
  [v18 cancel];

  v19 = +[LSApplicationWorkspace defaultWorkspace];
  [v19 removeObserver:self];

  v20.receiver = self;
  v20.super_class = GAXBackboard;
  [(GAXBackboard *)&v20 dealloc];
}

- (void)_clearSavedActiveAppIDAfterRelaunchIfNeeeded
{
  v3 = +[GAXSettings sharedInstance];
  if ([v3 selfLockUnmanaged])
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "relaunched and we had been using unmanaged SAM. clearing out self lock information", buf, 2u);
    }

    [v3 setActiveAppID:0];
    [v3 setActiveAppSelfLocked:0];
    [v3 setSelfLockUnmanaged:0];
  }

  [(GAXBackboard *)self _removeUnmanagedSelfLockRestrictions];
  v5 = [[NSArray alloc] initWithObjects:{@"UniqueChipID", @"BuildVersion", 0}];
  v6 = MGCopyMultipleAnswers();
  if (v6)
  {
    v7 = v6;
    Value = CFDictionaryGetValue(v6, @"UniqueChipID");
    v9 = Value;
    if (Value)
    {
      v10 = CFGetTypeID(Value);
      if (v10 == CFNumberGetTypeID())
      {
        v9 = [v9 copy];
      }

      else
      {
        v9 = 0;
      }
    }

    v12 = CFDictionaryGetValue(v7, @"BuildVersion");
    v11 = v12;
    if (v12)
    {
      v13 = CFGetTypeID(v12);
      if (v13 == CFStringGetTypeID())
      {
        v11 = [v11 copy];
      }

      else
      {
        v11 = 0;
      }
    }

    CFRelease(v7);
    if (v9)
    {
      v14 = [v3 ECID];
      if ([v14 isEqual:v9] && v11)
      {
        v15 = [v3 productBuildVersion];
        v16 = [v15 isEqualToString:v11];

        if (v16)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  v17 = GAXLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Device (%{public}@, %{public}@) NOT known, not restarting app", buf, 0x16u);
  }

  [v3 setActiveAppID:0];
  [v3 setActiveAppSelfLocked:0];
  [v3 setSelfLockUnmanaged:0];
  [v3 setECID:v9];
  [v3 setProductBuildVersion:v11];
LABEL_24:
  if ([v3 isActiveAppSelfLocked])
  {
    v18 = [v3 activeAppID];
    if (![(GAXBackboard *)self appIsAllowedToSelfLock:v18])
    {
      v19 = GAXLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_2AFD8();
      }

      [v3 setActiveAppSelfLocked:0];
      [v3 setSelfLockUnmanaged:0];
      [v3 setActiveAppID:0];
    }
  }

  if (![(GAXBackboard *)self wantsSingleAppModeOrAppSelfLockMode]&& [(GAXBackboard *)self _hasSystemPasscode])
  {
    [v3 setActiveAppID:0];
  }
}

- (void)_clearSavedTimeRestrictionsSettingsAfterRelaunchIfNeeded
{
  if ([(GAXBackboard *)self wantsSingleAppModeOrAppSelfLockMode]|| [(GAXBackboard *)self _hasSystemPasscode])
  {

    [(GAXBackboard *)self _setTimeRestrictionHasExpired:0];
  }
}

- ($21446A09B9FFC90E178416D3428B6537)gaxState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4010000000;
  v11 = &unk_46B59;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_14094;
  v7[3] = &unk_4D4B0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(gaxStateAccessQueue, v7);
  v5 = v9;
  *&retstr->var0 = *(v9 + 2);
  *&retstr->var3 = *(v5 + 44);
  _Block_object_dispose(&v8, 8);
  return result;
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1436C;
  v5[3] = &unk_4D4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isPasscodeViewVisible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_14434;
  v5[3] = &unk_4D4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isInWorkspace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_144F8;
  v5[3] = &unk_4D4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)allowsMotion
{
  v2 = [(GAXBackboard *)self profileManager];
  v3 = [v2 shouldAllowMotion];

  return v3;
}

- (BOOL)allowsTripleClickSheet
{
  if ([(GAXBackboard *)self _hasTimeRestrictionExpired])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(GAXBackboard *)self profileManager];
    v5 = [v4 isSingleAppMode];

    if (v5)
    {
      v6 = [(GAXBackboard *)self axFeatureManager];
      v7 = [v6 hasAccessibilityTripleClickOptions];
    }

    else
    {
      v8 = [(GAXBackboard *)self profileManager];
      v9 = [v8 isAppSelfLockMode];

      if (v9)
      {
        v6 = [(GAXBackboard *)self profileManager];
        v7 = [v6 shouldAllowAccessibilityShortcut];
      }

      else
      {
        v6 = +[AXSettings sharedInstance];
        v7 = [v6 guidedAccessAXFeaturesEnabled];
      }
    }

    v10 = v7;

    v11 = +[AXSettings sharedInstance];
    v3 = v10 | [v11 guestPassSessionIsActive];
  }

  return v3;
}

- (NSString)effectiveAppBundleIdentifier
{
  v2 = [(GAXBackboard *)self appManager];
  v3 = [v2 effectiveAppBundleIdentifier];

  return v3;
}

- (void)_updateDisablingSystemGesturesForMode:(unsigned int)a3
{
  if (a3)
  {
    v4 = [(GAXBackboard *)self disableSystemGesturesForActiveAssertion];

    if (!v4)
    {
      v5 = [AXAssertion assertionWithType:AXAssertionTypeDisableSystemGestures identifier:@"GAX-BB"];
      [(GAXBackboard *)self setDisableSystemGesturesForActiveAssertion:v5];
    }
  }

  else
  {

    [(GAXBackboard *)self setDisableSystemGesturesForActiveAssertion:0];
  }
}

- (void)_notifyOfGAXBackboardStateChange
{
  memset(&v7[40], 0, 28);
  [(GAXBackboard *)self gaxState];
  v3 = +[AXSpringBoardServer server];
  *v7 = *&v7[40];
  *&v7[12] = *&v7[52];
  [v3 gaxBackboardStateDidChange:v7];

  v4 = [(GAXBackboard *)self userInterfaceClient];
  v8 = @"gax backboard state";
  *v7 = *&v7[40];
  *&v7[12] = *&v7[52];
  v5 = serializeGAXBackboardState(v7);
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v4 sendAsynchronousMessage:v6 withIdentifier:4 targetAccessQueue:0 completion:0];
}

- (void)_notifyEffectiveAppDidChange:(id)a3
{
  v3 = a3;
  v4 = +[AXSpringBoardServer server];
  [v4 gaxFrontmostAppDidCheckIn:v3];
}

- (void)_handleUpdateGAXClientState
{
  v3 = [(GAXBackboard *)self appManager];
  if ([v3 sessionAppGAXClientDidCheckIn])
  {
    v4 = [(GAXBackboard *)self profileManager];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    gaxStateAccessQueue = self->_gaxStateAccessQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_14E40;
    v9[3] = &unk_4D4B0;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(gaxStateAccessQueue, v9);
    [v3 settingsDidChangeWithServerMode:*(v11 + 6) allowsMotion:objc_msgSend(v4 allowsKeyboardTextInput:{"shouldAllowMotion"), objc_msgSend(v4, "shouldAllowKeyboardTextInput")}];
    v6 = [(GAXBackboard *)self profileManager];
    if ([v6 isSingleAppMode])
    {
    }

    else
    {
      v7 = [(GAXBackboard *)self profileManager];
      v8 = [v7 isAppSelfLockMode];

      if (!v8)
      {
LABEL_6:
        _Block_object_dispose(&v10, 8);

        goto LABEL_7;
      }
    }

    [(GAXBackboard *)self _applyDeniedStatesForRestrictions];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)backboardServer:(id)a3 clientWentInvalid:(unsigned int)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_14ECC;
  v4[3] = &unk_4D618;
  v4[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)backboardServer:(id)a3 passcodeDidChange:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15124;
  v5[3] = &unk_4D050;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)deviceWasLockedWithBackboardServer:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_158DC;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)deviceWasUnlockedWithBackboardServer:(id)a3
{
  if ([(GAXBackboard *)self wantsSingleAppMode])
  {
    v4 = [(GAXBackboard *)self appManager];
    v5 = [(GAXBackboard *)self profileManager];
    v6 = [v5 singleAppModeAppID];
    v7 = [v4 appWithIdentifierIsASessionApp:v6];

    if ((v7 & 1) == 0)
    {
      [(GAXBackboard *)self _updateSessionAppForSingleAppMode];
    }
  }

  if ([(GAXBackboard *)self wantsSingleAppModeOrAppSelfLockMode])
  {
    v8 = [(GAXBackboard *)self appManager];
    v9 = [v8 effectiveAppIsPurpleBuddy];

    if ((v9 & 1) == 0)
    {
      v10 = [(GAXBackboard *)self isApplicationBeingInstalled];
      v11 = GAXLogCommon();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Device was unlocked, and system wants Single App Mode or App self-lock mode. App installation is in progress", buf, 2u);
        }
      }

      else
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Device was unlocked, and system wants Single App Mode or App self-lock mode. Turning on GAX event tap until GAX is verified", buf, 2u);
        }

        gaxStateAccessQueue = self->_gaxStateAccessQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_15AF8;
        block[3] = &unk_4C958;
        block[4] = self;
        dispatch_sync(gaxStateAccessQueue, block);
        [(GAXBackboard *)self _updateIsInitializingAndWasActiveBeforeReboot:1];
      }
    }
  }

  v14 = [(GAXBackboard *)self integrityVerifier];
  [v14 verifyIntegrityWithEvent:6 afterDelay:0.7];
}

- (void)backboardServer:(id)a3 tripleClickSheetDidShow:(unsigned int)a4
{
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15B84;
  v5[3] = &unk_4D618;
  v5[4] = self;
  v6 = a4;
  dispatch_sync(gaxStateAccessQueue, v5);
}

- (void)backboardServer:(id)a3 voiceOverItemChooserDidShow:(unsigned int)a4
{
  v6 = GAXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = a4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "VoiceOver item chooser shown: %d", buf, 8u);
  }

  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_15C9C;
  v8[3] = &unk_4D618;
  v8[4] = self;
  v9 = a4;
  dispatch_sync(gaxStateAccessQueue, v8);
}

- (void)backboardServer:(id)a3 sbMiniAlertIsShowing:(BOOL)a4
{
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15D24;
  v5[3] = &unk_4D550;
  v5[4] = self;
  v6 = a4;
  dispatch_async(gaxStateAccessQueue, v5);
}

- (void)backboardServer:(id)a3 isMakingEmergencyCall:(BOOL)a4
{
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15DB4;
  v5[3] = &unk_4D550;
  v5[4] = self;
  v6 = a4;
  dispatch_async(gaxStateAccessQueue, v5);
}

- (void)backboardServerPresentGuidedAccessActiveBanner:(id)a3
{
  [(GAXBackboard *)self gaxState];
  if ((v4 & 0x10) != 0)
  {
    [(GAXBackboard *)self presentStandardActiveTopBanner];
  }
}

- (void)backboardServer:(id)a3 didFinishLaunchingApplicationWithConfiguration:(unsigned int)a4 appLaunchGeneration:(unint64_t)a5 errorMessage:(id)a6
{
  v8 = a6;
  if ([(GAXBackboard *)self appLaunchGeneration]<= a5)
  {
    v9 = v8;
    AXPerformBlockOnMainThread();
  }

  else
  {
    AXPerformBlockOnMainThread();
  }
}

- (void)systemDidRestartDueToLowBatteryWithBackboardServer:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_160CC;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (int)activeAppInterfaceOrientationWithBackboardServer:(id)a3
{
  v3 = [(GAXBackboard *)self settings];
  v4 = [v3 activeAppOrientation];

  return v4;
}

- (int64_t)backboardServer:(id)a3 restrictionStateForIdentifier:(id)a4
{
  v5 = a4;
  if ([(GAXBackboard *)self isActive])
  {
    v6 = [(GAXBackboard *)self profileManager];
    v7 = [v6 stateForRestrictionWithIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)userInterfaceClient:(id)a3 processMessageFromServer:(id)a4 withIdentifier:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  switch(a5)
  {
    case 2uLL:
      v13 = [v11 objectForKey:@"active interface orientation"];
      -[GAXBackboard setActiveInterfaceOrientation:](self, "setActiveInterfaceOrientation:", [v13 unsignedIntegerValue]);
      goto LABEL_58;
    case 0x10uLL:
      v29 = [v11 objectForKey:@"passcode is visible"];
      v30 = [v29 BOOLValue];

      v31 = GAXLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v93) = v30;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Passcode view visibility did change: %i", buf, 8u);
      }

      gaxStateAccessQueue = self->_gaxStateAccessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_17060;
      block[3] = &unk_4D690;
      block[4] = self;
      v79 = v30;
      v78 = v12;
      dispatch_sync(gaxStateAccessQueue, block);

      goto LABEL_59;
    case 0x11uLL:
      v38 = [v11 objectForKey:@"passcode view dismissal reason"];
      v39 = [v38 integerValue];

      v40 = GAXLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v93 = v39;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Passcode view was dismissed: %ld", buf, 0xCu);
      }

      v34 = 0;
      if (v39 > 2)
      {
        if (v39 == (&dword_4 + 1))
        {
          v37 = GAXLogCommon();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Notified of passcode view controller programmatic dismissal. Didn't expect to be notified of this, as we initiated it.", buf, 2u);
          }

LABEL_38:

          goto LABEL_59;
        }

        if (v39 != &dword_4)
        {
          if (v39 != (&dword_0 + 3))
          {
            goto LABEL_60;
          }

          goto LABEL_52;
        }

        v56 = +[AXSpringBoardServer server];
        v13 = v56;
        v66 = _NSConcreteStackBlock;
        v67 = 3221225472;
        v68 = sub_17290;
        v69 = &unk_4D6B8;
        v70 = self;
        v57 = &v66;
LABEL_57:
        [v56 isSystemAppFrontmost:{v57, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75}];
LABEL_58:

LABEL_59:
        v34 = 0;
        goto LABEL_60;
      }

      if (v39 != (&dword_0 + 1))
      {
        if (v39 != (&dword_0 + 2))
        {
          goto LABEL_60;
        }

        v56 = +[AXSpringBoardServer server];
        v13 = v56;
        v71 = _NSConcreteStackBlock;
        v72 = 3221225472;
        v73 = sub_17184;
        v74 = &unk_4D6B8;
        v75 = self;
        v57 = &v71;
        goto LABEL_57;
      }

LABEL_52:
      +[NSDate timeIntervalSinceReferenceDate];
      [(GAXBackboard *)self setLastLockoutStartedTimeInterval:?];
      if (v39 == (&dword_0 + 1))
      {
        [(GAXBackboard *)self setPasscodeEntryFailedCount:[(GAXBackboard *)self passcodeEntryFailedCount]+ 1];
        v90 = @"alert remaining lockout duration";
        [(GAXBackboard *)self _remainingLockoutDuration];
        v60 = [NSNumber numberWithDouble:?];
        v91 = v60;
        v34 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      }

      else
      {
        v34 = 0;
      }

      v62 = [(GAXBackboard *)self appManager];
      v63 = [v62 effectiveAppWasPlayingMedia];

      if (v63)
      {
        v25 = +[AXSpringBoardServer server];
        v64 = [(GAXBackboard *)self appManager];
        v65 = [v64 effectiveAppBundleIdentifier];
        [v25 resumeMediaForApp:v65];

LABEL_51:
      }

LABEL_60:
      if (a6)
      {
        *a6 = 0;
      }

      return v34;
    case 0x12uLL:
      v36 = GAXLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Passcode was set", buf, 2u);
      }

      v13 = [v12 objectForKey:@"passcode"];
      [(GAXBackboard *)self _setPasscode:v13];
      goto LABEL_58;
    case 0x13uLL:
      v25 = [v11 objectForKey:@"passcode"];
      if (v25)
      {
        v26 = [(GAXBackboard *)self _passcode];
        v27 = [v26 isEqualToString:v25];
      }

      else
      {
        v27 = 0;
      }

      v88 = @"passcode is correct";
      v58 = [NSNumber numberWithBool:v27];
      v89 = v58;
      v34 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];

      v59 = GAXLogCommon();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v93) = v27;
        _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "Passcode is correct: %i", buf, 8u);
      }

      goto LABEL_51;
    case 0x14uLL:
      v22 = [(GAXBackboard *)self _passcode];
      v86 = @"passcode length";
      v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 length]);
      v87 = v33;
      v34 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];

      goto LABEL_43;
    case 0x16uLL:
      v41 = [(GAXBackboard *)self appManager];
      v42 = [v12 objectForKey:@"finger path"];
      v22 = [v41 effectiveAppContainedViewsForArchivedFingerPath:v42];

      if (!v22)
      {
        goto LABEL_42;
      }

      v84 = @"container views";
      v85 = v22;
      v23 = &v85;
      v24 = &v84;
      goto LABEL_41;
    case 0x17uLL:
      v43 = [v11 objectForKey:@"server mode"];
      v44 = [v43 unsignedIntegerValue];

      v45 = GAXLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v93) = v44;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Transition to mode: %i", buf, 8u);
      }

      [(GAXBackboard *)self _transitionToMode:v44];
      goto LABEL_59;
    case 0x18uLL:
      v52 = [v11 objectForKey:@"system feature is enabled"];
      v53 = [v52 BOOLValue];

      v13 = [v12 objectForKey:@"system feature identifier"];
      v54 = [(GAXBackboard *)self profileManager];
      v55 = [NSNumber numberWithBool:v53];
      [v54 updateProperty:v13 withValue:v55];

      [(GAXBackboard *)self _notifyOfGAXBackboardStateChange];
      goto LABEL_58;
    case 0x19uLL:
      v48 = [(GAXBackboard *)self profileManager];
      v49 = [v12 objectForKey:@"time restriction duration"];
      [v48 updateProperty:@"GAXProfileAppTimeoutDuration" withValue:v49];

      v50 = [(GAXBackboard *)self profileManager];
      v51 = [v12 objectForKey:@"time restrictions enabled"];
      [v50 updateProperty:@"GAXProfileAppTimeoutEnabled" withValue:v51];

      v37 = [(GAXBackboard *)self timeRestrictionManager];
      [v37 cancel];
      goto LABEL_38;
    case 0x1AuLL:
      v19 = [v11 objectForKey:@"interface orientation"];
      v20 = [v19 unsignedIntegerValue];

      v21 = [(GAXBackboard *)self profileManager];
      v22 = [v21 ignoredTouchRegionsForOrientation:v20];

      if (v22)
      {
        v82 = @"interest area paths for storage";
        v83 = v22;
        v23 = &v83;
        v24 = &v82;
LABEL_41:
        v34 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:1];
      }

      else
      {
LABEL_42:
        v34 = 0;
      }

LABEL_43:

      goto LABEL_60;
    case 0x1BuLL:
      v35 = +[AXSpringBoardServer server];
      -[GAXBackboard setActiveInterfaceOrientation:](self, "setActiveInterfaceOrientation:", [v35 activeInterfaceOrientation]);

      [(GAXBackboard *)self _persistInterestAreaPathsForStorageFromMessage:v12 forInterfaceOrientation:[(GAXBackboard *)self activeInterfaceOrientation]];
      goto LABEL_59;
    case 0x1CuLL:
      v13 = [v11 objectForKey:@"interest area paths in screen coordinates"];
      v28 = [(GAXBackboard *)self _unarchivedIgnoredTouchRegionsWithDataArray:v13];
      [(GAXBackboard *)self setIgnoredTouchRegions:v28];

      goto LABEL_58;
    case 0x1FuLL:
      v13 = +[AXSpringBoardServer server];
      v14 = [(GAXBackboard *)self appManager];
      v15 = [v14 effectiveAppBundleIdentifier];
      v16 = [v12 objectForKey:@"hosted application scale factor"];
      v17 = [v12 objectForKey:@"hosted application center"];
      v18 = [v12 objectForKey:@"animation duration"];
      [v13 gaxUpdateStateOfHostedApplicationWithIdentifier:v15 scaleFactorNumber:v16 centerStringRepresentation:v17 animationDurationNumber:v18];

      goto LABEL_58;
    case 0x21uLL:
      v46 = GAXLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Biometrics attempt was successful", buf, 2u);
      }

      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_170DC;
      v76[3] = &unk_4C958;
      v76[4] = self;
      dispatch_async(&_dispatch_main_q, v76);
      goto LABEL_59;
    case 0x22uLL:
      v47 = GAXLogCommon();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Biometrics failed, prepare to show passcode sheet", buf, 2u);
      }

      [(GAXBackboard *)self _showPasscodeViewForVerification:1];
      goto LABEL_59;
    case 0x27uLL:
      v80 = @"has valid passcode";
      v22 = [NSNumber numberWithBool:[(GAXBackboard *)self _shouldAllowDirectInactiveToActiveTransition]];
      v81 = v22;
      v23 = &v81;
      v24 = &v80;
      goto LABEL_41;
    default:
      v37 = GAXLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_2B208(v12, a5);
      }

      goto LABEL_38;
  }
}

- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(unint64_t)a4
{
  v6 = 0;
  if (a4 <= 0x27 && ((1 << a4) & 0x809FDF0004) != 0)
  {
    v6 = [AXAccessQueue mainAccessQueue:a3];
  }

  return v6;
}

- (void)userInterfaceClient:(id)a3 willActivateUserInterfaceServiceWithInitializationMessage:(id)a4
{
  memset(&v9[2], 0, 28);
  v5 = a4;
  [(GAXBackboard *)self gaxState];
  v9[0] = v9[2];
  *(v9 + 12) = *(&v9[2] + 12);
  v6 = serializeGAXBackboardState(v9);
  [v5 setValue:v6 forKey:@"gax backboard state"];

  v7 = [(GAXBackboard *)self appManager];
  v8 = [v7 sessionAppBundleIdentifiers];
  [v5 setValue:v8 forKey:@"session application identifiers"];
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17490;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginVerificationWithIntegrityVerifier:(id)a3
{
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_178D8;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_sync(gaxStateAccessQueue, block);
}

- (void)didVerifyEvent:(unint64_t)a3 withOutcome:(unint64_t)a4 withIntegrityVerifier:(id)a5
{
  v17 = 0;
  v18 = 0;
  v20 = 0;
  v19 = 0;
  [(GAXBackboard *)self gaxState:a3];
  if (a4 == 26)
  {
    [(GAXBackboard *)self _verificationWillPauseForSpringBoardRelaunch];
  }

  else
  {
    if (a4 != 6)
    {
      if (a4 != 3)
      {
        return;
      }

      if ((HIDWORD(v19) - 1) <= 2)
      {
        v7 = GAXLogIntegrity();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_2B28C();
        }

        v8 = [(GAXBackboard *)self appManager];
        v9 = [v8 effectiveAppIsAcceptableForSessionApps];

        if (v9)
        {
          v10 = GAXLogAppLaunching();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Frontmost app has already checked in. Going active now", buf, 2u);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_17CE0;
          block[3] = &unk_4C958;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
        }

        else
        {
          v11 = [(GAXBackboard *)self appManager];
          v12 = [v11 sessionAppBundleIdentifiers];

          if (v12)
          {
            v13 = GAXLogIntegrity();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Will wait for app to check in as frontmost and then go active.", buf, 2u);
            }

            [(GAXBackboard *)self setShouldStartSessionUponFrontmostAppChanged:1];
          }
        }
      }
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_17D24;
    v14[3] = &unk_4C958;
    v14[4] = self;
    dispatch_async(&_dispatch_main_q, v14);
  }
}

- (void)didFinishVerificationWithIntegrityVerifier:(id)a3
{
  v4 = a3;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v44 = 0;
  [(GAXBackboard *)self gaxState];
  v5 = HIDWORD(v44);
  v41 = 0;
  [v4 outcome:objc_msgSend(v4 isError:"mostRecentOutcome") isIndeterminate:{&v41, 0}];
  if ((v41 & 1) == 0)
  {
    v6 = [(GAXBackboard *)self appManager];
    [v6 scheduleResetLaunchAttempts];
  }

  switch([v4 mostRecentOutcome])
  {
    case 0uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
      v11 = [v4 displayStringForOutcome:{objc_msgSend(v4, "mostRecentOutcome")}];
      v37 = v11;
      _AXAssert();
      goto LABEL_42;
    case 2uLL:
    case 5uLL:
      v21 = HIDWORD(v44);
      if (HIDWORD(v44) >= 2)
      {
        v22 = +[AXSpringBoardServer server];
        [v22 dismissAppSwitcher];

        v23 = +[AXSpringBoardServer server];
        [v23 hideNotificationCenter];

        v24 = +[AXSpringBoardServer server];
        [v24 showControlCenter:0];

        v21 = HIDWORD(v44);
      }

      if (v21 == 1 || v42)
      {
        goto LABEL_43;
      }

      v25 = GAXLogIntegrity();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Profile is managed or app self lock. GAX currenlty disabled. Making gax active now", buf, 2u);
      }

      [(GAXBackboard *)self _transitionToMode:2];
      v26 = self;
      v27 = 0;
      goto LABEL_38;
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v7 = GAXLogIntegrity();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if ((v5 & 0xFFFFFFFD) == 1)
      {
        if (v8)
        {
          v9 = [v4 displayStringForOutcome:{objc_msgSend(v4, "mostRecentOutcome")}];
          *buf = 138543362;
          v47 = v9;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Config is user or app self lock. Disabling GAX just to be sure. Verifier failed with: %{public}@", buf, 0xCu);
        }

        v10 = +[AXSpringBoardServer server];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_18500;
        v39[3] = &unk_4D6E0;
        v39[4] = self;
        v40 = v5;
        [v10 screenLockStatus:v39 passcodeStatusRequired:1];

        [(GAXBackboard *)self setDesiredModeAfterSuccessfulPasscodeEntry:0];
        goto LABEL_43;
      }

      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Config is managed. Could not bring gax app back to frontmost.", buf, 2u);
      }

      v12 = [(GAXBackboard *)self profileManager];
      v13 = [v12 isUserMode];

      if (v13)
      {
        v14 = GAXLogIntegrity();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v15 = "Back in user mode. Configurator likely removed the single app mode app. Disabling GAX now";
LABEL_17:
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      v16 = [(GAXBackboard *)self appManager];
      v17 = [v16 effectiveAppIsPurpleBuddy];

      v14 = GAXLogIntegrity();
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v18)
        {
          *buf = 0;
          v15 = "Purple buddy is frontmost. Let it finish";
          goto LABEL_17;
        }

LABEL_18:
        v19 = 0;
        v20 = 0;
        goto LABEL_37;
      }

      if (v18)
      {
        v29 = [v4 displayStringForOutcome:{objc_msgSend(v4, "mostRecentOutcome")}];
        *buf = 138543362;
        v47 = v29;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Enabling GAX now and restricting device. %{public}@", buf, 0xCu);
      }

      v20 = 2;
      v19 = 1;
LABEL_37:

      [(GAXBackboard *)self _transitionToMode:v20];
      v26 = self;
      v27 = v19;
LABEL_38:
      [(GAXBackboard *)v26 _updateRestrictedState:v27];
LABEL_43:
      [(GAXBackboard *)self _updateIsInitializingAndWasActiveBeforeReboot:0, v37];
      gaxStateAccessQueue = self->_gaxStateAccessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_18524;
      block[3] = &unk_4C958;
      block[4] = self;
      dispatch_sync(gaxStateAccessQueue, block);

      return;
    case 0xDuLL:
      v31 = [(GAXBackboard *)self appManager];
      [v31 monitorForPurpleBuddyDeath];

      [(GAXBackboard *)self _transitionToMode:0];
      goto LABEL_43;
    case 0xEuLL:
      v11 = GAXLogIntegrity();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v28 = "Waiting until system app access is enabled.";
      goto LABEL_41;
    case 0xFuLL:
      v11 = GAXLogIntegrity();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v28 = "Waiting until PreBoard finishes.";
      goto LABEL_41;
    case 0x10uLL:
      v11 = GAXLogIntegrity();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v28 = "Waiting until CheckerBoard finishes.";
      goto LABEL_41;
    case 0x14uLL:
      v32 = GAXLogIntegrity();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Disabling GAX until Lost Mode ends.", buf, 2u);
      }

      if (v5 == 3 && v42 == 2)
      {
        v33 = +[GAXSettings sharedInstance];
        v34 = [v33 activeAppID];

        v35 = +[GAXSettings sharedInstance];
        [v35 setSavedASAMAppIdForLostMode:v34];

        v36 = GAXLogIntegrity();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v34;
          _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Saving ASAM app for later: %@", buf, 0xCu);
        }
      }

      [(GAXBackboard *)self _transitionToMode:0 requireUserUnlock:0];
      goto LABEL_43;
    case 0x15uLL:
      v11 = GAXLogIntegrity();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v28 = "Waiting until SpringBoard server is ready.";
      goto LABEL_41;
    case 0x16uLL:
      v11 = GAXLogIntegrity();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_42;
      }

      *buf = 0;
      v28 = "Waiting until SpringBoard server is available.";
LABEL_41:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
LABEL_42:

      goto LABEL_43;
    default:
      goto LABEL_43;
  }
}

- (void)_launchSessionAppWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = GAXLogAppLaunching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Guided Access wants to launch application %@", buf, 0xCu);
  }

  if ([(GAXBackboard *)self wantsSingleAppMode])
  {
    v6 = [(GAXBackboard *)self appManager];
    v7 = [(GAXBackboard *)self profileManager];
    v8 = [v7 singleAppModeAppID];
    if ([v6 appWithIdentifierIsASessionApp:v8])
    {
      v9 = [(GAXBackboard *)self appManager];
      v10 = [v9 sessionAppBundleIdentifiers];

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_2B2C0(self, v11);
    }

    [(GAXBackboard *)self _updateSessionAppForSingleAppMode];
    v12 = GAXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(GAXBackboard *)self appManager];
      v14 = [v13 sessionAppBundleIdentifiers];
      *buf = 138543362;
      v23 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "After attempted recovery, session app bundle ids are %{public}@", buf, 0xCu);
    }
  }

LABEL_13:
  v15 = [(GAXBackboard *)self appLaunchGeneration];
  v16 = +[AXReplayer replayer];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1884C;
  v18[3] = &unk_4D708;
  v19 = v4;
  v20 = self;
  v21 = v15;
  v17 = v4;
  [v16 replayWithName:@"GAXAttemptAppRelaunch" attempts:40 interval:1 async:&_dispatch_main_q queue:v18 replayBlock:&stru_4D748 completion:0.5];
}

- (void)attemptAppRelaunchForAppWithIdentifier:(id)a3 withIntegrityVerifier:(id)a4
{
  v5 = a3;
  v6 = [(GAXBackboard *)self appManager];
  [v6 incrementRelaunchAttemptsForSessionAppWithIdentifier:v5];

  [(GAXBackboard *)self addReasonToBlockAllEvents:@"GAX verifying app relaunch"];
  v7 = [(GAXBackboard *)self eventProcessor];
  [v7 beginHandlingSystemEventsForReason:@"GAX Launching app"];

  v8 = GAXLogIntegrity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "All looks ok. Attempting to relaunch: (%{public}@)", &v9, 0xCu);
  }

  [(GAXBackboard *)self _launchSessionAppWithIdentifier:v5];
}

- (id)expectedSessionAppIdentifier
{
  if ([(GAXBackboard *)self wantsSingleAppMode])
  {
    v3 = [(GAXBackboard *)self profileManager];
    v4 = [v3 singleAppModeAppID];
  }

  else
  {
    v3 = [(GAXBackboard *)self appManager];
    v5 = [v3 sessionAppBundleIdentifiers];
    v4 = [v5 firstObject];
  }

  return v4;
}

- (BOOL)appLayoutIsMultiAppForIntegrityVerifier:(id)a3
{
  v3 = [(GAXBackboard *)self appManager];
  v4 = [v3 appLayoutIsMultiApp];

  return v4;
}

- (BOOL)shouldProceedWithVerificationForIntegrityVerifier:(id)a3
{
  if (([(GAXBackboard *)self isUnmanagedSelfLocked]|| _AXSGuidedAccessRequiresApplicationAccessibility()) && !AXSessionIsLoginSession())
  {
    return 1;
  }

  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Guided Access is loaded, but currently unneeded. Not continuing with verification", v5, 2u);
  }

  return 0;
}

- (BOOL)frontmostAppIsAcceptableForSessionAppWithIntegrityVerifier:(id)a3
{
  v4 = [(GAXBackboard *)self appManager];
  if ([v4 effectiveAppIsAcceptableForSessionApps])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GAXBackboard *)self profileManager];
    v7 = [(GAXBackboard *)self appManager];
    v8 = [v7 effectiveAppBundleIdentifier];
    v5 = [v6 appAllowlistActiveAndContainsAdditionalApp:v8];
  }

  return v5;
}

- (BOOL)sessionAppWithIdentifier:(id)a3 isRelaunchableForIntegrityVerifier:(id)a4
{
  v5 = a3;
  v6 = [(GAXBackboard *)self appManager];
  v7 = [v6 sessionAppIsHostedByTheSystemApp:v5];

  return v7 ^ 1;
}

- (BOOL)sessionAppIsPreferencesForIntegrityVerifier:(id)a3
{
  v3 = [(GAXBackboard *)self appManager];
  v4 = [v3 sessionAppsContainPreferences];

  return v4;
}

- (BOOL)sessionAppIsPurpleBuddyForIntegrityVerifier:(id)a3
{
  v3 = [(GAXBackboard *)self appManager];
  v4 = [v3 sessionAppsContainPurpleBuddy];

  return v4;
}

- (BOOL)sessionAppGAXClientDidCheckInForIntegrityVerifier:(id)a3
{
  v3 = [(GAXBackboard *)self appManager];
  v4 = [v3 sessionAppGAXClientDidCheckIn];

  return v4;
}

- (void)sessionAppIsBeingInstalledForIntegrityVerifier:(id)a3 sessionIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    sub_2B488();
  }

  v11 = v10;
  launchServiceAccessQueue = self->_launchServiceAccessQueue;
  if (!launchServiceAccessQueue)
  {
    v13 = dispatch_queue_create("accessibility.guidedaccess.launchservice.queue", 0);
    v14 = self->_launchServiceAccessQueue;
    self->_launchServiceAccessQueue = v13;

    launchServiceAccessQueue = self->_launchServiceAccessQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18EA8;
  block[3] = &unk_4D770;
  block[4] = self;
  v18 = v9;
  v19 = v11;
  v15 = v11;
  v16 = v9;
  dispatch_async(launchServiceAccessQueue, block);
}

- (BOOL)_appWithIdentifierIsBeingInstalled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [LSApplicationRecord enumeratorWithOptions:64];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = 0;
      v10 = *v19;
      *&v7 = 138543362;
      v17 = v7;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 installType])
          {
            v13 = [v12 bundleIdentifier];
            v14 = [v4 isEqualToString:v13];

            if (v14)
            {
              v15 = GAXLogCommon();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = v17;
                v23 = v4;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "App %{public}@ is being installed", buf, 0xCu);
              }

              v9 = 1;
              [(GAXBackboard *)self setIsApplicationBeingInstalled:1];
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)relaunchAttemptsForSessionAppWithIdentifier:(id)a3 forIntegrityVerifier:(id)a4
{
  v5 = a3;
  v6 = [(GAXBackboard *)self appManager];
  v7 = [v6 sessionAppRelaunchAttemptsForAppWithIdentifier:v5];

  return v7;
}

- (BOOL)isSystemAppAccessDisabledForIntegrityVerifier:(id)a3
{
  v3 = a3;
  v4 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([v4 safeIvarForKey:@"_lock"])
  {
    v10 = v4;
    AXPerformSafeBlock();
    v5 = v10;
  }

  else
  {
    v5 = GAXLogIntegrity();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_2B4B4();
    }
  }

  v6 = GAXLogIntegrity();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v12 + 24);
    *buf = 67109120;
    v16 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Is system app access enabled: %i", buf, 8u);
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return (v8 ^ 1) & 1;
}

- (BOOL)isPreBoardRunningForIntegrityVerifier:(id)a3
{
  v4 = a3;
  v5 = AXInPreboardScenario();
  if (v5)
  {
    v6 = [(GAXBackboard *)self preBoardDidFinishObserverToken];

    if (!v6)
    {
      v7 = GAXLogIntegrity();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "PreBoard is running. Observing when it finishes.", buf, 2u);
      }

      objc_initWeak(buf, self);
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = +[NSOperationQueue mainQueue];
      v10 = AXInPreBoardScenarioUpdatedNotification;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_195A0;
      v13[3] = &unk_4D7C0;
      objc_copyWeak(&v14, buf);
      v11 = [v8 addObserverForName:v10 object:0 queue:v9 usingBlock:v13];
      [(GAXBackboard *)self setPreBoardDidFinishObserverToken:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  return v5;
}

- (BOOL)isCheckerBoardRunningForIntegrityVerifier:(id)a3
{
  v4 = a3;
  v5 = AXInCheckerBoardScenario();
  if (v5)
  {
    v6 = [(GAXBackboard *)self checkerBoardDidFinishObserverToken];

    if (!v6)
    {
      v7 = GAXLogIntegrity();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "CheckerBoard is running. Observing when it finishes.", buf, 2u);
      }

      objc_initWeak(buf, self);
      v8 = +[NSNotificationCenter defaultCenter];
      v9 = +[NSOperationQueue mainQueue];
      v10 = AXInCheckerBoardScenarioUpdatedNotification;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_19794;
      v13[3] = &unk_4D7C0;
      objc_copyWeak(&v14, buf);
      v11 = [v8 addObserverForName:v10 object:0 queue:v9 usingBlock:v13];
      [(GAXBackboard *)self setCheckerBoardDidFinishObserverToken:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  return v5;
}

- (BOOL)hasMultipleSessionAppsForIntegrityVerifier:(id)a3
{
  v3 = [(GAXBackboard *)self appManager];
  v4 = [v3 sessionAppBundleIdentifiers];
  v5 = [v4 count] > 1;

  return v5;
}

- (void)eventProcessor:(id)a3 transitionToMode:(unsigned int)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_198A8;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)eventProcessor:(id)a3 showAlertWithType:(int)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1992C;
  v4[3] = &unk_4D618;
  v4[4] = self;
  v5 = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)eventProcessor:(id)a3 updateAssistiveTouchBootstrapPort:(unsigned int)a4
{
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_19A3C;
  v5[3] = &unk_4D618;
  v5[4] = self;
  v6 = a4;
  dispatch_sync(gaxStateAccessQueue, v5);
}

- (id)_accessIgnoredTouchRegions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_12C48;
  v10 = sub_12C58;
  v11 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_19B9C;
  v5[3] = &unk_4D4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)eventProcessor:(id)a3 shouldAllowTripleClickSheet:(BOOL *)a4 tripleClickAlertIsVisible:(BOOL *)a5
{
  v9 = a3;
  if (a5)
  {
    v8 = [AXSafeClassFromString() safeValueForKey:@"controller"];
    *a5 = [v8 safeBoolForKey:@"_isAlertVisible"];
  }

  if (a4)
  {
    *a4 = [(GAXBackboard *)self allowsTripleClickSheet];
  }
}

- (void)monitorForTouchID
{
  v2 = [(GAXBackboard *)self userInterfaceClient];
  [v2 sendAsynchronousMessage:0 withIdentifier:32 targetAccessQueue:0 completion:0];
}

- (void)_updateIsInitializingAndWasActiveBeforeReboot:(BOOL)a3
{
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_19FB4;
  block[3] = &unk_4D4B0;
  block[4] = self;
  block[5] = &v22;
  dispatch_sync(gaxStateAccessQueue, block);
  if (*(v23 + 24) != v3)
  {
    v6 = self->_gaxStateAccessQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_19FCC;
    v19[3] = &unk_4D550;
    v19[4] = self;
    v20 = v3;
    dispatch_sync(v6, v19);
    if (v3)
    {
      v7 = GAXLogIntegrity();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Will Begin blocking HID and System events", v18, 2u);
      }

      v8 = [(GAXBackboard *)self eventProcessor];
      [v8 beginHandlingSystemEventsForReason:@"GAX Initializing"];

      v9 = [(GAXBackboard *)self eventProcessor];
      [v9 raiseSystemEventTapPriorityToMaximum];

      v10 = [(GAXBackboard *)self eventProcessor];
      [v10 beginBlockingHID];

      v11 = [(GAXBackboard *)self eventProcessor];
      [v11 beginHandlingHIDEventsForReason:@"GAX Initializing"];

      v12 = [(GAXBackboard *)self eventProcessor];
      [v12 raiseHIDEventTapPriorityToMaximum];
    }

    else
    {
      v13 = GAXLogIntegrity();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Will End blocking HID and System events", v18, 2u);
      }

      v14 = [(GAXBackboard *)self eventProcessor];
      [v14 restoreSystemEventTapPriorityToDefault];

      v15 = [(GAXBackboard *)self eventProcessor];
      [v15 endHandlingSystemEventsForReason:@"GAX Initializing"];

      v16 = [(GAXBackboard *)self eventProcessor];
      [v16 restoreHIDEventTapPriorityToDefault];

      v17 = [(GAXBackboard *)self eventProcessor];
      [v17 endHandlingHIDEventsForReason:@"GAX Initializing"];

      v12 = [(GAXBackboard *)self eventProcessor];
      [v12 endBlockingHID];
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)_resetOverrideTouchReasons
{
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A070;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_sync(gaxStateAccessQueue, block);
}

- (void)_handleToggleServerModeNotification:(id)a3
{
  v4 = GAXLogCommon();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GuidedAccessSessionStart", &unk_4537A, v5, 2u);
  }

  [(GAXBackboard *)self _handleServerModeChangeRequestWithType:1];
}

- (void)_handleAssistiveTouchEnabledNotification:(id)a3
{
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A218;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_sync(gaxStateAccessQueue, block);
}

- (void)_handleTelephonyCallStatusChangedNotification:(id)a3
{
  v4 = a3;
  if ([(GAXBackboard *)self isActive])
  {
    v5 = [v4 object];
    v6 = [v5 status];

    gaxStateAccessQueue = self->_gaxStateAccessQueue;
    if (v6 - 2 > 2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1A3B4;
      block[3] = &unk_4C958;
      block[4] = self;
      v8 = block;
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1A3A0;
      v10[3] = &unk_4C958;
      v10[4] = self;
      v8 = v10;
    }
  }

  else
  {
    gaxStateAccessQueue = self->_gaxStateAccessQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1A38C;
    v11[3] = &unk_4C958;
    v11[4] = self;
    v8 = v11;
  }

  dispatch_sync(gaxStateAccessQueue, v8);
}

- (void)_transitionToMode:(unsigned int)a3 requireUserUnlock:(BOOL)a4 assumeUserInterfaceConnectionSevered:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v148[0] = _NSConcreteStackBlock;
  v148[1] = 3221225472;
  v148[2] = sub_1B6EC;
  v148[3] = &unk_4D830;
  v148[4] = self;
  v150 = a3;
  v151 = a4;
  v152 = a5;
  v10 = a6;
  v149 = v10;
  v11 = objc_retainBlock(v148);
  v12 = [(GAXBackboard *)self appLaunchFailureDetectionTimer];
  [v12 cancel];

  v13 = [(GAXBackboard *)self settings];
  v144 = 0;
  v145 = &v144;
  v146 = 0x2020000000;
  v147 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1B7C8;
  block[3] = &unk_4D4B0;
  block[5] = &v144;
  block[4] = self;
  dispatch_sync(gaxStateAccessQueue, block);
  v15 = GAXLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v145 + 6);
    v17 = [(GAXBackboard *)self isLocked];
    *buf = 134219008;
    v157 = v16;
    v158 = 2048;
    v159 = a3;
    v160 = 1024;
    v161 = v7;
    v162 = 1024;
    v163 = v6;
    v164 = 1024;
    v165 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Transition from %lu to %lu (requireUserUnlock: %i, assumeUserInterfaceConnectionSevered: %i, isLocked: %i)", buf, 0x28u);
  }

  if (*(v145 + 6) == a3)
  {
    if (v10)
    {
      v94 = v10;
      AXPerformBlockAsynchronouslyOnMainThread();
    }

    goto LABEL_46;
  }

  if ([(GAXBackboard *)self isLocked]&& v7)
  {
    [(GAXBackboard *)self _remainingLockoutDuration];
    v19 = v18;
    v20 = +[AXSpringBoardServer server];
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = sub_1B7DC;
    v139[3] = &unk_4D858;
    v141 = v19;
    v139[4] = self;
    v142 = a3;
    v140 = v10;
    [v20 isSystemAppFrontmost:v139];

LABEL_46:
    v59 = GAXLogCommon();
    if (os_signpost_enabled(v59))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v59, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GuidedAccessSessionStart", &unk_4537A, buf, 2u);
    }

    goto LABEL_49;
  }

  v135[0] = _NSConcreteStackBlock;
  v135[1] = 3221225472;
  v135[2] = sub_1BA70;
  v135[3] = &unk_4D880;
  v137 = a3;
  v135[4] = self;
  v138 = v6;
  v21 = v10;
  v136 = v21;
  v93 = objc_retainBlock(v135);
  [(GAXBackboard *)self setPasscodeEntryFailedCount:0];
  v22 = +[AXSpringBoardServer server];
  -[GAXBackboard setActiveInterfaceOrientation:](self, "setActiveInterfaceOrientation:", [v22 activeInterfaceOrientation]);

  [(GAXBackboard *)self _clearLiveCaptionsHistoryForGuidedAccess];
  if (a3 == 1)
  {
    v26 = [(GAXBackboard *)self appManager];
    [v26 resumeEffectiveApp];
    v27 = [v26 effectiveAppBundleIdentifier];
    v125[0] = _NSConcreteStackBlock;
    v125[1] = 3221225472;
    v125[2] = sub_1BDE4;
    v125[3] = &unk_4D920;
    v130 = v21;
    v28 = v27;
    v126 = v28;
    v131 = v11;
    v29 = v26;
    v127 = v29;
    v128 = self;
    v133 = &v144;
    v129 = v13;
    v134 = 1;
    v132 = v93;
    v30 = objc_retainBlock(v125);
    if ([v29 effectiveAppIsHostedByTheSystemApp])
    {
      v31 = objc_alloc_init(GAXSpringboardClientStatus);
      v119 = _NSConcreteStackBlock;
      v120 = 3221225472;
      v121 = sub_1C6D4;
      v122 = &unk_4D948;
      v124 = v30;
      v32 = v31;
      v123 = v32;
      AXPerformBlockAsynchronouslyOnMainThread();
    }

    else
    {
      v32 = +[AXSpringBoardServer server];
      [(GAXSpringboardClientStatus *)v32 gaxPrepareForTransitionToWorkspaceWithAppID:v28 completion:v30];
    }

LABEL_45:
    goto LABEL_46;
  }

  if (a3 != 2)
  {
    v33 = [(GAXBackboard *)self unmanagedASAMFailsafeTimer];
    [v33 cancel];

    [(GAXBackboard *)self _removeUnmanagedSelfLockRestrictions];
    v34 = +[GAXSettings sharedInstance];
    [v34 setSelfLockUnmanaged:0];

    v35 = [(GAXBackboard *)self appManager];
    [v35 resumeEffectiveApp];

    v36 = [(GAXBackboard *)self appManager];
    v37 = [v36 effectiveAppWasPlayingMedia];

    if (v37)
    {
      v38 = +[AXSpringBoardServer server];
      v39 = [(GAXBackboard *)self appManager];
      v40 = [v39 effectiveAppBundleIdentifier];
      [v38 resumeMediaForApp:v40];
    }

    v41 = [(GAXBackboard *)self profileManager];
    [v13 setActiveAppID:0];
    v42 = [(GAXBackboard *)self timeRestrictionManager];
    [v42 cancel];

    v43 = GAXLogCommon();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "self.locked = NO (server mode disabled)", buf, 2u);
    }

    [(GAXBackboard *)self setLocked:0];
    if (([v41 isSingleAppMode] & 1) != 0 || (buf[0] = 0, -[GAXBackboard _updateSessionAppWithIdentifier:notifyUserInterfaceServer:sessionAppIdentifierDidChange:](self, "_updateSessionAppWithIdentifier:notifyUserInterfaceServer:sessionAppIdentifierDidChange:", 0, 0, buf), buf[0] != 1))
    {
      v44 = 0;
    }

    else
    {
      v44 = [NSNumber numberWithBool:0];
    }

    [(GAXBackboard *)self addReasonToBlockAllEvents:@"GAX transitioning to application"];
    if (v6)
    {
      [(GAXBackboard *)self _didFinishTransitioningFromWorkspaceToApplication];
    }

    else
    {
      v47 = [(GAXBackboard *)self userInterfaceClient];
      v48 = [NSDictionary alloc];
      v49 = [NSNumber numberWithBool:1];
      if (v44)
      {
        v153 = v44;
        v50 = [NSArray arrayWithObjects:&v153 count:1];
      }

      else
      {
        v50 = 0;
      }

      v56 = [v48 initWithObjectsAndKeys:{v49, @"should restore telephony", v50, @"session application identifiers", 0}];
      if (v44)
      {
      }

      v57 = +[AXAccessQueue mainAccessQueue];
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_1CC00;
      v97[3] = &unk_4D9C0;
      v97[4] = self;
      v98 = v41;
      v58 = v47;
      v99 = v58;
      [v58 sendAsynchronousMessage:v56 withIdentifier:12 targetAccessQueue:v57 completion:v97];
    }

    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_1CDF0;
    v96[3] = &unk_4C958;
    v96[4] = self;
    dispatch_async(&_dispatch_main_q, v96);
    v95 = v93;
    AXPerformBlockAsynchronouslyOnMainThread();

    goto LABEL_45;
  }

  v23 = [(GAXBackboard *)self appManager];
  v24 = [v23 effectiveAppIsAcceptableForSessionApps];

  if ((v24 & 1) == 0)
  {
    v45 = GAXLogCommon();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(GAXBackboard *)self appManager];
      *buf = 138543362;
      v157 = v46;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "Session app is not foreground running. Disabling Guided Access: %{public}@", buf, 0xCu);
    }

    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_1C6E8;
    v117[3] = &unk_4D970;
    v117[4] = self;
    v118 = v21;
    dispatch_async(&_dispatch_main_q, v117);

    goto LABEL_45;
  }

  if ([(GAXBackboard *)self activeInterfaceOrientation])
  {
    if (v7 && [(GAXBackboard *)self _isPasscodeStale])
    {
      [(GAXBackboard *)self setDesiredModeAfterSuccessfulPasscodeEntry:2];
      v25 = +[AXSpringBoardServer server];
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_1C748;
      v116[3] = &unk_4D028;
      v116[4] = self;
      [v25 gaxGetNewPasscodeLengthWithCompletion:v116];

      if (v21)
      {
        v111 = _NSConcreteStackBlock;
        v112 = 3221225472;
        v113 = sub_1C820;
        v114 = &unk_4CFB0;
        v115 = v21;
        AXPerformBlockAsynchronouslyOnMainThread();
      }

      goto LABEL_45;
    }

    v86 = [(GAXBackboard *)self appManager];
    v92 = [(GAXBackboard *)self profileManager];
    v51 = [v92 configuration];
    if (v51 == 2)
    {
      v52 = 0;
    }

    else
    {
      v24 = [v86 sessionAppBundleIdentifiers];
      v52 = [v24 firstObject];
    }

    [v13 setActiveAppID:v52];
    if (v51 != 2)
    {
    }

    v60 = +[NSDate date];
    [v13 setLastActivationDate:v60];

    if ([v92 isUserMode])
    {
      v61 = [v13 userConfiguredAppIDs];
      if (!v61)
      {
        v64 = [(GAXBackboard *)self appManager];
        v65 = [v64 effectiveAppBundleIdentifier];
        v66 = [NSArray arrayWithObject:v65];
        [v13 setUserConfiguredAppIDs:v66];

        goto LABEL_60;
      }

      v62 = [v86 effectiveAppBundleIdentifier];
      v63 = [v61 containsObject:v62];

      if ((v63 & 1) == 0)
      {
        v64 = [v86 effectiveAppBundleIdentifier];
        v65 = [v61 arrayByAddingObject:v64];
        [v13 setUserConfiguredAppIDs:v65];
LABEL_60:
      }
    }

    else
    {
      if (![v92 isSingleAppMode])
      {
LABEL_62:
        v67 = GAXLogCommon();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = [(GAXBackboard *)self profileManager];
          *buf = 138412546;
          v157 = self;
          v158 = 2112;
          v159 = v68;
          _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "\n**************************************\nActivating Guided Access.\nServer: %@\nProfile: %@\n**************************************\n", buf, 0x16u);
        }

        [(GAXBackboard *)self addReasonToBlockAllEvents:@"GAX transitioning to session"];
        if (![(GAXBackboard *)self activeInterfaceOrientation])
        {
          _AXAssert();
        }

        v69 = [(GAXBackboard *)self activeInterfaceOrientation];
        v70 = [(GAXBackboard *)self profileManager];
        v90 = [v70 ignoredTouchRegionsForOrientation:v69];
        v85 = v69;

        v71 = [(GAXBackboard *)self userInterfaceClient];
        v89 = [NSNumber numberWithUnsignedInteger:2];
        v84 = v71;
        v88 = [(GAXBackboard *)self profileManager];
        v87 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v88 configuration]);
        v155[0] = v87;
        v72 = [(GAXBackboard *)self profileManager];
        v73 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v72 timeRestrictionsEnabled]);
        v155[1] = v73;
        v74 = [(GAXBackboard *)self profileManager];
        v75 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v74 appTimeoutDuration]);
        v155[2] = v75;
        v76 = [NSArray arrayWithObjects:v155 count:3];
        v154[0] = @"profile configuration";
        v154[1] = @"time restrictions enabled";
        v154[2] = @"time restriction duration";
        v77 = [NSArray arrayWithObjects:v154 count:3];
        v91 = [NSMutableDictionary dictionaryWithObjects:v76 forKeys:v77];

        if (v89)
        {
          [v91 setObject:v89 forKeyedSubscript:@"server mode for disabling telephony"];
        }

        if (v90)
        {
          [v91 setObject:v90 forKeyedSubscript:@"interest area paths for storage"];
        }

        v78 = +[AXAccessQueue mainAccessQueue];
        v105[0] = _NSConcreteStackBlock;
        v105[1] = 3221225472;
        v105[2] = sub_1C834;
        v105[3] = &unk_4D998;
        v110 = v85;
        v105[4] = self;
        v109 = &v144;
        v79 = v86;
        v106 = v79;
        v80 = v92;
        v107 = v80;
        v81 = v84;
        v108 = v81;
        [v81 sendAsynchronousMessage:v91 withIdentifier:10 targetAccessQueue:v78 completion:v105];

        v82 = GAXLogCommon();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEFAULT, "self.locked = YES", buf, 2u);
        }

        [(GAXBackboard *)self setLocked:1];
        [(GAXBackboard *)self setWasEverActiveInCurrentFrontmostApp:1];
        v83 = +[AXSettings sharedInstance];
        [v83 setGuidedAccessUsageCount:{objc_msgSend(v83, "guidedAccessUsageCount") + 1}];

        v100 = _NSConcreteStackBlock;
        v101 = 3221225472;
        v102 = sub_1CBEC;
        v103 = &unk_4CFB0;
        v104 = v93;
        AXPerformBlockAsynchronouslyOnMainThread();

        goto LABEL_45;
      }

      v61 = [(GAXBackboard *)self axFeatureManager];
      [v61 overrideAccessibiltyFeaturesWithFeatureSet:{objc_msgSend(v92, "profileAccessibilityFeatureSet")}];
    }

    goto LABEL_62;
  }

  v53 = GAXLogCommon();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = +[NSDate date];
    *buf = 138543362;
    v157 = v54;
    _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "Active interface orientation was unknown. trying to transition gax again in .25. %{public}@", buf, 0xCu);
  }

  v55 = +[AXSpringBoardServer server];
  -[GAXBackboard setActiveInterfaceOrientation:](self, "setActiveInterfaceOrientation:", [v55 activeInterfaceOrientation]);

LABEL_49:
  _Block_object_dispose(&v144, 8);
}

- (id)_errorMessageForAvailability:(unint64_t)a3
{
  v3 = 0;
  switch(a3)
  {
    case 0uLL:
      v3 = @"Guided Access Ready";
      break;
    case 1uLL:
      v3 = [NSString stringWithFormat:@"Allowing all touch by override."];
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = sub_12C48;
      v13 = sub_12C58;
      v14 = 0;
      gaxStateAccessQueue = self->_gaxStateAccessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1D094;
      block[3] = &unk_4D9E8;
      block[4] = self;
      block[5] = &v9;
      dispatch_sync(gaxStateAccessQueue, block);
      if (v10[5])
      {
        v6 = [(__CFString *)v3 stringByAppendingFormat:@"  %@", v10[5]];

        v3 = v6;
      }

      _Block_object_dispose(&v9, 8);

      break;
    case 2uLL:
      v3 = [NSString stringWithFormat:@"Ignoring all touch by override"];
      break;
    case 3uLL:
      v3 = @"Device is busy syncing, resetting, restoring, etc.";
      break;
    case 4uLL:
      v3 = @"Transition from Workspace to Active not allowed from external request";
      break;
    case 5uLL:
      v3 = @"Profile does not allow exit";
      break;
    case 6uLL:
      v3 = @"From External Request. Do nothing as GAX is already active";
      break;
    case 7uLL:
      v3 = @"SpringBoard is frontmost";
      break;
    case 8uLL:
      v3 = @"Purple Buddy is Frontmost";
      break;
    case 9uLL:
      v3 = @"Preferences is Frontmost";
      break;
    case 0xAuLL:
      v3 = @"Multiple Apps Not Supported";
      break;
    case 0xBuLL:
      v3 = @"No Passcode is set";
      break;
    case 0xDuLL:
      v3 = @"Transitioning";
      break;
    case 0xEuLL:
      v3 = @"A system gesture is active";
      break;
    case 0xFuLL:
      v3 = @"Other";
      break;
    default:
      break;
  }

  return v3;
}

- (BOOL)_isAllowingAllTouchByOverride
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1D18C;
  v5[3] = &unk_4D4B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isIgnoringAllTouchByOverride
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1D254;
  v5[3] = &unk_4D9E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)_availabilityForRequestType:(int)a3 springboardParameters:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"isSpringBoardFrontmost"];
    v8 = [v7 BOOLValue];

    v9 = [v6 objectForKeyedSubscript:@"isAppSwitcherVisible"];
    v10 = [v9 BOOLValue];

    v11 = [v6 objectForKeyedSubscript:@"isSyncingRestoringResettingOrUpdating"];
    v12 = [v11 BOOLValue];

    v13 = [v6 objectForKeyedSubscript:@"isSiriVisible"];
    v14 = [v13 BOOLValue];

    v15 = [v6 objectForKeyedSubscript:&off_51830];
    v16 = [v15 BOOLValue];
  }

  else
  {
    _AXAssert();
    v14 = 0;
    v16 = 0;
    v10 = 0;
    v12 = 0;
    v8 = 0;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x4010000000;
  v41 = &unk_46B59;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1D820;
  block[3] = &unk_4D4B0;
  block[4] = self;
  block[5] = &v38;
  dispatch_sync(gaxStateAccessQueue, block);
  v18 = [(GAXBackboard *)self appManager];
  v19 = [v18 effectiveAppBundleIdentifier];

  if (v19 || *(v39 + 8) == 2)
  {
    if ([(GAXBackboard *)self _isAllowingAllTouchByOverride])
    {
      v20 = 1;
    }

    else if ([(GAXBackboard *)self _isIgnoringAllTouchByOverride])
    {
      v20 = 2;
    }

    else if ((v8 | v10 | v14))
    {
      if (v8 && *(v39 + 8) == 2)
      {
        v20 = 0;
      }

      else
      {
        v20 = 7;
      }
    }

    else if (v12)
    {
      v20 = 3;
    }

    else
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v21 = self->_gaxStateAccessQueue;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1D83C;
      v32[3] = &unk_4D4B0;
      v32[4] = self;
      v32[5] = &v33;
      dispatch_sync(v21, v32);
      v22 = *(v34 + 6);
      if (v22 == 2)
      {
        if (a3 == 2)
        {
          v20 = 6;
        }

        else
        {
          v24 = [(GAXBackboard *)self profileManager];
          v25 = [v24 shouldAllowExit];

          if (v25)
          {
            v20 = 0;
          }

          else
          {
            v20 = 5;
          }
        }
      }

      else if (v22 == 1)
      {
        v20 = 4 * (a3 == 2);
      }

      else
      {
        v23 = [(GAXBackboard *)self appManager];
        if ([v23 effectiveAppIsPurpleBuddy])
        {
          v20 = 8;
        }

        else
        {
          v26 = [v23 effectiveAppIsPreferences];
          v27 = v26 | v16;
          if (v26)
          {
            v20 = 9;
          }

          else
          {
            v20 = 14;
          }

          if ((v27 & 1) == 0)
          {
            if (a3 == 2 && ![(GAXBackboard *)self _hasPasscode])
            {
              v20 = 11;
            }

            else
            {
              v28 = [(GAXBackboard *)self appManager];
              v29 = [v28 appLayoutIsMultiApp];

              if (v29)
              {
                v20 = 10;
              }

              else
              {
                v20 = 0;
              }
            }
          }
        }
      }

      _Block_object_dispose(&v33, 8);
    }
  }

  else
  {
    v20 = 13;
  }

  _Block_object_dispose(&v38, 8);
  return v20;
}

- (BOOL)_shouldAllowDirectInactiveToActiveTransition
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 guidedAccessDisallowDirectInactiveToActiveTransition];

  if (v4)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_2B5AC();
    }

    return 0;
  }

  else
  {
    v7 = [(GAXBackboard *)self profileManager];
    if ([v7 isAppSelfLockMode])
    {
      v6 = 1;
    }

    else if (-[GAXBackboard _isPasscodeStale](self, "_isPasscodeStale") || ![v7 isUserMode])
    {
      v6 = 0;
    }

    else
    {
      v8 = [(GAXBackboard *)self appManager];
      v9 = [v8 effectiveAppBundleIdentifier];

      v10 = [(GAXBackboard *)self settings];
      v11 = [v10 userConfiguredAppIDs];

      v6 = [v11 containsObject:v9];
    }
  }

  return v6;
}

- (id)_availabilitySpringboardParametersFromSystemAppInfoQuery:(id)a3
{
  v10[0] = @"isSpringBoardFrontmost";
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:&off_51848];
  v11[0] = v4;
  v10[1] = @"isSyncingRestoringResettingOrUpdating";
  v5 = [v3 objectForKeyedSubscript:&off_51860];
  v11[1] = v5;
  v10[2] = @"isAppSwitcherVisible";
  v6 = [v3 objectForKeyedSubscript:&off_51878];
  v11[2] = v6;
  v10[3] = @"isSiriVisible";
  v7 = [v3 objectForKeyedSubscript:&off_51890];

  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

- (void)_didFinishTransitioningFromWorkspaceToSession
{
  if ([(GAXBackboard *)self _previousModeIgnoringWorkspace:1]== 2)
  {
    [(GAXBackboard *)self _applyChangedStatesForRestrictions];
  }

  else
  {
    [(GAXBackboard *)self _applyDeniedStatesForRestrictions];
  }

  v19 = [(GAXBackboard *)self appManager];
  v3 = +[AXSpringBoardServer server];
  v4 = [v19 effectiveAppBundleIdentifier];
  [v3 resumeMediaForApp:v4];

  [v19 resetRelaunchAttempts];
  [(GAXBackboard *)self removeReasonToBlockAllEvents:@"GAX transitioning to session"];
  v5 = +[AXSpringBoardServer server];
  [v5 gaxEndRequiringWallpaper];

  v6 = [(GAXBackboard *)self profileManager];
  if ([v6 isSingleAppMode])
  {

LABEL_7:
    v9 = [(GAXBackboard *)self profileManager];
    v10 = [v9 isSingleAppMode];

    if (v10)
    {
      v11 = @"Guided Access is locked in SAM";
    }

    else
    {
      v12 = [(GAXBackboard *)self profileManager];
      v13 = [v12 isAppSelfLockMode];

      if (v13)
      {
        v11 = @"Guided Access is locked in ASAM";
      }

      else
      {
        v11 = @"unknown reason";
      }
    }

    v14 = +[AXSpringBoardServer server];
    [v14 gaxDisconnectAllCalls];

    v15 = +[AXSpringBoardServer server];
    v16 = [(GAXBackboard *)self appManager];
    v17 = [v16 sessionAllowedBundleIdentifiers];
    [v15 gaxTerminateRunningApplicationsOtherThan:v17 forReason:v11];

    v18 = +[AXSpringBoardServer server];
    [v18 gaxPreventPotentialAppLaunches];

    goto LABEL_13;
  }

  v7 = [(GAXBackboard *)self profileManager];
  v8 = [v7 isAppSelfLockMode];

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_13:
}

- (void)_didFinishTransitioningFromWorkspaceToApplication
{
  if ([(GAXBackboard *)self _previousModeIgnoringWorkspace:1]== 2)
  {
    [(GAXBackboard *)self _applyAllowedStatesForRestrictions];
  }

  else
  {
    [(GAXBackboard *)self _clearChangedStatesForRestrictions];
  }

  [(GAXBackboard *)self removeReasonToBlockAllEvents:@"GAX transitioning to application"];
  v3 = +[AXSpringBoardServer server];
  [v3 gaxEndRequiringWallpaper];
}

- (double)_remainingLockoutDuration
{
  if ([(GAXBackboard *)self _isRunningInStoreDemoMode])
  {
    return 0.0;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  [(GAXBackboard *)self lastLockoutStartedTimeInterval];
  v7 = v6;
  v8 = [(GAXBackboard *)self passcodeEntryFailedCount];
  v9 = 180.0;
  if (v8 == 2)
  {
    v9 = 60.0;
  }

  if (v8 < 2)
  {
    v9 = 10.0;
  }

  v10 = v7 - v5 + v9;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  return ceil(v10);
}

- (void)applyUnmanagedSelfLockStaticRestrictionsWithProfileManager:(id)a3
{
  v3 = [(GAXBackboard *)self appManager];
  [v3 effectiveAppRestrictionWithIdentifier:@"GAXProfileAllowsWebTextDefine" didChangeState:1];
}

- (void)removeUnmanagedSelfLockStaticRestrictionsWithProfileManager:(id)a3
{
  v3 = [(GAXBackboard *)self appManager];
  [v3 effectiveAppRestrictionWithIdentifier:@"GAXProfileAllowsWebTextDefine" didChangeState:0];
}

- (BOOL)isSelfLockedToAppWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2B5E0();
  }

  if ([(GAXBackboard *)self isActive])
  {
    v6 = +[GAXSettings sharedInstance];
    if ([v6 isActiveAppSelfLocked])
    {
      v7 = [v6 activeAppID];
      v8 = [v7 isEqualToString:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isUnmanagedSelfLocked
{
  v2 = +[GAXSettings sharedInstance];
  if ([v2 isActiveAppSelfLocked])
  {
    v3 = [v2 selfLockUnmanaged];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)processWithAuditTokenIsEntitledForUnmanagedASAM:(id *)a3
{
  v3 = *&a3->var0[4];
  *v7.val = *a3->var0;
  *&v7.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v7);
  if (GAXSecTaskHasBooleanEntitlement(v4, kAXAACLegacyEntitlement))
  {
    HasBooleanEntitlement = 1;
    if (!v4)
    {
      return HasBooleanEntitlement;
    }

    goto LABEL_5;
  }

  HasBooleanEntitlement = GAXSecTaskHasBooleanEntitlement(v4, kAXAACEntitlement);
  if (v4)
  {
LABEL_5:
    CFRelease(v4);
  }

  return HasBooleanEntitlement;
}

- (BOOL)processWithAuditTokenIsEntitledForInternalASAM:(id *)a3
{
  v3 = *&a3->var0[4];
  *v7.val = *a3->var0;
  *&v7.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v7);
  HasBooleanEntitlement = GAXSecTaskHasBooleanEntitlement(v4, kAXInternalASAMEntitlement);
  if (v4)
  {
    CFRelease(v4);
  }

  return HasBooleanEntitlement;
}

- (void)_showUnmanagedASAMBannerWithType:(int)a3
{
  v5 = [(GAXBackboard *)self profileManager];
  v6 = [v5 shouldShowUserConfirmationPromptsAndBanners];

  v7 = GAXLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Profile configuration requires ASAM to operate with user prompts and banners: showing ASAM text banner", buf, 2u);
    }

    v7 = +[AXSpringBoardServer server];
    v9 = [(GAXBackboard *)self appManager];
    v10 = [v9 effectiveAppBundleIdentifier];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1E7B0;
    v11[3] = &unk_4DA38;
    v11[4] = self;
    v12 = a3;
    [v7 gaxGetDisplayNameForBundleId:v10 completion:v11];
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Profile configuration allows for operating ASAM without user prompts and banners: not showing ASAM text banner", buf, 2u);
  }
}

- (void)userConfirmUnmanagedASAMForAppWithBundleID:(id)a3 requireConfirmation:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = GAXLogCommon();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Profile configuration requires ASAM to operate with user prompts and banners: showing ASAM confirmation prompt", buf, 2u);
    }

    v12 = +[AXSpringBoardServer server];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1E9B8;
    v13[3] = &unk_4DA88;
    v14 = v8;
    v15 = self;
    v16 = v9;
    [v12 gaxGetDisplayNameForBundleId:v14 completion:v13];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Profile configuration allows for operating ASAM without user prompts and banners: not showing ASAM confirmation prompt", buf, 2u);
    }

    (*(v9 + 2))(v9, 1);
  }
}

- (BOOL)appWithBundleIdentifier:(id)a3 auditToken:(id *)a4 isAuthorizedForASAMStyle:(int64_t)a5
{
  v9 = a3;
  if (a5 > 1)
  {
    if (a5 == 3)
    {
      v14 = *&a4->var0[4];
      v17 = *a4->var0;
      v18 = v14;
      v11 = [(GAXBackboard *)self processWithAuditTokenIsEntitledForInternalASAM:&v17];
      goto LABEL_11;
    }

    if (a5 == 2)
    {
      v12 = [(GAXBackboard *)self profileManager];
      if ([v12 isAppPrivilagedToSelfLock:v9])
      {
        v5 = 1;
      }

      else
      {
        v15 = *&a4->var0[4];
        v17 = *a4->var0;
        v18 = v15;
        v5 = [(GAXBackboard *)self processWithAuditTokenIsEntitledForUnmanagedASAM:&v17];
      }
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
      v10 = *&a4->var0[4];
      v17 = *a4->var0;
      v18 = v10;
      v11 = [(GAXBackboard *)self processWithAuditTokenIsEntitledForUnmanagedASAM:&v17];
LABEL_11:
      v5 = v11;
    }
  }

  else
  {
    v13 = [(GAXBackboard *)self profileManager];
    v5 = [v13 isAppPrivilagedToSelfLock:v9];
  }

  return v5 & 1;
}

- (int64_t)effectiveASAMStyleForAppWithBundleIdentifier:(id)a3 auditToken:(id *)a4 desiredStyle:(int64_t)a5
{
  v5 = a5;
  if (a5 == 2)
  {
    v7 = a3;
    v8 = [(GAXBackboard *)self profileManager];
    v9 = [v8 isAppPrivilagedToSelfLock:v7];

    v5 = v9 ^ 1;
  }

  return v5;
}

- (id)asamConfigurationDictionaryForBackboardServer:(id)a3
{
  v4 = +[GAXSettings sharedInstance];
  v5 = [v4 isActiveAppSelfLocked];

  if (v5)
  {
    v6 = [NSNumber numberWithInteger:[(GAXBackboard *)self effectiveASAMStyle]];
    v7 = [NSMutableDictionary dictionaryWithObject:v6 forKey:&off_518A8];

    v8 = [(GAXBackboard *)self profileManager];
    v9 = [v8 unmanagedSelfLockPropertiesMap];

    if (v9)
    {
      v10 = [(GAXBackboard *)self profileManager];
      v11 = [v10 unmanagedSelfLockPropertiesMap];
      [v7 setObject:v11 forKeyedSubscript:&off_518C0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setEnabled:(BOOL)a3 fromAppWithIdentifier:(id)a4 withAuditToken:(id *)a5 configuration:(id)a6 completion:(id)a7
{
  v10 = a3;
  v43 = a4;
  v12 = a6;
  v13 = a7;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x2020000000;
  v82[3] = 0;
  v14 = [(GAXBackboard *)self profileManager];
  v15 = [v12 objectForKeyedSubscript:&off_518C0];
  v16 = [v15 objectForKey:@"GAXProfileShowsUserConfirmationPromptsAndBanners"];

  if (v16)
  {
    v17 = [v15 objectForKey:@"GAXProfileShowsUserConfirmationPromptsAndBanners"];
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = 1;
  }

  if (![(GAXBackboard *)self checkingASAMValidity])
  {
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 2;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 2;
    v20 = objc_retainBlock(v13);
    objc_initWeak(&location, self);
    v21 = [(GAXBackboard *)self eventProcessor];
    [v21 cancelCurrentTouches];

    v22 = [AXAssertion assertionWithType:AXAssertionTypeDisableSystemGestures identifier:@"GAX-ASAM-BB"];
    [(GAXBackboard *)self setDisableSystemGesturesForASAMStartAssertion:v22];

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1F590;
    v68[3] = &unk_4DAD8;
    objc_copyWeak(&v71, &location);
    v72 = v10;
    v68[4] = self;
    v70 = &v74;
    v41 = v20;
    v69 = v41;
    v23 = objc_retainBlock(v68);

    [(GAXBackboard *)self setCheckingASAMValidity:1];
    if (!v10)
    {
      v34 = 0;
      if (![(GAXBackboard *)self isSelfLockedToAppWithIdentifier:v43, v41])
      {
        *(v84 + 6) = 3;
      }

      goto LABEL_19;
    }

    v24 = [v12 objectForKeyedSubscript:{&off_518A8, v41}];
    v25 = v24;
    if (!v24)
    {
      v24 = &off_518D8;
    }

    v26 = [v24 integerValue];
    v79[3] = v26;

    v27 = v79[3];
    v28 = *&a5->var0[4];
    v66 = *a5->var0;
    v67 = v28;
    v29 = [(GAXBackboard *)self effectiveASAMStyleForAppWithBundleIdentifier:v43 auditToken:&v66 desiredStyle:v27];
    v75[3] = v29;
    v30 = [(GAXBackboard *)self appManager];
    v31 = [v30 effectiveAppBundleIdentifier];

    v32 = v75[3];
    v33 = *&a5->var0[4];
    v66 = *a5->var0;
    v67 = v33;
    v34 = [(GAXBackboard *)self appWithBundleIdentifier:v43 auditToken:&v66 isAuthorizedForASAMStyle:v32];
    if (v34)
    {
      if ([v31 isEqualToString:v43])
      {
LABEL_18:

LABEL_19:
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1F75C;
        v50[3] = &unk_4DBF0;
        v63 = v10;
        v64 = v34;
        v56 = &v83;
        v57 = &v74;
        v51 = v43;
        v52 = self;
        v36 = v14;
        v53 = v36;
        v58 = &v78;
        v37 = *&a5->var0[4];
        v61 = *a5->var0;
        v62 = v37;
        v13 = v23;
        v65 = v18;
        v55 = v13;
        v59 = v82;
        v54 = v12;
        objc_copyWeak(&v60, &location);
        v38 = objc_retainBlock(v50);
        if (*(v84 + 6))
        {
          AXPerformBlockAsynchronouslyOnMainThread();
        }

        else
        {
          v39 = [(GAXBackboard *)self _SBServerQueryForAvailabilitySBParameters];
          v40 = +[AXSpringBoardServer server];
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_20880;
          v44[3] = &unk_4DC18;
          v47 = v82;
          v44[4] = self;
          v48 = &v83;
          v45 = v36;
          v49 = v10;
          v46 = v38;
          [v40 systemAppInfoWithQuery:v39 completion:v44];
        }

        objc_destroyWeak(&v60);
        objc_destroyWeak(&v71);
        objc_destroyWeak(&location);

        _Block_object_dispose(&v74, 8);
        _Block_object_dispose(&v78, 8);
        goto LABEL_23;
      }

      v35 = 4;
    }

    else
    {
      v35 = 1;
    }

    *(v84 + 6) = v35;
    goto LABEL_18;
  }

  v19 = GAXLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_2B770();
  }

  (v13[2])(v13, 0, 0);
LABEL_23:

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(&v83, 8);
}

- (void)_applyUnmanagedSelfLockRestrictionsForStyle:(int64_t)a3
{
  [(GAXBackboard *)self setIsRestrictedForAAC:a3 == 1];
  v6 = [(GAXBackboard *)self profileManager];
  v5 = [(GAXBackboard *)self userInterfaceClient];
  [v6 applyUnmanagedSelfLockRestrictionsForStyle:a3 withUserInterfaceClient:v5];
}

- (void)_removeUnmanagedSelfLockRestrictions
{
  [(GAXBackboard *)self setIsRestrictedForAAC:0];
  v4 = [(GAXBackboard *)self profileManager];
  v3 = [(GAXBackboard *)self userInterfaceClient];
  [v4 removeUnmanagedSelfLockRestrictionsWithUserInterfaceClient:v3];
}

- (id)_passcode
{
  v3 = [(GAXBackboard *)self passcodeHandle];

  if (!v3)
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_2B7E0();
    }
  }

  v5 = [(GAXBackboard *)self passcodeHandle];
  v6 = [v5 passcode];

  return v6;
}

- (void)_setPasscode:(id)a3
{
  v4 = a3;
  v5 = [(GAXBackboard *)self passcodeHandle];

  if (!v5)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_2B7E0();
    }
  }

  v7 = [v4 length];
  v8 = [(GAXBackboard *)self passcodeHandle];
  v9 = [v8 attemptToSetPasscode:v4];

  if (v9)
  {
    _AXSGuidedAccessSetHasPasscode();
    if (v7)
    {
      v10 = +[NSDate date];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(GAXBackboard *)self settings];
    [v11 setLastPasscodeSetDate:v10];

    if (v7)
    {
    }
  }
}

- (BOOL)_hasPasscode
{
  v2 = [(GAXBackboard *)self _passcode];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)_isPasscodeStale
{
  if (![(GAXBackboard *)self _hasPasscode])
  {
    return 1;
  }

  v3 = +[NSDate date];
  v4 = [(GAXBackboard *)self settings];
  v5 = [v4 lastPasscodeSetDate];

  if (!v5)
  {
    v6 = [(GAXBackboard *)self settings];
    [v6 setLastPasscodeSetDate:v3];

    v5 = v3;
  }

  v7 = [(GAXBackboard *)self settings];
  v8 = [v7 lastActivationDate];

  if (!v8)
  {
    v8 = +[NSDate date];
  }

  [v8 timeIntervalSinceDate:v3];
  v10 = fabs(v9);
  [v5 timeIntervalSinceDate:v3];
  v12 = fabs(v11) > *&GAXProfileStalePasscodeTimeInterval && v10 > *&GAXProfileStalePasscodeTimeInterval;

  return v12;
}

- (void)_performValidation
{
  v2 = +[AXValidationManager sharedInstance];
  [v2 performValidations:&stru_4DC58 withPreValidationHandler:&stru_4DC78 postValidationHandler:&stru_4DCB8 safeCategoryInstallationHandler:&stru_4DCF8];
}

- (id)_unarchivedIgnoredTouchRegionsWithDataArray:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = AX_CGPathCreateWithDataRepresentation();
          if (v11)
          {
            v12 = v11;
            if (!v7)
            {
              v7 = objc_opt_new();
            }

            CFArrayAppendValue(v7, v12);
            CGPathRelease(v12);
          }

          else
          {
            v13 = GAXLogCommon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              sub_2B814(&v15, v16, v13);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_applyAllowedStatesForRestrictions
{
  v3 = [(GAXBackboard *)self profileManager];
  v4 = [(GAXBackboard *)self appManager];
  v5 = [v4 effectiveAppRestrictionIdentifiers];
  v6 = [v3 statesForRestrictionsWithIdentifiers:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2134C;
  v9[3] = &unk_4DD20;
  v9[4] = self;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = [v3 unappliedChangedStatesForRestrictions];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_213C4;
  v8[3] = &unk_4DD20;
  v8[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
  [v3 clearUnappliedChangedStatesForRestrictions];
}

- (void)_applyChangedStatesForRestrictions
{
  v3 = [(GAXBackboard *)self profileManager];
  v4 = [(GAXBackboard *)self appManager];
  v5 = [v3 unappliedChangedStatesForRestrictions];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2150C;
  v7[3] = &unk_4DD20;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
  [v3 clearUnappliedChangedStatesForRestrictions];
}

- (void)_applyDeniedStatesForRestrictions
{
  v3 = [(GAXBackboard *)self profileManager];
  v4 = [(GAXBackboard *)self appManager];
  v5 = [v4 effectiveAppRestrictionIdentifiers];
  v6 = [v3 statesForRestrictionsWithIdentifiers:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2164C;
  v8[3] = &unk_4DD20;
  v9 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)_clearChangedStatesForRestrictions
{
  v2 = [(GAXBackboard *)self profileManager];
  [v2 clearUnappliedChangedStatesForRestrictions];
}

- (void)_updateSessionAppForSingleAppMode
{
  v2 = [(GAXBackboard *)self profileManager];
  v3 = [v2 singleAppModeAppID];

  v4 = +[NSMutableArray array];
  v5 = [LSApplicationRecord enumeratorWithOptions:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v25;
  do
  {
    v10 = 0;
    v23 = v7;
    do
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      [v4 addObject:v11];
      if (!v8)
      {
        v12 = [v11 bundleIdentifier];
        if ([v3 isEqualToString:v12])
        {

LABEL_10:
          v20 = [v11 bundleIdentifier];
          v8 = [v20 copy];

          goto LABEL_12;
        }

        [v11 iTunesMetadata];
        v13 = v9;
        v14 = v4;
        v15 = v5;
        v17 = v16 = v3;
        v18 = [v17 itemName];
        v19 = [v16 isEqualToString:v18];

        v3 = v16;
        v5 = v15;
        v4 = v14;
        v9 = v13;
        v7 = v23;

        if (v19)
        {
          goto LABEL_10;
        }

        v8 = 0;
      }

LABEL_12:
      v10 = v10 + 1;
    }

    while (v7 != v10);
    v7 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  }

  while (v7);
LABEL_16:
  v21 = GAXLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v29 = v8;
    v30 = 2114;
    v31 = v3;
    v32 = 2114;
    v33 = v4;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Updating session app for single app mode. final result: %{public}@ allowed app id: %{public}@ all installed apps: %{public}@", buf, 0x20u);
  }

  [(GAXBackboard *)self _updateSessionAppWithIdentifier:v8];
}

- (BOOL)_isRunningInStoreDemoMode
{
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v2)
  {
    v3 = v2;
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", v2, &keyExistsAndHasValidFormat);
    CFRelease(v3);
    if (AppBooleanValue)
    {
      v5 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v5 = 1;
    }

    LOBYTE(v2) = !v5;
  }

  return v2;
}

- (void)_updateSessionAppWithIdentifier:(id)a3 notifyUserInterfaceServer:(BOOL)a4 sessionAppIdentifierDidChange:(BOOL *)a5
{
  v8 = a3;
  v9 = GAXLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Updating session app bundle ID to %{public}@.", buf, 0xCu);
  }

  v10 = [(GAXBackboard *)self appManager];
  v11 = [v10 appWithIdentifierIsASessionApp:v8];
  v12 = v11;
  if (v8 && (v11 & 1) == 0)
  {
    v20 = v8;
    v13 = [NSArray arrayWithObjects:&v20 count:1];
    [v10 updateSessionAppBundleIdentifiers:v13];
  }

  v14 = v12 | !a4;
  if ((v14 & 1) == 0)
  {
    if (v8)
    {
      v19 = v8;
      v15 = [NSArray arrayWithObjects:&v19 count:1];
    }

    else
    {
      v15 = [NSNumber numberWithBool:0];
    }

    v16 = v15;
    v17 = [[NSDictionary alloc] initWithObjectsAndKeys:{v15, @"session application identifiers", 0}];
    v18 = [(GAXBackboard *)self userInterfaceClient];
    [v18 sendAsynchronousMessage:v17 withIdentifier:3 targetAccessQueue:0 completion:0];
  }

  if (a5)
  {
    *a5 = v14 ^ 1;
  }
}

- (unsigned)_previousModeIgnoringWorkspace:(BOOL)a3
{
  v4 = [(GAXBackboard *)self modeHistory];
  v5 = [v4 count];
  if (v5 < 2)
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 1;
    while (1)
    {
      v8 = [v4 objectAtIndexedSubscript:v7];
      v9 = [v8 intValue];

      if (v9 != 1 || !a3)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  return v9;
}

- (void)_showPasscodeViewForVerification:(unsigned int)a3
{
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Showing passcode view", buf, 2u);
  }

  v6 = [(GAXBackboard *)self userInterfaceClient];
  v7 = +[AXAccessQueue mainAccessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_21D5C;
  v8[3] = &unk_4DD48;
  v8[4] = self;
  v9 = a3;
  [v6 sendAsynchronousMessage:0 withIdentifier:7 targetAccessQueue:v7 completion:v8];
}

- (void)effectiveAppDidBecomeInvalidWithAppManager:(id)a3
{
  if ([(GAXBackboard *)self isInWorkspace])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_222E4;
    block[3] = &unk_4C958;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)purpleBuddyDidTerminateWithAppManager:(id)a3
{
  v3 = [(GAXBackboard *)self integrityVerifier];
  [v3 verifyIntegrityWithEvent:9];
}

- (BOOL)_hasTimeRestrictionExpired
{
  v2 = +[GAXSettings sharedInstance];
  v3 = [v2 timeRestrictionHasExpired];

  return v3;
}

- (void)timeDidExpireForTimeRestriction:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_224B4;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2B854();
  }
}

- (void)timeRestrictionWasCancelled:(id)a3
{
  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2B888();
  }
}

- (void)timeAlarmDidOccurForTimeRestriction:(id)a3
{
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2B8BC();
  }

  v5 = [(GAXBackboard *)self profileManager];
  v6 = [v5 timeRestrictionsEnabled];
  v7 = [(GAXBackboard *)self timeRestrictionManager];
  -[GAXBackboard _showAlertWithTextType:asBanner:isUrgent:timeRestrictionsEnabled:remainingTime:](self, "_showAlertWithTextType:asBanner:isUrgent:timeRestrictionsEnabled:remainingTime:", 3, 1, 0, v6, [v7 remainingTimeInSeconds]);
}

- (id)profileManagerSessionAppID:(id)a3
{
  v4 = [(GAXBackboard *)self appManager];
  v5 = [v4 sessionAppBundleIdentifiers];
  v6 = [v5 firstObject];

  if (!v6)
  {
    v7 = [(GAXBackboard *)self appManager];
    v6 = [v7 effectiveAppBundleIdentifier];
  }

  return v6;
}

- (BOOL)_gaxShouldRemainEnabledByManagedConfiguration
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveWhitelistedAppsAndOptions];

  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 autonomousSingleAppModePermittedBundleIDs];

  if ([v3 count])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 count] != 0;
  }

  return v6;
}

- (void)didEnterSingleAppModeWithProfileManager:(id)a3
{
  _AXSGuidedAccessSetEnabledByManagedConfiguration();
  v4 = +[AXSpringBoardServer server];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_22A58;
  v5[3] = &unk_4D500;
  v5[4] = self;
  [v4 screenLockStatus:v5 passcodeStatusRequired:1];
}

- (void)appDidChangeForSingleAppModeWithProfileManager:(id)a3
{
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2B8F0();
  }

  v5 = +[AXSpringBoardServer server];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_22BA8;
  v6[3] = &unk_4D500;
  v6[4] = self;
  [v5 screenLockStatus:v6 passcodeStatusRequired:1];
}

- (void)didExitSingleAppModeWithProfileManager:(id)a3
{
  [(GAXBackboard *)self setAppLaunchGeneration:[(GAXBackboard *)self appLaunchGeneration]+ 1];
  v4 = _AXSGuidedAccessEnabledByManagedConfiguration();
  if (![(GAXBackboard *)self _gaxShouldRemainEnabledByManagedConfiguration])
  {
    _AXSGuidedAccessSetEnabledByManagedConfiguration();
  }

  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2B924();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_22D3C;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  v6 = [(GAXBackboard *)self axFeatureManager];
  [v6 restoreAccessibilityFeatures];

  if (v4)
  {
    _AXSGuidedAccessSetEnabled();
  }
}

- (void)didEnterAppSelfLockModeWithProfileManager:(id)a3
{
  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_2B958();
  }

  _AXSGuidedAccessSetEnabledByManagedConfiguration();
}

- (void)appDidChangeForAppSelfLockModeWithProfileManager:(id)a3
{
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2B98C();
  }

  v5 = [(GAXBackboard *)self profileManager];
  v6 = [v5 configuration];

  if (v6 != 3)
  {
    _AXAssert();
  }

  if ([(GAXBackboard *)self isActive])
  {
    v7 = +[GAXSettings sharedInstance];
    v8 = [v7 activeAppID];
    if ([(GAXBackboard *)self appIsAllowedToSelfLock:v8])
    {
    }

    else
    {
      v9 = +[GAXSettings sharedInstance];
      v10 = [v9 selfLockUnmanaged];

      if ((v10 & 1) == 0)
      {
        v11 = +[GAXSettings sharedInstance];
        [v11 setActiveAppSelfLocked:0];

        v12 = +[GAXSettings sharedInstance];
        [v12 setSelfLockUnmanaged:0];

        [(GAXBackboard *)self setAppLaunchGeneration:[(GAXBackboard *)self appLaunchGeneration]+ 1];
        [(GAXBackboard *)self removeReasonToBlockAllEvents:@"GAX verifying app relaunch"];
        [(GAXBackboard *)self _transitionToMode:0 requireUserUnlock:0];
        [(GAXBackboard *)self _updateRestrictedState:0];
      }
    }
  }
}

- (void)didExitAppSelfLockModeWithProfileManager:(id)a3
{
  [(GAXBackboard *)self setAppLaunchGeneration:[(GAXBackboard *)self appLaunchGeneration]+ 1];
  [(GAXBackboard *)self removeReasonToBlockAllEvents:@"GAX verifying app relaunch"];
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_2B9C0();
  }

  if (![(GAXBackboard *)self _gaxShouldRemainEnabledByManagedConfiguration])
  {
    _AXSGuidedAccessSetEnabledByManagedConfiguration();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23040;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)pauseVerificationForProfileManager:(id)a3
{
  v3 = [(GAXBackboard *)self integrityVerifier];
  [v3 pause];
}

- (void)resumeVerificationForProfileManager:(id)a3
{
  v3 = [(GAXBackboard *)self integrityVerifier];
  [v3 resume];
}

- (void)_handleSubstationalTransition
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_231C0;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleLostModeChanged
{
  v3 = +[FMDFMIPManager sharedInstance];
  -[GAXBackboard setIsLostModeActive:](self, "setIsLostModeActive:", [v3 lostModeIsActive]);

  v4 = GAXLogIntegrity();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = [(GAXBackboard *)self isLostModeActive];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Lost Mode status changed: %i", buf, 8u);
  }

  if (![(GAXBackboard *)self isLostModeActive])
  {
    v5 = [(GAXBackboard *)self profileManager];
    v6 = [v5 configuration];

    if (v6 == 3)
    {
      v7 = +[GAXSettings sharedInstance];
      v8 = [v7 savedASAMAppIdForLostMode];

      v9 = GAXLogIntegrity();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 138412290;
          v16 = v8;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Using saved ASAM App ID: %@", buf, 0xCu);
        }

        v9 = [(GAXBackboard *)self appManager];
        v14 = v8;
        v11 = [NSArray arrayWithObjects:&v14 count:1];
        [v9 updateSessionAppBundleIdentifiers:v11];
      }

      else if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "No saved ASAM App ID to restore.", buf, 2u);
      }
    }
  }

  v12 = [(GAXBackboard *)self integrityVerifier];
  [v12 verifyIntegrityWithEvent:17];

  v13 = +[GAXSettings sharedInstance];
  [v13 setSavedASAMAppIdForLostMode:0];
}

- (void)_handleInPreBoardScenarioUpdated
{
  v3 = AXInPreboardScenario();
  v4 = GAXLogIntegrity();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "PreBoard scenario updated, but PreBoard is running.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "PreBoard did finish.", v8, 2u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(GAXBackboard *)self preBoardDidFinishObserverToken];
    [v6 removeObserver:v7];

    [(GAXBackboard *)self setPreBoardDidFinishObserverToken:0];
    v4 = [(GAXBackboard *)self integrityVerifier];
    [v4 verifyIntegrityWithEvent:11];
  }
}

- (void)_handleInCheckerBoardScenarioUpdated
{
  v3 = AXInCheckerBoardScenario();
  v4 = GAXLogIntegrity();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "CheckerBoard scenario updated, but CheckerBoard is running.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "CheckerBoard did finish.", v8, 2u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(GAXBackboard *)self checkerBoardDidFinishObserverToken];
    [v6 removeObserver:v7];

    [(GAXBackboard *)self setCheckerBoardDidFinishObserverToken:0];
    v4 = [(GAXBackboard *)self integrityVerifier];
    [v4 verifyIntegrityWithEvent:12];
  }
}

- (void)presentStandardActiveTopBanner
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23A24;
  block[3] = &unk_4C958;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)wantsSingleAppMode
{
  v2 = [(GAXBackboard *)self profileManager];
  v3 = [v2 configuration] == 2;

  return v3;
}

- (BOOL)wantsAppSelfLockMode
{
  v2 = +[GAXSettings sharedInstance];
  v3 = [v2 isActiveAppSelfLocked];

  return v3;
}

- (BOOL)wantsSingleAppModeOrAppSelfLockMode
{
  if ([(GAXBackboard *)self wantsSingleAppMode])
  {
    return 1;
  }

  return [(GAXBackboard *)self wantsAppSelfLockMode];
}

- (BOOL)appIsAllowedToSelfLock:(id)a3
{
  v3 = a3;
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 autonomousSingleAppModePermittedBundleIDs];
  v6 = [v5 containsObject:v3];

  return v6;
}

- (void)homeClickSwallowedInSpringBoard
{
  [(GAXBackboard *)self gaxState];
  v2 = GAXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v4 = 0;
    v5 = 1024;
    v6 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Home click swallowed in SpringBoard. Mode: %i, allows exit: %i", buf, 0xEu);
  }
}

- (void)didEnableSystemAppAccess
{
  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "System app access was enabled.", v5, 2u);
  }

  v4 = [(GAXBackboard *)self integrityVerifier];
  [v4 verifyIntegrityWithEvent:10];
}

- (id)_debugGAXDescription
{
  v3 = [NSMutableString stringWithString:@"\n************************************\n"];
  [v3 appendFormat:@"GAX Backboard: %p\n", self];
  [(GAXBackboard *)self gaxState];
  v4 = gaxDebugDescriptionForGAXBackboardState(v8);
  [v3 appendString:v4];

  [v3 appendFormat:@"Wants Single App Mode:%ld\n", -[GAXBackboard wantsSingleAppMode](self, "wantsSingleAppMode")];
  [v3 appendFormat:@"Wants App Self-lock mode:%ld\n", -[GAXBackboard wantsAppSelfLockMode](self, "wantsAppSelfLockMode")];
  v5 = +[GAXSettings sharedInstance];
  [v3 appendFormat:@"GAX Settings:\n%@\n", v5];

  v6 = [(GAXBackboard *)self appManager];
  [v3 appendFormat:@"GAX Apps:\n%@\n", v6];

  [v3 appendString:@"\n************************************\n"];

  return v3;
}

- (void)handleGuidedAccessAutomationCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = GAXLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_2BAC0();
    }

    v15 = 0;
    goto LABEL_31;
  }

  v8 = [GAXAutomationCommand commandWithData:v6];
  v9 = GAXLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_2BB30();
  }

  if (!v8)
  {
    v16 = GAXLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_2BC30();
    }

    goto LABEL_13;
  }

  v10 = [v8 command];
  v11 = [v10 isEqualToString:GAXUIACommandQueryGAXMode];

  if (v11)
  {
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    gaxStateAccessQueue = self->_gaxStateAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_247C0;
    block[3] = &unk_4D4B0;
    block[4] = self;
    block[5] = &v67;
    dispatch_sync(gaxStateAccessQueue, block);
    v13 = [NSNumber numberWithUnsignedInt:*(v68 + 6)];
    [v8 setResult:v13];
LABEL_7:

    _Block_object_dispose(&v67, 8);
LABEL_29:
    v31 = 0;
    goto LABEL_30;
  }

  v17 = [v8 command];
  v18 = [v17 isEqualToString:GAXUIACommandSetGAXMode];

  if (v18)
  {
    v19 = [v8 parameters];
    v20 = [v19 objectForKeyedSubscript:@"mode"];

    if (([(__CFString *)v20 isEqualToString:@"Active"]& 1) != 0)
    {
      v21 = 2;
    }

    else if (([(__CFString *)v20 isEqualToString:@"Disabled"]& 1) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = [(__CFString *)v20 isEqualToString:@"Workspace"];
    }

    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_247D4;
    v64[3] = &unk_4D618;
    v64[4] = self;
    v65 = v21;
    dispatch_async(&_dispatch_main_q, v64);
LABEL_28:

    goto LABEL_29;
  }

  v22 = [v8 command];
  v23 = [v22 isEqualToString:GAXUIACommandQueryGAXProfileConfiguration];

  if (v23)
  {
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v24 = self->_gaxStateAccessQueue;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_247E8;
    v63[3] = &unk_4D4B0;
    v63[4] = self;
    v63[5] = &v67;
    dispatch_sync(v24, v63);
    v13 = [NSNumber numberWithUnsignedInt:*(v68 + 6)];
    [v8 setResult:v13];
    goto LABEL_7;
  }

  v25 = [v8 command];
  v26 = [v25 isEqualToString:GAXUIACommandQuerySessionAppBundleID];

  if (v26)
  {
    v27 = [(GAXBackboard *)self appManager];
    v28 = [v27 sessionAppBundleIdentifiers];
    v29 = [v28 firstObject];

    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = GAXUIACommandResultNull;
    }

    [v8 setResult:v30];

    goto LABEL_29;
  }

  v32 = [v8 command];
  v33 = [v32 isEqualToString:GAXUIACommandQueryEffectiveAppBundleID];

  if (v33)
  {
    v34 = [(GAXBackboard *)self appManager];
    v20 = [v34 effectiveAppBundleIdentifier];

    if (v20)
    {
      v35 = v20;
    }

    else
    {
      v35 = GAXUIACommandResultNull;
    }

    [v8 setResult:v35];
    goto LABEL_28;
  }

  v36 = [v8 command];
  v37 = [v36 isEqualToString:GAXUIACommandQueryPasscode];

  if (v37)
  {
    v38 = [(GAXBackboard *)self _passcode];
LABEL_40:
    v16 = v38;
    [v8 setResult:v38];
LABEL_13:

    goto LABEL_29;
  }

  v39 = [v8 command];
  v40 = [v39 isEqualToString:GAXUIACommandSetPasscode];

  if (v40)
  {
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_247FC;
    v61[3] = &unk_4D050;
    v61[4] = self;
    v41 = v8;
    v62 = v41;
    dispatch_async(&_dispatch_main_q, v61);
    [v41 setResult:GAXUIACommandResultOK];

    goto LABEL_29;
  }

  v42 = [v8 command];
  v43 = [v42 isEqualToString:GAXUIACommandQueryIsAppLayoutMultiApp];

  if (v43)
  {
    v16 = [(GAXBackboard *)self appManager];
    v44 = [NSNumber numberWithBool:[v16 appLayoutIsMultiApp]];
    [v8 setResult:v44];

    goto LABEL_13;
  }

  v45 = [v8 command];
  v46 = [v45 isEqualToString:GAXUIACommandQueryIsKeyboardInputAllowed];

  if (v46)
  {
    [(GAXBackboard *)self gaxState];
    v38 = [NSNumber numberWithUnsignedInt:(v60 >> 18) & 1];
    goto LABEL_40;
  }

  v47 = [v8 command];
  v48 = [v47 isEqualToString:GAXUIACommandSetKeyboardInputAllowed];

  if (v48)
  {
    v49 = [v8 parameters];
    v50 = [v49 objectForKeyedSubscript:@"enabled"];

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_24868;
    v58[3] = &unk_4D050;
    v58[4] = self;
    v59 = v50;
    v16 = v50;
    dispatch_async(&_dispatch_main_q, v58);
    [v8 setResult:GAXUIACommandResultOK];

    goto LABEL_13;
  }

  v51 = [v8 command];
  v52 = [v51 isEqualToString:GAXUIACommandQueryIsMediaPlaying];

  if (!v52)
  {
    v54 = [NSString stringWithFormat:@"Did not understand this automation command: %@", v8];
    [v8 setErrorMessage:v54];

    v16 = GAXLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_2BBA0(v8);
    }

    goto LABEL_13;
  }

  v53 = +[AXSpringBoardServer server];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_248D8;
  v55[3] = &unk_4DD98;
  v56 = v8;
  v57 = v7;
  [v53 isMediaPlayingForApp:0 completionHandler:v55];

  v31 = 1;
LABEL_30:
  v15 = [v8 data];

  if ((v31 & 1) == 0)
  {
LABEL_31:
    (*(v7 + 2))(v7, v15);
  }
}

- (unint64_t)currentGuidedAccessModeForBackboardServer
{
  if (![(GAXBackboard *)self isActive])
  {
    return 0;
  }

  if ([(GAXBackboard *)self wantsAppSelfLockMode])
  {
    return 2;
  }

  if ([(GAXBackboard *)self wantsSingleAppMode])
  {
    return 3;
  }

  return 1;
}

- (id)currentSessionApp
{
  v2 = [(GAXBackboard *)self appManager];
  v3 = [v2 sessionAppBundleIdentifiers];
  v4 = [v3 firstObject];

  return v4;
}

@end