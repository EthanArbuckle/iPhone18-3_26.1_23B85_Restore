@interface AXSpringBoardServerHelper
+ (id)_assistantController;
+ (id)_awayController;
+ (id)_axActiveWindowScene;
+ (id)_axMenuBarManager;
+ (id)_backlightController;
+ (id)_globalIdleTimeCoordinator;
+ (id)_iconController;
+ (id)_lockScreenManager;
+ (id)_syncController;
+ (id)_uiController;
+ (id)_wallpaperController;
+ (void)initialize;
- (AXSpringBoardServerHelper)init;
- (AXUIClient)guestPassClient;
- (BOOL)_accessibilityHandleHomeOrLockButtonPress;
- (BOOL)_accessibilityIsUILocked;
- (BOOL)_accessibilityShowCoverSheet:(BOOL)sheet serverInstance:(id)instance completion:(id)completion;
- (BOOL)_accessibilityShowNotificationCenter:(BOOL)center serverInstance:(id)instance;
- (BOOL)_isDisplayingAlertController;
- (BOOL)accessibilityIsBannerVisible;
- (BOOL)accessibilityIsNotificationVisible;
- (BOOL)accessibilityIsRemoteTransientOverlayVisible;
- (BOOL)accessibilityShowControlCenter:(BOOL)center;
- (BOOL)areSystemGesturesDisabledByAccessibilityWithServerInstance:(id)instance;
- (BOOL)areSystemGesturesDisabledNativelyWithServerInstance:(id)instance;
- (BOOL)canLaunchAsFloatingApplicationForIconView:(id)view;
- (BOOL)canLaunchAsPinnedApplicationForIconView:(id)view;
- (BOOL)canSetDockIconActivationModeForServerInstance:(id)instance;
- (BOOL)connectedDevicesRequireAssistiveTouch;
- (BOOL)currentDevicesHaveAssistiveTouchCustomActions;
- (BOOL)dismissSiriWithServerInstance:(id)instance;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)hasActiveCallWithServerInstance:(id)instance;
- (BOOL)hasActiveEndpointCallWithServerInstance:(id)instance;
- (BOOL)hasActiveOrPendingCallOrFaceTimeWithServerInstance:(id)instance;
- (BOOL)hasActiveOrPendingCallWithServerInstance:(id)instance;
- (BOOL)isAppSwitcherPeekingWithServerInstance:(id)instance;
- (BOOL)isAppSwitcherVisibleWithServerInstance:(id)instance;
- (BOOL)isBannerVisibleWithServerInstance:(id)instance;
- (BOOL)isBuddyRunning;
- (BOOL)isCarPlayConnected;
- (BOOL)isChamoisOrFlexibleWindowingEnabledWithServerInstance:(id)instance;
- (BOOL)isContinuitySessionActiveWithServerInstance:(id)instance;
- (BOOL)isControlCenterVisibleWithServerInstance:(id)instance;
- (BOOL)isCoverSheetVisibleWithServerInstance:(id)instance;
- (BOOL)isDockVisibleWithServerInstance:(id)instance;
- (BOOL)isGuidedAccessActiveWithServerInstance:(id)instance;
- (BOOL)isInCallServiceFrontmost;
- (BOOL)isLockScreenVisible;
- (BOOL)isLockScreenVisibleWithServerInstance:(id)instance;
- (BOOL)isLongLookNotificationVisibleWithServerInstance:(id)instance;
- (BOOL)isMagnifierVisibleWithServerInstance:(id)instance;
- (BOOL)isMakingEmergencyCallWithServerInstance:(id)instance;
- (BOOL)isMenuBarModalWithServerInstance:(id)instance;
- (BOOL)isMenuBarVisibleWithServerInstance:(id)instance;
- (BOOL)isNotificationCenterVisibleWithServerInstance:(id)instance;
- (BOOL)isNotificationVisibleWithServerInstance:(id)instance;
- (BOOL)isOrientationLockedWithServerInstance:(id)instance;
- (BOOL)isPIPWindowVisibleWithServerInstance:(id)instance;
- (BOOL)isPasscodeLockVisible;
- (BOOL)isPasscodeLockVisibleWithServerInstance:(id)instance;
- (BOOL)isPasscodeRequiredOnLockWithServerInstance:(id)instance;
- (BOOL)isPreferencesFrontmost;
- (BOOL)isPurpleBuddyAppFrontmostWithServerInstance:(id)instance;
- (BOOL)isReachabilityActive;
- (BOOL)isRemoteTransientOverlayVisibleWithServerInstance:(id)instance;
- (BOOL)isRingerMutedWithServerInstance:(id)instance;
- (BOOL)isScreenLockedWithServerInstance:(id)instance;
- (BOOL)isScreenshotWindowVisibleWithServerInstance:(id)instance;
- (BOOL)isSettingsAppFrontmostWithServerInstance:(id)instance;
- (BOOL)isShelfSwitcherVisibleWithServerInstance:(id)instance;
- (BOOL)isShowingHomescreenWithServerInstance:(id)instance;
- (BOOL)isShowingNonSystemAppWithServerInstance:(id)instance;
- (BOOL)isSiriVisibleWithServerInstance:(id)instance;
- (BOOL)isSpeakThisTemporarilyDisabledWithServerInstance:(id)instance;
- (BOOL)isSpotlightVisibleWithServerInstance:(id)instance;
- (BOOL)isStageManagerSwitcherVisibleWithServerInstance:(id)instance;
- (BOOL)isStatusBarNativeFocusableWithServerInstance:(id)instance includingNonDismissableElements:(BOOL)elements;
- (BOOL)isSyncingRestoringResettingOrUpdatingWithServerInstance:(id)instance;
- (BOOL)isSystemAppFrontmostExcludingSiri:(BOOL)siri withServerInstance:(id)instance;
- (BOOL)isSystemAppShowingAnAlertWithServerInstance:(id)instance;
- (BOOL)isSystemGestureActiveWithServerInstance:(id)instance;
- (BOOL)isSystemSleepingWithServerInstance:(id)instance;
- (BOOL)isTodayViewOrAppLibraryVisibleWithServerInstance:(id)instance;
- (BOOL)isTypeToSiriVisibleWithServerInstance:(id)instance;
- (BOOL)isVoiceControlRunningWithServerInstance:(id)instance;
- (BOOL)serverInstance:(id)instance isShowingRemoteViewType:(int64_t)type;
- (BOOL)serverInstance:(id)instance performMedusaGesture:(unint64_t)gesture;
- (BOOL)serverInstance:(id)instance showControlCenter:(BOOL)center;
- (BOOL)serverInstance:(id)instance showNotificationCenter:(BOOL)center;
- (BOOL)toggleDarkModeWithServerInstance:(id)instance;
- (double)reachabilityOffsetWithServerInstance:(id)instance;
- (double)volumeLevelWithServerInstance:(id)instance;
- (id)_accessibilityCoverSheetPresentationManagerSharedInstance;
- (id)_accessibilityNotificationSummary:(unint64_t)summary;
- (id)_axFloatingDockController;
- (id)_handleConfirmationDialogWithMessage:(id)message confirmTitle:(id)title;
- (id)_handleUsageConfirmationDialogWithMessage:(id)message;
- (id)_handleVOConfirmationDialogWithMessage:(id)message confirmTitle:(id)title;
- (id)_handleVOUsageConfirmationDialogWithMessage:(id)message;
- (id)_serviceForRemoteViewType:(int64_t)type;
- (id)_visibleTripleClickItems;
- (id)allowedMedusaGesturesWithServerInstance:(id)instance;
- (id)appForLayoutRole:(int64_t)role;
- (id)coverSheetViewController;
- (id)displayIdentifierForSceneIdentifier:(id)identifier serverInstance:(id)instance;
- (id)focusedAppPIDWithServerInstance:(id)instance;
- (id)focusedAppProcessWithServerInstance:(id)instance;
- (id)focusedAppsWithServerInstance:(id)instance;
- (id)focusedOccludedAppScenesWithServerInstance:(id)instance;
- (id)frontmostAppProcessWithServerInstance:(id)instance;
- (id)installedAppsWithServerInstance:(id)instance;
- (id)internalAppsWithServerInstance:(id)instance;
- (id)jindoAppBundleIndentifiersWithServerInstance:(id)instance;
- (id)medusaAppsWithServerInstance:(id)instance;
- (id)medusaBundleIDsToLayoutRoles;
- (id)runningAppPIDsWithServerInstance:(id)instance;
- (id)runningAppProcessesWithServerInstance:(id)instance;
- (id)sceneLayoutState;
- (id)serverInstance:(id)instance splashImageForAppWithBundleIdentifier:(id)identifier;
- (id)serverInstance:(id)instance springBoardSystemInfoQuery:(unint64_t)query;
- (int)nativeFocusedApplication;
- (int)purpleBuddyPIDWithServerInstance:(id)instance;
- (unint64_t)_accessibilityNotificationCount;
- (void)_cleanupAlertController;
- (void)_cleanupPresentationWindow;
- (void)_createAlertWindowSubclass;
- (void)_dismissAlertControllerWithCompletion:(id)completion;
- (void)_dismissViewControllerWithCompletion:(id)completion;
- (void)_displayAlertController:(id)controller;
- (void)_displayViewController:(id)controller withCompletion:(id)completion;
- (void)_guestPassAcceptDialog:(id)dialog;
- (void)_guestPassShowPIN:(id)n;
- (void)_guestPassSpeakPIN:(id)n;
- (void)_handleASTMenuCustomizeAddDwell:(BOOL)dwell addScroll:(BOOL)scroll;
- (void)_handleASTMenuFullForInstance:(id)instance;
- (void)_handleAlertActionPress:(id)press;
- (void)_handleAlwaysOnBluetoothModeForVoiceOver;
- (void)_handleConfirmRebootDevice;
- (void)_handleConnectedDevicesHaveAssistiveTouchCustomActions;
- (void)_handleDisableAssistiveTouchConfirmation;
- (void)_handleDisableBrightnessFiltersAlert:(id)alert;
- (void)_handleDisableFKAConfirmation;
- (void)_handleDisableOnDeviceEyeTrackingConfirmation;
- (void)_handleDisableSwitchControlConfirmation;
- (void)_handleDisallowUSBRestrictedModeSCInformativeOnly:(BOOL)only;
- (void)_handleDisallowUSBRestrictedModeVOInformativeOnly:(BOOL)only;
- (void)_handleLiveTranscriptionConfirmation;
- (void)_handleSecureItentAlertForSwitchAST;
- (void)_handleSwitchUsageConfirmed;
- (void)_handleTouchAccommodationsUsageConfirmed;
- (void)_handleTripleClickAskAlert;
- (void)_handleVONoHomeButtonGestureAlert;
- (void)_handleVoiceOverUsageConfirmation;
- (void)_handleZoomConflictAlert:(id)alert;
- (void)_handleZoomInBuddyAlert;
- (void)_handleZoomTripleClickAfterConflict;
- (void)_monitorContinuityDisplayChanges;
- (void)_performValidation;
- (void)_restoreAccessibilityFeatureFromSecurePayCache:(id)cache;
- (void)_restoreSecurePayFeaturesIfNeeded;
- (void)_sortVisibleItems;
- (void)_toggleTripleClickDisplay;
- (void)_updateVisibleTripleClickItems;
- (void)activateSOSModeWithServerInstance:(id)instance;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)askQuestionInMagnifierWithServerInstance:(id)instance;
- (void)cancelSiriDismissalForAssistiveTouchWithServerInstance:(id)instance;
- (void)dealloc;
- (void)didFailToFloatAppForSideAppManager:(id)manager;
- (void)didFailToPinAppForSideAppManager:(id)manager;
- (void)diminishJindoWithServerInstance:(id)instance;
- (void)dismissAlertWithCancel;
- (void)forceLoadGAXBundleWithServerInstance:(id)instance;
- (void)freezeClarityUILoadingScreenWithServerInstance:(id)instance;
- (void)handleBrokenHomeButtonAlert;
- (void)hideAlertWithServerInstance:(id)instance;
- (void)installGuestPassAcceptDialogGesture;
- (void)installGuestPassPINGesture;
- (void)isMediaPlayingWithServerInstance:(id)instance forBundleId:(id)id completion:(id)completion;
- (void)launchAccessibilityReaderWithServerInstance:(id)instance;
- (void)launchApplication:(id)application;
- (void)launchApplicationWithFullConfiguration:(id)configuration;
- (void)launchFloatingApplication:(id)application;
- (void)launchMagnifierAppWithServerInstance:(id)instance;
- (void)launchVoiceOverImageExplorerViewServiceWithServerInstance:(id)instance forData:(id)data;
- (void)nativeFocusedApplication;
- (void)openAppSwitcherWithServerInstance:(id)instance;
- (void)openCommandAndControlCommandsWithServerInstance:(id)instance;
- (void)openCommandAndControlSettingsWithServerInstance:(id)instance;
- (void)openCommandAndControlVocabularyWithServerInstance:(id)instance;
- (void)openCustomGestureCreationForASTWithServerInstance:(id)instance;
- (void)openCustomGestureCreationForSCATWithServerInstance:(id)instance;
- (void)openMenuCustomizationForASTWithServerInstance:(id)instance;
- (void)openTypeToSiriWithServerInstance:(id)instance;
- (void)openVoiceControlWithServerInstance:(id)instance;
- (void)reactivateInCallServiceWithServerInstance:(id)instance;
- (void)rebootDeviceWithServerInstance:(id)instance;
- (void)removeGuestPassAcceptDialogGesture;
- (void)revealSpotlightWithServerInstance:(id)instance;
- (void)serverInstance:(id)instance hideRemoteViewType:(int64_t)type;
- (void)serverInstance:(id)instance pauseMedia:(BOOL)media forBundleId:(id)id;
- (void)serverInstance:(id)instance setDockIconActivationMode:(unint64_t)mode;
- (void)serverInstance:(id)instance showAlertType:(int)type withHandler:(id)handler withData:(id)data;
- (void)setReachabilityActive:(BOOL)active;
- (void)setSecurePayAccessibilityFeaturesDisabled:(BOOL)disabled withServerInstance:(id)instance;
- (void)toggleBackgroundSoundsWithServerInstance:(id)instance;
- (void)toggleConversationBoostWithServerInstance:(id)instance;
- (void)toggleDetectionModeWithServerInstance:(id)instance;
- (void)toggleDockWithServerInstance:(id)instance;
- (void)toggleLiveTranscriptionWithServerInstance:(id)instance;
- (void)toggleNotificationCenterWithServerInstance:(id)instance;
- (void)toggleSpotlightWithServerInstance:(id)instance;
- (void)toggleTorchWithServerInstance:(id)instance;
- (void)updateFrontMostApplicationWithServerInstance:(id)instance;
@end

@implementation AXSpringBoardServerHelper

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[AXSpringBoardServerHelper initialize];
  }
}

void __39__AXSpringBoardServerHelper_initialize__block_invoke()
{
  if (AXProcessIsSpringBoard())
  {
    v0 = objc_alloc_init(AXSpringBoardServerHelper);
    v1 = SBServerHelper;
    SBServerHelper = v0;

    v2 = +[_AXSpringBoardServerInstance springBoardServerInstance];
    [v2 setDelegate:SBServerHelper];

    v3 = SBServerHelper;
    v4 = +[AXSpringBoardServerSideAppManager sharedInstance];
    [v4 setDelegate:v3];
  }
}

- (void)_performValidation
{
  mEMORY[0x277CE69B0] = [MEMORY[0x277CE69B0] sharedInstance];
  [mEMORY[0x277CE69B0] performValidations:&__block_literal_global_805 withPreValidationHandler:&__block_literal_global_1713 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_1719];
}

uint64_t __47__AXSpringBoardServerHelper__performValidation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SBTelephonyManager"];
  [v2 validateClass:@"SBPrototypeController"];
  [v2 validateClass:@"SBConferenceManager"];
  [v2 validateClass:@"UIApplicationRotationFollowingWindow"];
  [v2 validateClass:@"SBHomeScreenWindow"];
  [v2 validateClass:@"SpringBoard"];
  [v2 validateClass:@"SBMainWorkspace"];
  [v2 validateClass:@"SBMainWorkspace" hasClassMethod:@"_instanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"inCallTransientOverlayManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"ringerControl" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainWorkspace" hasInstanceVariable:@"_keyboardFocusCoordinator" withType:"<SBKeyboardFocusControlling>"];
  [v2 validateClass:@"SBKeyboardFocusCoordinator"];
  [v2 validateClass:@"SBKeyboardFocusArbitrationReason"];
  [v2 validateClass:@"SBKeyboardFocusArbitrationReason" hasInstanceMethod:@"_initWithLabel:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBKeyboardFocusCoordinator" hasClassMethod:0 withFullSignature:?];
  [v2 validateClass:@"SBKeyboardFocusCoordinator" conformsToProtocol:@"SBKeyboardFocusControlling"];
  [v2 validateProtocol:@"SBKeyboardFocusControlling" hasRequiredInstanceMethod:@"focusLockSpringBoardWindowScene:forReason:"];
  [v2 validateProtocol:@"SBKeyboardFocusControlling" hasRequiredInstanceMethod:@"requestArbitrationForSBWindowScene:forReason:"];
  [v2 validateClass:@"SBInCallTransientOverlayManager"];
  [v2 validateClass:@"SBInCallTransientOverlayManager" hasInstanceMethod:@"presentTransientOverlay" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBRingerControl"];
  [v2 validateClass:@"SBRingerControl" hasInstanceMethod:@"_accessibilityIsRingerMuted" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBReachabilityManager" hasInstanceVariable:@"_reachabilityModeActive" withType:"B"];
  [v2 validateClass:@"SBAssistantController" hasClassMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMediaController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBOrientationLockManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBReachabilityManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasClassMethod:@"sharedTelephonyManagerCreatingIfNecessary:" withFullSignature:{"@", "B", 0}];
  [v2 validateClass:@"SBPrototypeController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBConferenceManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBBacklightController" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSystemGestureManager" hasInstanceMethod:@"isGestureWithTypeAllowed:" withFullSignature:{"B", "Q", 0}];
  [v2 validateClass:@"SBSystemGestureManager" hasClassMethod:@"mainDisplayManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBVoiceControlController" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBVoiceControlController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBVoiceControlController" hasInstanceMethod:@"handleHomeButtonHeld" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBSwitcherController" hasProperty:@"contentViewController" withType:"@"];
  [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"isClassic" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"_classicMode" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"transientOverlayPresentationManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBTransientOverlayPresentationManager" hasInstanceMethod:@"topmostPresentedViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleShelves" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherShelfViewController" hasInstanceMethod:@"dismissShelfForAccessibilityTransition" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBRemoteTransientOverlayViewController" hasInstanceVariable:@"_hostContentAdapter" withType:"SBRemoteTransientOverlayHostContentAdapter"];
  [v2 validateClass:@"SBRemoteTransientOverlayHostContentAdapter" hasInstanceMethod:@"serviceBundleIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBContinuitySessionManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBContinuitySessionManager" hasInstanceMethod:@"currentSession" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSPageViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBDefaults" hasClassMethod:@"localDefaults" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"coverSheetViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"coverSheetView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSCoverSheetViewController"];
  [v2 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"activatePage:animated:withCompletion:" withFullSignature:{"v", "Q", "B", "@?", 0}];
  [v2 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_indexOfMainPage" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"suppressesControlCenter" withFullSignature:{"B", 0}];
  [v2 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_allowedPageViewControllers" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSCoverSheetView" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFPagedScrollView" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"processState" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"pid" withFullSignature:0];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"_updateProcess:withState:" withFullSignature:{"v", "@", "@", 0}];
  [v2 validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"taskState" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"visibility" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"_internalProcessState" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceVariable:@"_appInfo" withType:"SBApplicationInfo"];
  [v2 validateClass:@"SBApplicationInfo" hasInstanceMethod:@"hasHiddenTag" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"lockUIFromSource:withOptions:" withFullSignature:{"v", "i", "@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"_authenticationStateChanged:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBIdleTimerGlobalCoordinator" hasInstanceMethod:@"resetIdleTimerForReason:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBBacklightController" hasInstanceMethod:@"shouldTurnOnScreenForBacklightSource:" withFullSignature:{"B", "q", 0}];
  [v2 validateClass:@"SBBacklightController" hasInstanceMethod:@"setBacklightState:source:" withFullSignature:{"v", "q", "q", 0}];
  [v2 validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"notificationStructuredListViewControllerShouldAllowNotificationHistoryReveal:" withFullSignature:{"B", "@", 0}];
  [v2 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"presentedBanner" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"isPresentingBanner" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"notificationDispatcher" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBNCNotificationDispatcher" hasInstanceMethod:@"bannerDestination" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBNCNotificationDispatcher" hasInstanceMethod:@"dashBoardDestination" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"isPresentingBannerInLongLook" withFullSignature:{"B", 0}];
  [v2 validateProtocol:@"SBNotificationDestination" conformsToProtocol:@"SBFNotificationLongLookPresenting"];
  [v2 validateProtocol:@"SBFNotificationLongLookPresenting" hasRequiredInstanceMethod:@"isPresentingNotificationInLongLook"];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_handleOpenAppSwitcherShortcut:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBSceneManagerCoordinator" hasClassMethod:@"mainDisplaySceneManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainDisplaySceneManager" hasInstanceMethod:@"policyAggregator" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainDisplayPolicyAggregator" hasInstanceMethod:@"allowsCapability:" withFullSignature:{"B", "q", 0}];
  [v2 validateClass:@"SBAssistantController" hasInstanceMethod:@"dismissAssistantViewIfNecessaryInWindowScene:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBSceneManager"];
  [v2 validateClass:@"SBMainDisplaySceneManager"];
  [v2 validateClass:@"SBMainDisplaySceneManager" isKindOfClass:@"SBSceneManager"];
  [v2 validateClass:@"SBMediaController" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBMediaController" hasInstanceMethod:@"nowPlayingApplication" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBOrientationLockManager" hasInstanceMethod:@"isUserLocked" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBOrientationLockManager" hasInstanceMethod:@"lock" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBOrientationLockManager" hasInstanceMethod:@"unlock" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBOrientationLockManager" hasInstanceMethod:@"userLockOrientation" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBOrientationLockManager" hasInstanceMethod:@"lockOverrideEnabled" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_frontMostAppOrientation" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"addActiveOrientationObserver:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"applicationOpenURL:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"removeActiveOrientationObserver:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_toggleSearch" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"toggleSearchOnWindowScene:fromBreadcrumbSource:withWillBeginHandler:completionHandler:" withFullSignature:{"v", "@", "B", "@?", "@?", 0}];
  [v2 validateClass:@"UIWindow" hasInstanceMethod:@"_setRotatableViewOrientation:duration:force:" withFullSignature:{"v", "q", "d", "B", 0}];
  [v2 validateClass:@"SBVolumeControl" hasInstanceMethod:@"_effectiveVolumeChanged:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBVolumeControl" hasInstanceMethod:@"_presentVolumeHUDWithVolume:" withFullSignature:{"v", "f", 0}];
  [v2 validateClass:@"SBControlCenterCoordinator" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v2 validateProtocol:@"SBLockScreenCallHandling" hasRequiredInstanceMethod:@"isMakingEmergencyCall"];
  [v2 validateProtocol:@"SBLockScreenPasscodeViewPresenting" hasRequiredInstanceMethod:@"isPasscodeLockVisible"];
  [v2 validateProtocol:@"SBLockScreenEnvironment" hasRequiredInstanceMethod:@"passcodeViewPresenter"];
  [v2 validateClass:@"SBLockScreenViewControllerBase" hasInstanceMethod:@"isMakingEmergencyCall" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBLockScreenViewControllerBase" hasInstanceMethod:@"isPasscodeLockVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_activeDisplaySwitcherController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"dismissMainSwitcherWithSource:animated:" withFullSignature:{"B", "q", "B", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"dismissMainAndFloatingSwitchersWithSource:animated:" withFullSignature:{"B", "q", "B", 0}];
  [v2 validateClass:@"SBControlCenterCoordinator" hasInstanceMethod:@"canBePresented" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"controlCenterController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasInstanceMethod:@"inCall" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasInstanceMethod:@"isEndpointOnCurrentDevice" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithPid:" withFullSignature:{"@", "i", 0}];
  [v2 validateClass:@"SBReachabilityManager" hasInstanceMethod:@"reachabilityModeActive" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBPrototypeController" hasInstanceMethod:@"rootSettings" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBReachabilityDomain" hasClassMethod:@"rootSettings" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBReachabilitySettings" hasInstanceMethod:@"yOffsetFactor" withFullSignature:{"d", 0}];
  [v2 validateClass:@"SBConferenceManager" hasInstanceMethod:@"inFaceTime" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBControlCenterCoordinator" hasInstanceMethod:@"presentAnimated:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBReachabilityManager" hasInstanceMethod:@"toggleReachability" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBReachabilityManager" hasInstanceMethod:@"setReachabilityEnabled:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"SBUIController" hasInstanceMethod:@"_activateApplicationFromAccessibility:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBAppLayout" hasClassMethod:@"homeScreenAppLayout" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleItemContainers" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"layoutContext" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWindowScene" isKindOfClass:@"UIWindowScene"];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"sceneManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSceneManager" hasInstanceMethod:@"allScenes" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSceneManager" hasInstanceMethod:@"displayIdentity" withFullSignature:{"@", 0}];
  [v2 validateClass:@"FBScene" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBElasticHUDViewController"];
  [v2 validateClass:@"SBHUDController" hasInstanceMethod:@"_presentHUD:animated:" withFullSignature:{"v", "@", "B", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"unlockUIFromSource:withOptions:" withFullSignature:{"B", "i", "@", 0}];
  [v2 validateClass:@"SBLockScreenUnlockRequest"];
  [v2 validateClass:@"SBLockScreenUnlockRequest" hasInstanceMethod:@"setName:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBLockScreenUnlockRequest" hasInstanceMethod:@"setSource:" withFullSignature:{"v", "i", 0}];
  [v2 validateClass:@"SBLockScreenUnlockRequest" hasInstanceMethod:@"setIntent:" withFullSignature:{"v", "i", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"unlockWithRequest:completion:" withFullSignature:{"B", "@", "@?", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"coverSheetViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSCoverSheetViewController" hasInstanceVariable:@"_scrollGestureController" withType:"CSScrollGestureController"];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isPasscodeEntryTransientOverlayVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isLockScreenVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBIconController"];
  [v2 validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"floatingDockController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"_mainDisplayHomeScreenController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"presentLibraryForIconManager:windowScene:animated:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v2 validateClass:@"SBCoverSheetPresentationManager"];
  [v2 validateClass:@"SBCoverSheetPresentationManager" hasInstanceVariable:@"_coverSheetSlidingViewController" withType:"SBCoverSheetSlidingViewController"];
  [v2 validateClass:@"SBCoverSheetSlidingViewController" hasInstanceMethod:@"systemGesturesDelegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBCoverSheetSystemGesturesDelegate" hasInstanceMethod:@"gestureRecognizerShouldBegin:" withFullSignature:{"B", "@", 0}];
  [v2 validateClass:@"SBCoverSheetSystemGesturesDelegate" hasInstanceMethod:@"presentGestureRecognizer" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBCoverSheetSystemGesturesDelegate" hasInstanceMethod:@"dismissGestureRecognizer" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBCoverSheetPresentationManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBCoverSheetPresentationManager" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBCoverSheetPresentationManager" hasInstanceMethod:@"setCoverSheetPresented:animated:withCompletion:" withFullSignature:{"v", "B", "B", "@?", 0}];
  [v2 validateClass:@"SBCoverSheetPresentationManager" hasInstanceMethod:@"coverSheetSlidingViewControllerIfLoaded" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIViewController" hasInstanceMethod:@"_appearState" withFullSignature:{"i", 0}];
  [v2 validateClass:@"SBCoverSheetPresentationManager" hasInstanceMethod:@"isInSecureApp" withFullSignature:{"B", 0}];
  [v2 validateClass:@"CSMainPageContentViewController"];
  [v2 validateClass:@"CSCombinedListViewController"];
  [v2 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"mainPageContentViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSMainPageContentViewController" hasInstanceMethod:@"combinedListViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"NCNotificationListSectionRevealHintView" hasInstanceMethod:@"revealHintTitle" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CSCombinedListViewController" hasInstanceVariable:@"_structuredListViewController" withType:"NCNotificationStructuredListViewController"];
  [v2 validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"revealNotificationHistory:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v2 validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"listModel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"NCNotificationRootModernList" hasInstanceMethod:@"isNotificationHistoryRevealed" withFullSignature:{"B", 0}];
  [v2 validateClass:@"CSCombinedListViewController" hasInstanceVariable:@"_listPresentingContent" withType:"B"];
  [v2 validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"_allowNotificationsRevealPolicy" withFullSignature:{"B", 0}];
  [v2 validateClass:@"CSCombinedListViewController" hasInstanceMethod:@"_shouldPreventNotificationHistoryRevealForActiveDNDState" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"noteMenuButtonDoublePress" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBMainScreenActiveInterfaceOrientationWindow"];
  [v2 validateClass:@"SBSecureMainScreenActiveInterfaceOrientationWindow"];
  [v2 validateClass:@"SBSecureMainScreenActiveInterfaceOrientationWindow" isKindOfClass:@"SBMainScreenActiveInterfaceOrientationWindow"];
  [v2 validateClass:@"SBMainScreenActiveInterfaceOrientationWindow" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainScreenActiveInterfaceOrientationWindow" hasInstanceMethod:@"initWithRole:debugName:" withFullSignature:{"@", "@", "@", 0}];
  [v2 validateClass:@"SBMainScreenActiveInterfaceOrientationWindow" hasInstanceMethod:@"setContentViewController:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"isShowingHomescreen" withFullSignature:{"B", 0}];
  [v2 validateClass:@"_UIAlertControllerActionView" hasInstanceMethod:@"setHighlighted:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"SBControlCenterCoordinator"];
  [v2 validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBControlCenterCoordinator" hasInstanceMethod:@"isPresented" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"iconManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHIconManager"];
  [v2 validateClass:@"SBHIconManager" hasInstanceMethod:@"isIconDragging" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBHIconManager" hasInstanceMethod:@"isOverlayTodayOrLibraryViewVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBSystemGestureManager" hasInstanceMethod:@"isAnyTouchGestureRunning" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceVariable:@"_screenCapturer" withType:"SSScreenCapturer"];
  [v2 validateClass:@"SSScreenCapturer" hasInstanceVariable:@"_serviceWindow" withType:"SSScreenshotsWindow"];
  [v2 validateClass:@"SSScreenshotsWindow" hasInstanceMethod:@"_hostViewControllerIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication"];
  [v2 validateClass:@"SBSceneManagerCoordinator"];
  [v2 validateClass:@"SBDeviceApplicationSceneHandle"];
  [v2 validateClass:@"SBSceneManagerCoordinator" hasClassMethod:@"mainDisplaySceneManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSceneManager" hasInstanceMethod:@"sceneIdentityForApplication:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBMainDisplaySceneManager" isKindOfClass:@"SBSceneManager"];
  [v2 validateClass:@"SBSceneManager" hasInstanceMethod:@"sceneIdentityForApplication:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBMainDisplaySceneManager" hasInstanceMethod:@"fetchOrCreateApplicationSceneHandleForRequest:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"bestSnapshotWithImageName:sceneHandle:variantID:scale:referenceSize:requireExactSize:contentTypeMask:statusBarStateMask:launchingOrientation:contentOverridesContext:userInterfaceStyle:displayEdgeInfo:" withFullSignature:{"@", "@", "@", "@", "d", "{CGSize=dd}", "B", "Q", "Q", "q", "@", "q", "@", 0}];
  [v2 validateClass:@"SBApplicationSceneHandleRequest"];
  [v2 validateClass:@"SBApplicationSceneHandleRequest" hasClassMethod:@"defaultRequestForApplication:sceneIdentity:displayIdentity:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v2 validateClass:@"SBDeviceApplicationSceneHandle" hasInstanceMethod:@"displayEdgeInfoForLayoutEnvironment:" withFullSignature:{"@", "q", 0}];
  [v2 validateClass:@"SBSpotlightMultiplexingViewController"];
  [v2 validateClass:@"SBSpotlightMultiplexingViewController" hasClassMethod:@"sharedRemoteSearchViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SPUIRemoteSearchViewController"];
  [v2 validateClass:@"SPUIRemoteSearchViewController" hasInstanceMethod:@"revealProgress" withFullSignature:{"d", 0}];
  [v2 validateClass:@"SBVoiceControlTransientOverlayViewController"];
  [v2 validateClass:@"SBMainSwitcherWindow"];
  [v2 validateClass:@"SBWorkspace"];
  [v2 validateClass:@"SBWorkspace" hasClassMethod:@"mainWorkspace" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"pipCoordinator" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBPIPControllerCoordinator" hasInstanceMethod:@"isAnyPictureInPictureWindowVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"bannerManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"windowSceneManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWindowSceneManager" hasInstanceMethod:@"activeDisplayWindowScene" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBBannerManager" hasInstanceMethod:@"isDisplayingBannerInWindowScene:" withFullSignature:{"B", "@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator"];
  [v2 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController"];
  [v2 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_topAffordanceViewController" withType:"SBTopAffordanceViewController"];
  [v2 validateClass:@"SBTopAffordanceViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFloatingDockController"];
  [v2 validateClass:@"SBFloatingDockController" hasClassMethod:@"isFloatingDockSupported" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_toggleAppLibraryVisibility:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_handleSystemNotesPIPKeyShortcut:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState"];
  [v2 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"peekConfiguration" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState" isKindOfClass:@"SBLayoutState"];
  [v2 validateClass:@"SBWindowSceneManager" hasInstanceMethod:@"connectedWindowScenes" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWindowSceneManager" hasInstanceMethod:@"activeDisplayWindowSceneFollowingKeyboard" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"switcherController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"isChamoisWindowingUIEnabled" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"windowManagementContext" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherWindowManagementContext" hasInstanceMethod:@"isChamoisOrFlexibleWindowing" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentMainAppLayout" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAppLayout" hasInstanceMethod:@"leafAppLayouts" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_itemContainerForAppLayoutIfExists:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBFluidSwitcherItemContainer" hasInstanceMethod:@"isSelectable" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBAppLayout" hasInstanceVariable:@"_items" withType:"NSArray"];
  [v2 validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBDisplayItem" hasInstanceMethod:@"uniqueIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentLayoutState" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_activeDisplaySwitcherController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSystemApertureController"];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"systemApertureControllerForMainDisplay" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSystemApertureViewController"];
  [v2 validateClass:@"SBSystemApertureController" hasInstanceVariable:@"_systemApertureViewController" withType:"SBSystemApertureViewController"];
  [v2 validateClass:@"SAUISystemApertureManager"];
  [v2 validateClass:@"SBSystemApertureViewController" hasInstanceVariable:@"_systemApertureManager" withType:"SAUISystemApertureManager"];
  [v2 validateClass:@"SAUISystemApertureManager" hasInstanceVariable:@"_elementsToElementViewControllers" withType:"NSMapTable"];
  [v2 validateClass:@"SAUILayoutSpecifyingElementViewController" hasInstanceMethod:@"_axCollapseIfExpandedByUserInteraction" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBSystemApertureViewController" hasInstanceVariable:@"_orderedContainerViews" withType:"NSMutableArray"];
  [v2 validateClass:@"SBSystemApertureViewController" hasInstanceMethod:@"_elementForContainerView:" withFullSignature:{"@", "@", 0}];
  [v2 validateProtocol:@"SAElement" conformsToProtocol:@"SAElementIdentifying"];
  [v2 validateProtocol:@"SAElementIdentifying" hasRequiredInstanceMethod:@"clientIdentifier"];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"menuBarManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMenuBarManager" hasInstanceMethod:@"setMenuBarVisible:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"SBMenuBarManager" hasInstanceMethod:@"isMenuBarVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBMenuBarManager" hasInstanceMethod:@"menuBarViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMenuBarViewController" hasInstanceMethod:@"isShowingMenu" withFullSignature:{"B", 0}];
  [v2 validateClass:@"UIGestureRecognizer" hasInstanceMethod:@"_resetGestureRecognizer" withFullSignature:{"v", 0}];

  return 1;
}

uint64_t __47__AXSpringBoardServerHelper__performValidation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"AXSpringBoardServerHelper"];
  [v2 setOverrideProcessName:@"AXSpringBoardServerHelper"];
  [v2 setDebugBuild:0];

  return MEMORY[0x282138D58]();
}

void __47__AXSpringBoardServerHelper__performValidation__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"AXSB_UIScreenSafeCategory" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSB_UIAlertControllerActionViewSafeCategory" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSB_UIAlertControllerSafeCategory" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBUIWindow" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBServerHelperSBControlCenterCoordinator" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBServerVolumeControl" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBServerSBHUDController" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBServerUIApplication" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSpringBoardAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBLockScreenManager" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBReachabilityManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSB_SBApplicationSafeCategory" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSB_SBRestartManagerSafeCategory" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBDeviceApplicationSceneStatusBarBreadcrumbProviderAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXCSScrollGestureControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSB_SBSceneManagerSafeCategory" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSB_SBAssistantControllerSafeCategory" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSB_SBSystemNotesInteractionManager" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSB_SBSpotlightMultiplexingViewController" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXSBSwitcherControllerAccessibility" canInteractWithTargetClass:1];
}

- (void)_createAlertWindowSubclass
{
  v2 = NSClassFromString(&cfstr_Sbsecuremainsc.isa);
  if (!v2)
  {
    v3 = AXLogUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [AXSpringBoardServerHelper _createAlertWindowSubclass];
    }

    v2 = objc_opt_class();
  }

  ClassPair = objc_allocateClassPair(v2, "AX_SBSecureMainScreenActiveInterfaceOrientationWindow", 0);
  if (ClassPair)
  {
    objc_registerClassPair(ClassPair);
  }

  else
  {
    v5 = AXLogUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [AXSpringBoardServerHelper _createAlertWindowSubclass];
    }
  }
}

- (AXSpringBoardServerHelper)init
{
  v56.receiver = self;
  v56.super_class = AXSpringBoardServerHelper;
  v2 = [(AXSpringBoardServerHelper *)&v56 init];
  if (v2)
  {
    AXSessionIsLoginSession();
    [(AXSpringBoardServerHelper *)v2 _createAlertWindowSubclass];
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    visibleTripleClickItems = v2->_visibleTripleClickItems;
    v2->_visibleTripleClickItems = v3;

    [(AXSpringBoardServerHelper *)v2 _performValidation];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __33__AXSpringBoardServerHelper_init__block_invoke;
    location[4] = &unk_27842BBF8;
    v6 = mEMORY[0x277D75128];
    v54 = v6;
    v7 = v2;
    v55 = v7;
    AXPerformSafeBlock();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _appTransitionOccurred, @"com.apple.mobile.SubstantialTransition", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    notificationObservers = v7->_notificationObservers;
    v7->_notificationObservers = v9;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    currentQueue = [MEMORY[0x277CCABD8] currentQueue];
    v13 = [defaultCenter addObserverForName:@"SBOrientationLockChangedNotification" object:0 queue:currentQueue usingBlock:&__block_literal_global_1794];

    [(NSMutableArray *)v7->_notificationObservers addObject:v13];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    currentQueue2 = [MEMORY[0x277CCABD8] currentQueue];
    v16 = [defaultCenter2 addObserverForName:@"SBMediaNowPlayingChangedNotification" object:0 queue:currentQueue2 usingBlock:&__block_literal_global_1796];

    [(NSMutableArray *)v7->_notificationObservers addObject:v16];
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = *MEMORY[0x277D67AA8];
    currentQueue3 = [MEMORY[0x277CCABD8] currentQueue];
    v20 = [defaultCenter3 addObserverForName:v18 object:0 queue:currentQueue3 usingBlock:&__block_literal_global_1798];

    [(NSMutableArray *)v7->_notificationObservers addObject:v20];
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *MEMORY[0x277D67AF0];
    currentQueue4 = [MEMORY[0x277CCABD8] currentQueue];
    v24 = [defaultCenter4 addObserverForName:v22 object:0 queue:currentQueue4 usingBlock:&__block_literal_global_1800];

    [(NSMutableArray *)v7->_notificationObservers addObject:v24];
    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    currentQueue5 = [MEMORY[0x277CCABD8] currentQueue];
    v27 = [defaultCenter5 addObserverForName:@"AXVisualAlertEvent" object:0 queue:currentQueue5 usingBlock:&__block_literal_global_1805];

    [(NSMutableArray *)v7->_notificationObservers addObject:v27];
    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    currentQueue6 = [MEMORY[0x277CCABD8] currentQueue];
    v30 = [defaultCenter6 addObserverForName:@"AXVisualAlertEventEnded" object:0 queue:currentQueue6 usingBlock:&__block_literal_global_1820];

    [(NSMutableArray *)v7->_notificationObservers addObject:v30];
    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    v32 = *MEMORY[0x277D67A80];
    currentQueue7 = [MEMORY[0x277CCABD8] currentQueue];
    v34 = [defaultCenter7 addObserverForName:v32 object:0 queue:currentQueue7 usingBlock:&__block_literal_global_1823];

    [(NSMutableArray *)v7->_notificationObservers addObject:v34];
    objc_initWeak(location, v7);
    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    currentQueue8 = [MEMORY[0x277CCABD8] currentQueue];
    v37 = *MEMORY[0x277D67A88];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __33__AXSpringBoardServerHelper_init__block_invoke_3_1824;
    v51[3] = &unk_27842BCE8;
    objc_copyWeak(&v52, location);
    v38 = [defaultCenter8 addObserverForName:v37 object:0 queue:currentQueue8 usingBlock:v51];

    [(NSMutableArray *)v7->_notificationObservers addObject:v38];
    v39 = objc_alloc_init(AXSpringBoardServerAlertManager);
    [(AXSpringBoardServerHelper *)v7 setAlertManager:v39];

    v40 = +[AXSBHearingAidDeviceController sharedController];
    v41 = objc_alloc_init(MEMORY[0x277CE7640]);
    v42 = [MEMORY[0x277CBEB98] setWithObject:&unk_2833B12A0];
    [v41 setAllowedTrackingTypes:v42];

    v43 = [objc_alloc(MEMORY[0x277CE7648]) initWithConfiguration:v41];
    motionTrackingInputManager = v7->_motionTrackingInputManager;
    v7->_motionTrackingInputManager = v43;

    motionTrackingInputManager = [(AXSpringBoardServerHelper *)v7 motionTrackingInputManager];
    [motionTrackingInputManager setDelegate:v7];

    motionTrackingInputManager2 = [(AXSpringBoardServerHelper *)v7 motionTrackingInputManager];
    [motionTrackingInputManager2 startMonitoring];

    [(AXSpringBoardServerHelper *)v7 _monitorContinuityDisplayChanges];
    v50 = v7;
    AXPerformBlockOnMainThreadAfterDelay();
    v47 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:2];
    [(AXSpringBoardServerHelper *)v50 setFeedbackGenerator:v47];

    v48 = v50;
    objc_destroyWeak(&v52);
    objc_destroyWeak(location);
  }

  return v2;
}

void __33__AXSpringBoardServerHelper_init__block_invoke_2()
{
  v0 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v0 springBoardActionOccurred:2];
}

void __33__AXSpringBoardServerHelper_init__block_invoke_3()
{
  v0 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v0 springBoardActionOccurred:5];
}

void __33__AXSpringBoardServerHelper_init__block_invoke_4()
{
  v0 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v0 springBoardActionOccurred:2];
}

void __33__AXSpringBoardServerHelper_init__block_invoke_5()
{
  v0 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v0 springBoardActionOccurred:1];
}

void __33__AXSpringBoardServerHelper_init__block_invoke_6(uint64_t a1, void *a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v14[0] = @"bundleId";
  v4 = [v2 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"bundleId"];
  v6 = v5;
  v7 = &stru_2833AA238;
  if (v5)
  {
    v7 = v5;
  }

  v14[1] = @"visualAlertType";
  v15[0] = v7;
  v8 = [v2 userInfo];

  v9 = [v8 objectForKeyedSubscript:@"visualAlertType"];
  v10 = v9;
  v11 = &unk_2833B1288;
  if (v9)
  {
    v11 = v9;
  }

  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v3 springBoardActionOccurred:9 withPayload:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __33__AXSpringBoardServerHelper_init__block_invoke_1818()
{
  v0 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v0 springBoardActionOccurred:10 withPayload:0];
}

void __33__AXSpringBoardServerHelper_init__block_invoke_2_1821()
{
  v0 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v0 springBoardActionOccurred:8];
}

void __33__AXSpringBoardServerHelper_init__block_invoke_3_1824(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained sideAppManager];
  v3 = [v2 isDisplayingApp];

  if ((v3 & 1) == 0)
  {
    v4 = +[_AXSpringBoardServerInstance springBoardServerInstance];
    [v4 springBoardActionOccurred:3];
  }
}

- (void)dealloc
{
  v26 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __36__AXSpringBoardServerHelper_dealloc__block_invoke;
  v22 = &unk_27842BBF8;
  v4 = mEMORY[0x277D75128];
  v23 = v4;
  selfCopy = self;
  AXPerformSafeBlock();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_notificationObservers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter removeObserver:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v7);
  }

  motionTrackingInputManager = [(AXSpringBoardServerHelper *)self motionTrackingInputManager];
  [motionTrackingInputManager stopMonitoring];

  v14.receiver = self;
  v14.super_class = AXSpringBoardServerHelper;
  [(AXSpringBoardServerHelper *)&v14 dealloc];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_restoreSecurePayFeaturesIfNeeded
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)_uiController
{
  v2 = _uiController_AX_SBUIController;
  if (!_uiController_AX_SBUIController)
  {
    v3 = [NSClassFromString(&cfstr_Sbuicontroller.isa) safeValueForKey:@"sharedInstance"];
    v4 = _uiController_AX_SBUIController;
    _uiController_AX_SBUIController = v3;

    v2 = _uiController_AX_SBUIController;
  }

  return v2;
}

+ (id)_globalIdleTimeCoordinator
{
  v2 = _globalIdleTimeCoordinator_AX_SBIdleTimeController;
  if (!_globalIdleTimeCoordinator_AX_SBIdleTimeController)
  {
    v3 = [NSClassFromString(&cfstr_Sbidletimerglo.isa) safeValueForKey:@"sharedInstance"];
    v4 = _globalIdleTimeCoordinator_AX_SBIdleTimeController;
    _globalIdleTimeCoordinator_AX_SBIdleTimeController = v3;

    v2 = _globalIdleTimeCoordinator_AX_SBIdleTimeController;
  }

  return v2;
}

+ (id)_backlightController
{
  v2 = _backlightController_AX_SBBacklightController;
  if (!_backlightController_AX_SBBacklightController)
  {
    v3 = [NSClassFromString(&cfstr_Sbbacklightcon.isa) safeValueForKey:@"sharedInstanceIfExists"];
    v4 = _backlightController_AX_SBBacklightController;
    _backlightController_AX_SBBacklightController = v3;

    v2 = _backlightController_AX_SBBacklightController;
  }

  return v2;
}

+ (id)_awayController
{
  v2 = _awayController_AX_LockScreenController;
  if (!_awayController_AX_LockScreenController)
  {
    v3 = AXSBLockScreenViewController();
    v4 = _awayController_AX_LockScreenController;
    _awayController_AX_LockScreenController = v3;

    NSClassFromString(&cfstr_Sblockscreenvi.isa);
    isKindOfClass = objc_opt_isKindOfClass();
    v2 = _awayController_AX_LockScreenController;
    if ((isKindOfClass & 1) == 0)
    {
      _awayController_AX_LockScreenController = 0;

      v2 = _awayController_AX_LockScreenController;
    }
  }

  return v2;
}

+ (id)_lockScreenManager
{
  v2 = _lockScreenManager_AX_SBLockScreenManager;
  if (!_lockScreenManager_AX_SBLockScreenManager)
  {
    v3 = [NSClassFromString(&cfstr_Sblockscreenma.isa) safeValueForKey:@"sharedInstanceIfExists"];
    v4 = _lockScreenManager_AX_SBLockScreenManager;
    _lockScreenManager_AX_SBLockScreenManager = v3;

    v2 = _lockScreenManager_AX_SBLockScreenManager;
  }

  return v2;
}

+ (id)_iconController
{
  v2 = _iconController_AX_SBIconController;
  if (!_iconController_AX_SBIconController)
  {
    v3 = [NSClassFromString(&cfstr_Sbiconcontroll.isa) safeValueForKey:@"sharedInstance"];
    v4 = _iconController_AX_SBIconController;
    _iconController_AX_SBIconController = v3;

    v2 = _iconController_AX_SBIconController;
  }

  return v2;
}

+ (id)_assistantController
{
  v2 = _assistantController_AX_SBAssistantController;
  if (!_assistantController_AX_SBAssistantController)
  {
    v3 = [NSClassFromString(&cfstr_Sbassistantcon.isa) safeValueForKey:@"sharedInstanceIfExists"];
    v4 = _assistantController_AX_SBAssistantController;
    _assistantController_AX_SBAssistantController = v3;

    v2 = _assistantController_AX_SBAssistantController;
  }

  return v2;
}

+ (id)_syncController
{
  v2 = _syncController_AX_SBSyncController;
  if (!_syncController_AX_SBSyncController)
  {
    v3 = [NSClassFromString(&cfstr_Sbsynccontroll.isa) safeValueForKey:@"sharedInstance"];
    v4 = _syncController_AX_SBSyncController;
    _syncController_AX_SBSyncController = v3;

    v2 = _syncController_AX_SBSyncController;
  }

  return v2;
}

+ (id)_wallpaperController
{
  v2 = _wallpaperController_AX_SBWallpaperController;
  if (!_wallpaperController_AX_SBWallpaperController)
  {
    v3 = [NSClassFromString(&cfstr_Sbwallpapercon.isa) safeValueForKey:@"sharedInstance"];
    v4 = _wallpaperController_AX_SBWallpaperController;
    _wallpaperController_AX_SBWallpaperController = v3;

    v2 = _wallpaperController_AX_SBWallpaperController;
  }

  return v2;
}

+ (id)_axActiveWindowScene
{
  v2 = [*MEMORY[0x277D76620] safeValueForKey:@"windowSceneManager"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"activeDisplayWindowScene"];
  v5 = __UIAccessibilitySafeClass();

  return v5;
}

+ (id)_axMenuBarManager
{
  v2 = +[AXSpringBoardServerHelper _axActiveWindowScene];
  v3 = [v2 safeValueForKey:@"menuBarManager"];

  return v3;
}

- (void)serverInstance:(id)instance showAlertType:(int)type withHandler:(id)handler withData:(id)data
{
  instanceCopy = instance;
  dataCopy = data;
  handlerCopy = handler;
  [(AXSpringBoardServerHelper *)self dismissAlertWithCancel];
  v13 = [handlerCopy copy];

  alertHandler = self->_alertHandler;
  self->_alertHandler = v13;

  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__AXSpringBoardServerHelper_serverInstance_showAlertType_withHandler_withData___block_invoke;
  v18[3] = &unk_27842BD10;
  typeCopy = type;
  v18[4] = self;
  v19 = dataCopy;
  v20 = instanceCopy;
  v16 = instanceCopy;
  v17 = dataCopy;
  [mainAccessQueue performAsynchronousWritingBlock:v18];
}

uint64_t __79__AXSpringBoardServerHelper_serverInstance_showAlertType_withHandler_withData___block_invoke(uint64_t result)
{
  switch(*(result + 56))
  {
    case 0:
      return [*(result + 32) _handleTripleClickAskAlert];
    case 1:
      return [*(result + 32) _handleZoomInBuddyAlert];
    case 2:
      return [*(result + 32) _handleZoomConflictAlert:*(result + 40)];
    case 3:
      return [*(result + 32) _handleZoomTripleClickAfterConflict];
    case 4:
      return [*(result + 32) _handleSwitchUsageConfirmed];
    case 5:
      return [*(result + 32) _handleVoiceOverUsageConfirmation];
    case 6:
      return [*(result + 32) _handleTouchAccommodationsUsageConfirmed];
    case 7:
      return [*(result + 32) _handleDisableBrightnessFiltersAlert:*(result + 40)];
    case 8:
      return [*(result + 32) handleBrokenHomeButtonAlert];
    case 9:
      return [*(result + 32) _handleDisableSwitchControlConfirmation];
    case 0xA:
      return [*(result + 32) _handleDisableAssistiveTouchConfirmation];
    case 0xB:
      return [*(result + 32) _handleConfirmRebootDevice];
    case 0xC:
      return [*(result + 32) _handleVONoHomeButtonGestureAlert];
    case 0xD:
      v3 = *(result + 32);
      v4 = 0;
      return [v3 _handleDisallowUSBRestrictedModeVOInformativeOnly:v4];
    case 0xE:
      v1 = *(result + 32);
      v2 = 0;
      return [v1 _handleDisallowUSBRestrictedModeSCInformativeOnly:v2];
    case 0xF:
      v3 = *(result + 32);
      v4 = 1;
      return [v3 _handleDisallowUSBRestrictedModeVOInformativeOnly:v4];
    case 0x10:
      v1 = *(result + 32);
      v2 = 1;
      return [v1 _handleDisallowUSBRestrictedModeSCInformativeOnly:v2];
    case 0x11:
      return [*(result + 32) _handleAlwaysOnBluetoothModeForVoiceOver];
    case 0x12:
      return [*(result + 32) _handleDisableFKAConfirmation];
    case 0x13:
      return [*(result + 32) _handleASTMenuFullForInstance:*(result + 48)];
    case 0x14:
      v5 = *(result + 32);
      v6 = 1;
      v7 = 0;
      goto LABEL_20;
    case 0x15:
      v5 = *(result + 32);
      v6 = 0;
      goto LABEL_29;
    case 0x16:
      v5 = *(result + 32);
      v6 = 1;
LABEL_29:
      v7 = 1;
LABEL_20:
      result = [v5 _handleASTMenuCustomizeAddDwell:v6 addScroll:v7];
      break;
    case 0x17:
      result = [*(result + 32) _handleConnectedDevicesHaveAssistiveTouchCustomActions];
      break;
    case 0x18:
      result = [*(result + 32) _handleSecureItentAlertForSwitchAST];
      break;
    case 0x19:
      result = [*(result + 32) _handleLiveTranscriptionConfirmation];
      break;
    case 0x1A:
      result = [*(result + 32) _handleDisableOnDeviceEyeTrackingConfirmation];
      break;
    default:
      return result;
  }

  return result;
}

- (void)hideAlertWithServerInstance:(id)instance
{
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__AXSpringBoardServerHelper_hideAlertWithServerInstance___block_invoke;
  v5[3] = &unk_27842BB18;
  v5[4] = self;
  [mainAccessQueue performAsynchronousWritingBlock:v5];
}

- (id)_serviceForRemoteViewType:(int64_t)type
{
  if (type > 6)
  {
    sharedInstance = 0;
  }

  else
  {
    sharedInstance = [**(&unk_27842C338 + type) sharedInstance];
  }

  return sharedInstance;
}

- (void)serverInstance:(id)instance hideRemoteViewType:(int64_t)type
{
  v5 = [(AXSpringBoardServerHelper *)self _serviceForRemoteViewType:type];
  if (v5)
  {
    v7 = v5;
    alertManager = [(AXSpringBoardServerHelper *)self alertManager];
    [alertManager hideAXUIViewService:v7];

    v5 = v7;
  }
}

- (BOOL)serverInstance:(id)instance isShowingRemoteViewType:(int64_t)type
{
  v5 = [(AXSpringBoardServerHelper *)self _serviceForRemoteViewType:type];
  if (v5)
  {
    alertManager = [(AXSpringBoardServerHelper *)self alertManager];
    v7 = [alertManager isShowingAXUIViewService:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isVoiceControlRunningWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__AXSpringBoardServerHelper_isVoiceControlRunningWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __69__AXSpringBoardServerHelper_isVoiceControlRunningWithServerInstance___block_invoke(uint64_t a1)
{
  if ([NSClassFromString(&cfstr_Sbassistantcon.isa) safeBoolForKey:@"isVisible"])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    if (!_UIActionSheetDismissDuration_block_invoke_SBVoiceControlOverlayClass)
    {
      _UIActionSheetDismissDuration_block_invoke_SBVoiceControlOverlayClass = NSClassFromString(&cfstr_Sbvoicecontrol_0.isa);
    }

    v4 = [NSClassFromString(&cfstr_Sbmainworkspac.isa) safeValueForKey:@"_instanceIfExists"];
    v2 = [v4 safeValueForKey:@"transientOverlayPresentationManager"];
    v3 = [v2 safeValueForKey:@"topmostPresentedViewController"];
    *(*(*(a1 + 32) + 8) + 24) = objc_opt_isKindOfClass() & 1;
  }
}

- (double)volumeLevelWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__AXSpringBoardServerHelper_volumeLevelWithServerInstance___block_invoke;
  v7[3] = &unk_27842BD38;
  v7[4] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __59__AXSpringBoardServerHelper_volumeLevelWithServerInstance___block_invoke(uint64_t a1)
{
  if (CFAbsoluteTimeGetCurrent() - *&_LastVolumeDisplay >= 1.0)
  {
    v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v5 = 0.0;
    v4 = 0;
    [v2 getActiveCategoryVolume:&v5 andName:&v4];
    v3 = v4;
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = *&_CurrentVolume;
  }
}

- (BOOL)isReachabilityActive
{
  v2 = [NSClassFromString(&cfstr_Sbreachability.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeBoolForKey:@"reachabilityModeActive"];

  return v3;
}

- (void)setReachabilityActive:(BOOL)active
{
  activeCopy = active;
  v4 = [NSClassFromString(&cfstr_Sbreachability.isa) safeValueForKey:@"sharedInstance"];
  if ([v4 safeBoolForKey:@"_reachabilityModeActive"] == activeCopy)
  {
    v5 = AXLogSpringboardServer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_INFO, "reachability state same as desired change, doing nothing", buf, 2u);
    }
  }

  else
  {
    v6 = v4;
    AXPerformSafeBlock();
    v5 = v6;
  }
}

- (BOOL)isRingerMutedWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__AXSpringBoardServerHelper_isRingerMutedWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __61__AXSpringBoardServerHelper_isRingerMutedWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [*MEMORY[0x277D76620] safeValueForKey:@"ringerControl"];
  v3 = __UIAccessibilitySafeClass();

  *(*(*(a1 + 32) + 8) + 24) = [v3 safeBoolForKey:@"_accessibilityIsRingerMuted"];
}

- (BOOL)isOrientationLockedWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__AXSpringBoardServerHelper_isOrientationLockedWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __67__AXSpringBoardServerHelper_isOrientationLockedWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sborientationl_0.isa) safeValueForKey:@"sharedInstance"];
  *(*(*(a1 + 32) + 8) + 24) = [v2 safeBoolForKey:@"isUserLocked"];
}

void __65__AXSpringBoardServerHelper_serverInstance_setOrientationLocked___block_invoke()
{
  v0 = [NSClassFromString(&cfstr_Sborientationl_0.isa) safeValueForKey:@"sharedInstance"];
  [v0 lock];
}

void __65__AXSpringBoardServerHelper_serverInstance_setOrientationLocked___block_invoke_2()
{
  v0 = [NSClassFromString(&cfstr_Sborientationl_0.isa) safeValueForKey:@"sharedInstance"];
  [v0 unlock];
}

- (void)openCustomGestureCreationForASTWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v3 = instanceCopy;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __79__AXSpringBoardServerHelper_openCustomGestureCreationForASTWithServerInstance___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)] & 1) == 0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=ACCESSIBILITY&path=TOUCH_REACHABILITY_TITLE/AIR_TOUCH_TITLE/CreateCustomGesture"];
    [*MEMORY[0x277D76620] applicationOpenURL:v1];
  }
}

- (void)openMenuCustomizationForASTWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v3 = instanceCopy;
  AXPerformBlockOnMainThread();
}

void __75__AXSpringBoardServerHelper_openMenuCustomizationForASTWithServerInstance___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)] & 1) == 0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=ACCESSIBILITY&path=TOUCH_REACHABILITY_TITLE/AIR_TOUCH_TITLE/AssistiveTouchCustomize"];
    [*MEMORY[0x277D76620] applicationOpenURL:v1];
  }
}

- (void)openCustomGestureCreationForSCATWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v3 = instanceCopy;
  AXPerformBlockOnMainThread();
}

void __80__AXSpringBoardServerHelper_openCustomGestureCreationForSCATWithServerInstance___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)] & 1) == 0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=ACCESSIBILITY&path=ScannerSwitchTitle/CustomGesturesIdentifier/CreateCustomGesture"];
    [*MEMORY[0x277D76620] applicationOpenURL:v1];
  }
}

- (void)openCommandAndControlSettingsWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v3 = instanceCopy;
  AXPerformBlockOnMainThread();
}

void __77__AXSpringBoardServerHelper_openCommandAndControlSettingsWithServerInstance___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)] & 1) == 0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=ACCESSIBILITY&path=CommandAndControlTitle"];
    [*MEMORY[0x277D76620] applicationOpenURL:v1];
  }
}

- (void)openCommandAndControlCommandsWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v3 = instanceCopy;
  AXPerformBlockOnMainThread();
}

void __77__AXSpringBoardServerHelper_openCommandAndControlCommandsWithServerInstance___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)] & 1) == 0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=ACCESSIBILITY&path=CommandAndControlTitle/COMMAND_AND_CONTROL_COMMANDS"];
    [*MEMORY[0x277D76620] applicationOpenURL:v1];
  }
}

- (void)openCommandAndControlVocabularyWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v3 = instanceCopy;
  AXPerformBlockOnMainThread();
}

void __79__AXSpringBoardServerHelper_openCommandAndControlVocabularyWithServerInstance___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)] & 1) == 0)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"prefs:root=ACCESSIBILITY&path=CommandAndControlTitle/COMMAND_AND_CONTROL_VOCABULARY/VOCABULARY"];
    [*MEMORY[0x277D76620] applicationOpenURL:v1];
  }
}

- (BOOL)isScreenLockedWithServerInstance:(id)instance
{
  server = [MEMORY[0x277CE7E40] server];
  v4 = [server isScreenLockedWithPasscode:0];

  return v4;
}

- (BOOL)isCarPlayConnected
{
  carSessionStatus = self->_carSessionStatus;
  if (!carSessionStatus)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF89F8]);
    v5 = self->_carSessionStatus;
    self->_carSessionStatus = v4;

    carSessionStatus = self->_carSessionStatus;
  }

  currentSession = [(CARSessionStatus *)carSessionStatus currentSession];
  v7 = currentSession != 0;

  return v7;
}

- (BOOL)isSystemSleepingWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__AXSpringBoardServerHelper_isSystemSleepingWithServerInstance___block_invoke;
  v7[3] = &unk_27842BBA8;
  v7[4] = self;
  v7[5] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

void __64__AXSpringBoardServerHelper_isSystemSleepingWithServerInstance___block_invoke(uint64_t a1)
{
  v3 = SBAXBacklightControllerInstance();
  if ([v3 safeBoolForKey:@"screenIsOn"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 32) isCarPlayConnected] ^ 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (BOOL)isMakingEmergencyCallWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__AXSpringBoardServerHelper_isMakingEmergencyCallWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __69__AXSpringBoardServerHelper_isMakingEmergencyCallWithServerInstance___block_invoke(uint64_t a1)
{
  v3 = AXSBLockScreenEnvironment();
  v2 = [v3 safeValueForKey:@"callController"];
  *(*(*(a1 + 32) + 8) + 24) = [v2 safeBoolForKey:@"isMakingEmergencyCall"];
}

- (BOOL)isPasscodeRequiredOnLockWithServerInstance:(id)instance
{
  v5 = 0;
  server = [MEMORY[0x277CE7E40] server];
  [server isScreenLockedWithPasscode:&v5];

  return v5;
}

- (void)isMediaPlayingWithServerInstance:(id)instance forBundleId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (isMediaPlayingWithServerInstance_forBundleId_completion__onceToken != -1)
  {
    [AXSpringBoardServerHelper isMediaPlayingWithServerInstance:forBundleId:completion:];
  }

  MRMediaRemoteGetLocalOrigin();
  v10 = idCopy;
  v11 = completionCopy;
  v8 = completionCopy;
  v9 = idCopy;
  MRMediaRemoteGetNowPlayingClientForOrigin();
}

uint64_t __85__AXSpringBoardServerHelper_isMediaPlayingWithServerInstance_forBundleId_completion___block_invoke()
{
  isMediaPlayingWithServerInstance_forBundleId_completion__queue = dispatch_queue_create("media-retrieval-ax-queue", 0);

  return MEMORY[0x2821F96F8]();
}

void __85__AXSpringBoardServerHelper_isMediaPlayingWithServerInstance_forBundleId_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = MRNowPlayingClientGetBundleIdentifier();
    if ([v4 isEqualToString:*(a1 + 32)] & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", *MEMORY[0x277CE6910]) && ((objc_msgSend(v4, "hasPrefix:", *MEMORY[0x277CE6938]) & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", *MEMORY[0x277CE6940])) || !objc_msgSend(*(a1 + 32), "length"))
    {
      MRMediaRemoteGetLocalOrigin();
      v5 = *(a1 + 40);
      MRMediaRemoteGetNowPlayingApplicationPlaybackStateForOrigin();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __61__AXSpringBoardServerHelper_resetDimTimerWithServerInstance___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() _globalIdleTimeCoordinator];
  [v2 resetIdleTimerForReason:@"AccessibilityTimerReset"];
}

- (void)openAppSwitcherWithServerInstance:(id)instance
{
  v19 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21FE6B000, v4, OS_LOG_TYPE_DEFAULT, "AXSBServer handling openAppSwitcher", buf, 2u);
  }

  v5 = [NSClassFromString(&cfstr_Sbsystemgestur.isa) safeValueForKey:@"mainDisplayManager"];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = 0;
  v6 = v5;
  AXPerformSafeBlock();
  v7 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v18 = 0;
    v16 = v6;
    AXPerformSafeBlock();
    v8 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = 0;
  }

  server = [MEMORY[0x277CE7D30] server];
  isGuidedAccessActive = [server isGuidedAccessActive];

  if (isGuidedAccessActive & 1 | ((v8 & 1) == 0))
  {
    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithBool:isGuidedAccessActive];
      v13 = [MEMORY[0x277CCABB0] numberWithBool:v8 & 1];
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_21FE6B000, v11, OS_LOG_TYPE_DEFAULT, "AXSBServer: will not perform openAppSwitcher. gaxActive=%@ generallyAllowed=%@", buf, 0x16u);
    }
  }

  else
  {
    v15 = instanceCopy;
    AXPerformBlockOnMainThread();
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __63__AXSpringBoardServerHelper_openAppSwitcherWithServerInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isGestureWithTypeAllowed:45];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __63__AXSpringBoardServerHelper_openAppSwitcherWithServerInstance___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isGestureWithTypeAllowed:2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __63__AXSpringBoardServerHelper_openAppSwitcherWithServerInstance___block_invoke_1897(uint64_t a1)
{
  if ([*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)])
  {
    v1 = AXLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_21FE6B000, v1, OS_LOG_TYPE_DEFAULT, "AXSBServer: will not perform openAppSwitcher. screen appears to be locked", v2, 2u);
    }
  }

  else
  {

    AXPerformSafeBlock();
  }
}

void __63__AXSpringBoardServerHelper_openAppSwitcherWithServerInstance___block_invoke_2_1898()
{
  v0 = AXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_21FE6B000, v0, OS_LOG_TYPE_DEFAULT, "AXSBServer: Will ask app to invoke _handleOpenAppSwitcherShortcut: to reveal app switcher", v2, 2u);
  }

  v1 = [MEMORY[0x277D75128] sharedApplication];
  [v1 _handleOpenAppSwitcherShortcut:0];
}

void __54__AXSpringBoardServerHelper_simulateEdgePressHaptics___block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 _tapticEngine];
  [v1 actuateFeedback:0];

  v3 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v3 _tapticEngine];
  [v2 actuateFeedback:1];
}

void __64__AXSpringBoardServerHelper_toggleAppLibraryWithServerInstance___block_invoke(uint64_t a1)
{
  if ([NSClassFromString(&cfstr_Sbfloatingdock.isa) safeBoolForKey:@"isFloatingDockSupported"])
  {
    v2 = *MEMORY[0x277D76620];

    [v2 _toggleAppLibraryVisibility:0];
  }

  else
  {
    v3 = *(a1 + 32);
    v7 = [objc_opt_class() _iconController];
    v4 = [v7 safeValueForKey:@"iconManager"];
    v5 = [v7 safeValueForKey:@"_mainDisplayHomeScreenController"];
    v6 = +[AXSpringBoardServerHelper _axActiveWindowScene];
    [v5 presentLibraryForIconManager:v4 windowScene:v6 animated:1];
  }
}

- (BOOL)dismissSiriWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  AXPerformBlockOnMainThread();
  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v4;
}

void __59__AXSpringBoardServerHelper_dismissSiriWithServerInstance___block_invoke_2(uint64_t a1)
{
  v3 = +[AXSpringBoardServerHelper _assistantController];
  v2 = +[AXSpringBoardServerHelper _axActiveWindowScene];
  [v3 dismissAssistantViewIfNecessaryInWindowScene:v2];

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (void)openVoiceControlWithServerInstance:(id)instance
{
  v4 = [NSClassFromString(&cfstr_Sbvoicecontrol.isa) safeValueForKey:@"sharedInstance"];
  if (([NSClassFromString(&cfstr_Sbvoicecontrol.isa) safeBoolForKey:@"isVisible"]& 1) == 0)
  {
    v3 = [v4 safeValueForKey:@"handleHomeButtonHeld"];
  }
}

- (void)openTypeToSiriWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getSiriSimpleActivationSourceClass_softClass;
  v11 = getSiriSimpleActivationSourceClass_softClass;
  if (!getSiriSimpleActivationSourceClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getSiriSimpleActivationSourceClass_block_invoke;
    v7[3] = &unk_27842BD38;
    v7[4] = &v8;
    __getSiriSimpleActivationSourceClass_block_invoke(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = objc_alloc_init(v4);
  [v6 activateFromSource:48];
}

void __59__AXSpringBoardServerHelper_armApplePayWithServerInstance___block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPassLibraryClass_softClass;
  v7 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPKPassLibraryClass_block_invoke;
    v3[3] = &unk_27842BD38;
    v3[4] = &v4;
    __getPKPassLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  v2 = [v0 sharedInstance];
  [v2 presentContactlessInterfaceForDefaultPassFromSource:0 completion:0];
}

- (BOOL)isScreenshotWindowVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  AXPerformBlockOnMainThread();
  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v4;
}

void __73__AXSpringBoardServerHelper_isScreenshotWindowVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*MEMORY[0x277D76620] safeValueForKey:@"_screenCapturer"];
  v3 = [v2 safeValueForKey:@"_serviceWindow"];
  v4 = [v3 safeValueForKey:@"_hostViewControllerIfExists"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 view];
  *(*(*(a1 + 32) + 8) + 24) = _SBAXIsViewVisible(v6);
}

- (BOOL)isNotificationVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  AXPerformBlockOnMainThread();
  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v4;
}

uint64_t __69__AXSpringBoardServerHelper_isNotificationVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessibilityIsNotificationVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isBannerVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  AXPerformBlockOnMainThread();
  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v4;
}

uint64_t __63__AXSpringBoardServerHelper_isBannerVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessibilityIsBannerVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isLongLookNotificationVisibleWithServerInstance:(id)instance
{
  v3 = [*MEMORY[0x277D76620] safeValueForKey:@"notificationDispatcher"];
  v4 = [v3 safeValueForKey:@"bannerDestination"];
  if ([v4 safeBoolForKey:@"isPresentingBannerInLongLook"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 safeValueForKey:@"dashBoardDestination"];
    v5 = [v6 safeBoolForKey:@"isPresentingNotificationInLongLook"];
  }

  return v5;
}

- (BOOL)isRemoteTransientOverlayVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  AXPerformBlockOnMainThread();
  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v4;
}

uint64_t __79__AXSpringBoardServerHelper_isRemoteTransientOverlayVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accessibilityIsRemoteTransientOverlayVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)toggleNotificationCenterWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v3 = instanceCopy;
  AXPerformBlockOnMainThread();
}

uint64_t __72__AXSpringBoardServerHelper_toggleNotificationCenterWithServerInstance___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = AXLogSpringboardServer();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) isNotificationCenterVisibleWithServerInstance:*(a1 + 40)];
    v6[0] = 67109120;
    v6[1] = v3 ^ 1;
    _os_log_impl(&dword_21FE6B000, v2, OS_LOG_TYPE_INFO, "toggle NC: will show %d", v6, 8u);
  }

  result = [*(a1 + 32) _accessibilityShowNotificationCenter:objc_msgSend(*(a1 + 32) serverInstance:{"isNotificationCenterVisibleWithServerInstance:", *(a1 + 40)) ^ 1, *(a1 + 40)}];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isNotificationCenterVisibleWithServerInstance:(id)instance
{
  v21 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__AXSpringBoardServerHelper_isNotificationCenterVisibleWithServerInstance___block_invoke;
  v12[3] = &unk_27842BDB0;
  v12[4] = self;
  v14 = &v15;
  v6 = instanceCopy;
  v13 = v6;
  [mainAccessQueue performSynchronousReadingBlock:v12];

  v7 = AXLogSpringboardServer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(v16 + 24);
    *buf = 67109120;
    v20 = v8;
    _os_log_impl(&dword_21FE6B000, v7, OS_LOG_TYPE_INFO, "NC center is visible: %d", buf, 8u);
  }

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void __75__AXSpringBoardServerHelper_isNotificationCenterVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) coverSheetViewController];
  v2 = [v10 safeValueForKey:@"mainPageContentViewController"];
  v3 = [v2 safeValueForKey:@"combinedListViewController"];
  v4 = [v3 safeValueForKey:@"_structuredListViewController"];
  v5 = [v4 safeValueForKey:@"listModel"];
  v6 = [v5 safeBoolForKey:@"isNotificationHistoryRevealed"];

  if ([*(a1 + 32) isCoverSheetVisibleWithServerInstance:*(a1 + 40)] && (v6 & 1) != 0)
  {
    v7 = [v10 safeValueForKey:@"coverSheetView"];
    v8 = [v7 safeValueForKey:@"scrollView"];
    v9 = [v8 safeUnsignedIntegerForKey:@"currentPageIndex"];
    *(*(*(a1 + 48) + 8) + 24) = v9 == [v10 safeUnsignedIntegerForKey:@"_indexOfMainPage"];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (BOOL)isCoverSheetVisibleWithServerInstance:(id)instance
{
  v18 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__AXSpringBoardServerHelper_isCoverSheetVisibleWithServerInstance___block_invoke;
  v11[3] = &unk_27842BDD8;
  v11[4] = self;
  v11[5] = &v12;
  [mainAccessQueue performSynchronousReadingBlock:v11];

  v6 = AXLogSpringboardServer();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(v13 + 24);
    *buf = 67109120;
    v17 = v7;
    _os_log_impl(&dword_21FE6B000, v6, OS_LOG_TYPE_INFO, "CS is visible: %d", buf, 8u);
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __67__AXSpringBoardServerHelper_isCoverSheetVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _accessibilityCoverSheetPresentationManagerSharedInstance];
  v2 = [v3 safeValueForKey:@"coverSheetSlidingViewControllerIfLoaded"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 safeIntForKey:@"_appearState"] != 0;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 safeBoolForKey:@"isInSecureApp"] ^ 1;
  }
}

- (BOOL)serverInstance:(id)instance showNotificationCenter:(BOOL)center
{
  instanceCopy = instance;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = dispatch_semaphore_create(0);
  v8 = instanceCopy;
  v9 = v5;
  AXPerformBlockOnMainThread();
  dispatch_semaphore_wait(v9, 5uLL);

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v6;
}

intptr_t __67__AXSpringBoardServerHelper_serverInstance_showNotificationCenter___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _accessibilityShowNotificationCenter:*(a1 + 64) serverInstance:*(a1 + 40)];
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

void __67__AXSpringBoardServerHelper_serverInstance_setReachabilityEnabled___block_invoke(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbreachability.isa) safeValueForKey:@"sharedInstance"];
  [v2 setReachabilityEnabled:*(a1 + 32)];
}

- (BOOL)serverInstance:(id)instance showControlCenter:(BOOL)center
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7 = dispatch_semaphore_create(0);
  AXPerformBlockOnMainThread();
  dispatch_semaphore_wait(v7, 5uLL);

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

intptr_t __62__AXSpringBoardServerHelper_serverInstance_showControlCenter___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) accessibilityShowControlCenter:*(a1 + 56)];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)isControlCenterVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__AXSpringBoardServerHelper_isControlCenterVisibleWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __70__AXSpringBoardServerHelper_isControlCenterVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbcontrolcente.isa) safeValueForKey:@"sharedInstanceIfExists"];
  *(*(*(a1 + 32) + 8) + 24) = [v2 safeBoolForKey:@"isPresented"];
}

- (void)toggleDockWithServerInstance:(id)instance
{
  instanceCopy = instance;
  if (![(AXSpringBoardServerHelper *)self isScreenLockedWithServerInstance:instanceCopy])
  {
    server = [MEMORY[0x277CE7D30] server];
    isGuidedAccessActive = [server isGuidedAccessActive];

    if (isGuidedAccessActive)
    {
      v7 = GAXLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FE6B000, v7, OS_LOG_TYPE_DEFAULT, "Can't toggle dock. GAX is active.", buf, 2u);
      }
    }

    else
    {
      v8 = instanceCopy;
      AXPerformBlockOnMainThread();
    }
  }
}

void __58__AXSpringBoardServerHelper_toggleDockWithServerInstance___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  AXPerformSafeBlock();
}

void __58__AXSpringBoardServerHelper_toggleDockWithServerInstance___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _axFloatingDockController];
  if ([v2 safeBoolForKey:@"_allowGestureRecognizers"])
  {
    if ([*(a1 + 32) isDockVisibleWithServerInstance:*(a1 + 40)])
    {
      [v2 dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
    }

    else
    {
      [v2 presentFloatingDockIfDismissedAnimated:1 completionHandler:0];
    }
  }
}

- (BOOL)isStatusBarNativeFocusableWithServerInstance:(id)instance includingNonDismissableElements:(BOOL)elements
{
  if (!_AXSApplicationAccessibilityEnabled())
  {
    return 0;
  }

  if ((isStatusBarNativeFocusableWithServerInstance_includingNonDismissableElements__HasLoadedUIAccessibility & 1) == 0)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    isStatusBarNativeFocusableWithServerInstance_includingNonDismissableElements__HasLoadedUIAccessibility = objc_opt_respondsToSelector() & 1;

    if (isStatusBarNativeFocusableWithServerInstance_includingNonDismissableElements__HasLoadedUIAccessibility != 1)
    {
      return 0;
    }
  }

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [mEMORY[0x277D75128]2 _accessibilityStatusBarElements:0 sorted:0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__AXSpringBoardServerHelper_isStatusBarNativeFocusableWithServerInstance_includingNonDismissableElements___block_invoke;
  v11[3] = &__block_descriptor_33_e11_B24__0_8Q16l;
  elementsCopy = elements;
  v8 = [v7 axFilterObjectsUsingBlock:v11];

  v9 = [v8 count] != 0;
  return v9;
}

uint64_t __106__AXSpringBoardServerHelper_isStatusBarNativeFocusableWithServerInstance_includingNonDismissableElements___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _accessibilityIsNonDismissableStatusBarElement];
  v5 = [v3 accessibilityRespondsToUserInteraction];

  if (v5 && v4)
  {
    LOBYTE(v5) = *(a1 + 32);
  }

  return v5 & 1;
}

- (BOOL)isSiriVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__AXSpringBoardServerHelper_isSiriVisibleWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

uint64_t __61__AXSpringBoardServerHelper_isSiriVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  result = [NSClassFromString(&cfstr_Sbassistantcon.isa) safeBoolForKey:@"isVisible"];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)_axFloatingDockController
{
  v2 = +[AXSpringBoardServerHelper _axActiveWindowScene];
  v3 = [v2 safeValueForKey:@"floatingDockController"];

  return v3;
}

- (BOOL)isDockVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v5 = 0;
  AXSessionIsLoginSession();

  return 0;
}

void __61__AXSpringBoardServerHelper_isDockVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _axFloatingDockController];
  if ([v3 safeBoolForKey:@"isFloatingDockFullyPresented"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v3 safeBoolForKey:@"isPresentingFolder"];
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (BOOL)isShowingNonSystemAppWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__AXSpringBoardServerHelper_isShowingNonSystemAppWithServerInstance___block_invoke;
  v8[3] = &unk_27842BE90;
  v10 = &v11;
  v8[4] = self;
  v6 = instanceCopy;
  v9 = v6;
  [mainAccessQueue performSynchronousReadingBlock:v8];

  LOBYTE(instanceCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return instanceCopy;
}

uint64_t __69__AXSpringBoardServerHelper_isShowingNonSystemAppWithServerInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isShowingHomescreenWithServerInstance:*(a1 + 40)];
  if (result & 1) != 0 || (result = [*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)], (result) || (result = objc_msgSend(*(a1 + 32), "isSystemAppShowingAnAlertWithServerInstance:", *(a1 + 40)), (result) || (result = objc_msgSend(*(a1 + 32), "isControlCenterVisibleWithServerInstance:", *(a1 + 40)), (result))
  {
    v3 = 0;
  }

  else
  {
    result = [*(a1 + 32) isAppSwitcherVisibleWithServerInstance:*(a1 + 40)];
    v3 = result ^ 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (BOOL)isPasscodeLockVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__AXSpringBoardServerHelper_isPasscodeLockVisibleWithServerInstance___block_invoke;
  v7[3] = &unk_27842BBA8;
  v7[4] = self;
  v7[5] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

uint64_t __69__AXSpringBoardServerHelper_isPasscodeLockVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPasscodeLockVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isLockScreenVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__AXSpringBoardServerHelper_isLockScreenVisibleWithServerInstance___block_invoke;
  v7[3] = &unk_27842BBA8;
  v7[4] = self;
  v7[5] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

uint64_t __67__AXSpringBoardServerHelper_isLockScreenVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isLockScreenVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isShowingHomescreenWithServerInstance:(id)instance
{
  instanceCopy = instance;
  if ([(AXSpringBoardServerHelper *)self isSystemAppShowingAnAlertWithServerInstance:instanceCopy])
  {
    v5 = AXFrontBoardSystemAppAlertWindow();
    NSClassFromString(&cfstr_Sbhomescreenwi.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  v7 = [(AXSpringBoardServerHelper *)self isAppSwitcherPeekingWithServerInstance:instanceCopy];
  v8 = [*MEMORY[0x277D76620] safeBoolForKey:@"isShowingHomescreen"] & isKindOfClass | v7;

  return v8 & 1;
}

- (BOOL)isContinuitySessionActiveWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__AXSpringBoardServerHelper_isContinuitySessionActiveWithServerInstance___block_invoke;
  v7[3] = &unk_27842BBA8;
  v7[4] = self;
  v7[5] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

uint64_t __73__AXSpringBoardServerHelper_isContinuitySessionActiveWithServerInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) contintuityDisplayIsActive];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_monitorContinuityDisplayChanges
{
  configurationForContinuityDisplay = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];
  [configurationForContinuityDisplay setNeedsUserInteractivePriority:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__AXSpringBoardServerHelper__monitorContinuityDisplayChanges__block_invoke;
  v5[3] = &unk_27842BEB8;
  v5[4] = self;
  [configurationForContinuityDisplay setTransitionHandler:v5];
  v4 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForContinuityDisplay];
  [(AXSpringBoardServerHelper *)self setContinuityDisplayMonitor:v4];
}

void __61__AXSpringBoardServerHelper__monitorContinuityDisplayChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4 != 0;
  v6 = v5 ^ [*(a1 + 32) contintuityDisplayIsActive];
  [*(a1 + 32) setContintuityDisplayIsActive:v5];
  v7 = AXLogSpringboardServer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_21FE6B000, v7, OS_LOG_TYPE_INFO, "Continuity state changed, is active: %@", &v11, 0xCu);
  }

  if (v6)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D81C98], 0, 0, 1u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTypeToSiriVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__AXSpringBoardServerHelper_isTypeToSiriVisibleWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __67__AXSpringBoardServerHelper_isTypeToSiriVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  v8 = [NSClassFromString(&cfstr_Sbassistantcon.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v2 = [v8 safeValueForKey:@"currentSession"];
  v3 = [v2 safeValueForKey:@"presentationContext"];

  v4 = [v8 safeBoolForKey:@"isSystemAssistantExperienceEnabled"];
  v5 = [v3 safeBoolForKey:@"isAssistantPresented"];
  v6 = [v3 safeIntForKey:@"modality"];
  v7 = (v6 == 2) & [v3 safeBoolForKey:@"isKeyboardVisible"];
  if (!v5)
  {
    LOBYTE(v7) = 0;
  }

  if (!v4)
  {
    LOBYTE(v7) = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
}

- (BOOL)isAppSwitcherVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__AXSpringBoardServerHelper_isAppSwitcherVisibleWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __68__AXSpringBoardServerHelper_isAppSwitcherVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"sharedInstanceIfExists"];
  *(*(*(a1 + 32) + 8) + 24) = [v2 safeBoolForKey:@"isAnySwitcherVisible"];
}

- (BOOL)isAppSwitcherPeekingWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__AXSpringBoardServerHelper_isAppSwitcherPeekingWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __68__AXSpringBoardServerHelper_isAppSwitcherPeekingWithServerInstance___block_invoke(uint64_t a1)
{
  v3 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v2 = [v3 safeValueForKeyPath:@"_activeDisplaySwitcherController._currentLayoutState"];
  if ([v2 safeIntegerForKey:@"peekConfiguration"] >= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (BOOL)isShelfSwitcherVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__AXSpringBoardServerHelper_isShelfSwitcherVisibleWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __70__AXSpringBoardServerHelper_isShelfSwitcherVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  v4 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v2 = [v4 safeValueForKeyPath:@"_activeDisplaySwitcherController.contentViewController"];
  v3 = [v2 safeDictionaryForKey:@"visibleShelves"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 count] != 0;
}

- (BOOL)isStageManagerSwitcherVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__AXSpringBoardServerHelper_isStageManagerSwitcherVisibleWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __77__AXSpringBoardServerHelper_isStageManagerSwitcherVisibleWithServerInstance___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v1 = [*MEMORY[0x277D76620] safeValueForKey:@"windowSceneManager"];
  v2 = __UIAccessibilitySafeClass();

  v13 = v2;
  [v2 safeSetForKey:@"connectedWindowScenes"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) safeValueForKey:@"switcherController"];
        if ([v8 safeBoolForKey:@"isChamoisWindowingUIEnabled"])
        {
          v9 = [v8 safeValueForKey:@"_currentLayoutState"];
          v10 = [v9 safeIntegerForKey:@"unlockedEnvironmentMode"];

          if (v10 == 3)
          {
            *(*(*(a1 + 32) + 8) + 24) = 1;

            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

void __66__AXSpringBoardServerHelper_dismissAppSwitcherWithServerInstance___block_invoke_2()
{
  v0 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKeyPath:@"sharedInstance._activeDisplaySwitcherController"];
  [v0 dismissMainAndFloatingSwitchersWithSource:18 animated:1];
}

void __68__AXSpringBoardServerHelper_dismissShelfSwitcherWithServerInstance___block_invoke_2()
{
  v32 = *MEMORY[0x277D85DE8];
  v16 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v0 = [v16 safeValueForKeyPath:@"_activeDisplaySwitcherController.contentViewController"];
  v1 = [v0 safeDictionaryForKey:@"visibleShelves"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = [v1 allValues];
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __68__AXSpringBoardServerHelper_dismissShelfSwitcherWithServerInstance___block_invoke_3;
        v24 = &unk_27842BB18;
        v25 = v7;
        AXPerformSafeBlock();
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = AXUIApplicationWindows();
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        NSClassFromString(&cfstr_Sbmainswitcher_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1968];
          [v14 enumerateObjectsUsingBlock:&__block_literal_global_1971];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v10);
  }

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __68__AXSpringBoardServerHelper_dismissShelfSwitcherWithServerInstance___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Sbmedusadecora.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __68__AXSpringBoardServerHelper_dismissShelfSwitcherWithServerInstance___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  v2 = [v3 safeValueForKey:@"_topAffordanceViewController"];
  if ([v2 safeBoolForKey:@"isExpanded"])
  {
    [v2 dismissAnimated:1];
  }
}

- (BOOL)isSyncingRestoringResettingOrUpdatingWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__AXSpringBoardServerHelper_isSyncingRestoringResettingOrUpdatingWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __85__AXSpringBoardServerHelper_isSyncingRestoringResettingOrUpdatingWithServerInstance___block_invoke(uint64_t a1)
{
  v3 = [NSClassFromString(&cfstr_Sbsynccontroll.isa) safeValueForKey:@"sharedInstance"];
  v2 = [v3 safeValueForKey:@"isInUse"];
  *(*(*(a1 + 32) + 8) + 24) = [v2 BOOLValue];
}

- (BOOL)isSystemGestureActiveWithServerInstance:(id)instance
{
  _iconController = [objc_opt_class() _iconController];
  v4 = [_iconController safeValueForKey:@"iconManager"];
  if ([v4 safeBoolForKey:@"isIconDragging"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [NSClassFromString(&cfstr_Sbsystemgestur.isa) safeValueForKey:@"mainDisplayManager"];
    v5 = [v6 safeBoolForKey:@"isAnyTouchGestureRunning"];
  }

  return v5;
}

- (BOOL)isSpeakThisTemporarilyDisabledWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__AXSpringBoardServerHelper_isSpeakThisTemporarilyDisabledWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __78__AXSpringBoardServerHelper_isSpeakThisTemporarilyDisabledWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [*MEMORY[0x277D76620] delegate];
  *(*(*(a1 + 32) + 8) + 24) = [v2 _accessibilityIsSpeakThisTemporarilyDisabled];
}

- (BOOL)areSystemGesturesDisabledNativelyWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__AXSpringBoardServerHelper_areSystemGesturesDisabledNativelyWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __81__AXSpringBoardServerHelper_areSystemGesturesDisabledNativelyWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 32) + 8) + 24) = [v2 _accessibilityIsSystemGestureActive];
  }
}

- (BOOL)areSystemGesturesDisabledByAccessibilityWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__AXSpringBoardServerHelper_areSystemGesturesDisabledByAccessibilityWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __88__AXSpringBoardServerHelper_areSystemGesturesDisabledByAccessibilityWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 32) + 8) + 24) = [v2 _accessibilitySystemGesturesDisabledByAccessibility];
  }
}

- (id)serverInstance:(id)instance springBoardSystemInfoQuery:(unint64_t)query
{
  instanceCopy = instance;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__AXSpringBoardServerHelper_serverInstance_springBoardSystemInfoQuery___block_invoke;
  v14[3] = &unk_27842BF20;
  queryCopy = query;
  v9 = dictionary;
  v15 = v9;
  selfCopy = self;
  v17 = instanceCopy;
  v10 = instanceCopy;
  [mainAccessQueue performSynchronousReadingBlock:v14];

  v11 = v17;
  v12 = v9;

  return v9;
}

void __71__AXSpringBoardServerHelper_serverInstance_springBoardSystemInfoQuery___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "areSystemGesturesDisabledNativelyWithServerInstance:", *(a1 + 48))}];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:&unk_2833B12B8];

    v2 = *(a1 + 56);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "areSystemGesturesDisabledByAccessibilityWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:&unk_2833B12B8];

  v2 = *(a1 + 56);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = [*(a1 + 40) installedAppsWithServerInstance:*(a1 + 48)];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:&unk_2833B12D0];

  v2 = *(a1 + 56);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isPasscodeRequiredOnLockWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:&unk_2833B12E8];

  v2 = *(a1 + 56);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isAppSwitcherVisibleWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:&unk_2833B1300];

  v2 = *(a1 + 56);
  if ((v2 & 0x10000) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isTypeToSiriVisibleWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:&unk_2833B1318];

  v2 = *(a1 + 56);
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSiriVisibleWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:&unk_2833B1330];

  v2 = *(a1 + 56);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isScreenLockedWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:&unk_2833B1348];

  v2 = *(a1 + 56);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMakingEmergencyCallWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:&unk_2833B1360];

  v2 = *(a1 + 56);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isNotificationCenterVisibleWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:&unk_2833B1378];

  v2 = *(a1 + 56);
  if ((v2 & 0x200) == 0)
  {
LABEL_12:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 40), "purpleBuddyPIDWithServerInstance:", *(a1 + 48)) != -1}];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:&unk_2833B1390];

  v2 = *(a1 + 56);
  if ((v2 & 0x400) == 0)
  {
LABEL_13:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSystemAppFrontmostExcludingSiri:withServerInstance:", 0, *(a1 + 48))}];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:&unk_2833B13A8];

  v2 = *(a1 + 56);
  if ((v2 & 0x800) == 0)
  {
LABEL_14:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSystemSleepingWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v15 forKeyedSubscript:&unk_2833B13C0];

  v2 = *(a1 + 56);
  if ((v2 & 0x1000) == 0)
  {
LABEL_15:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSyncingRestoringResettingOrUpdatingWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v16 forKeyedSubscript:&unk_2833B13D8];

  v2 = *(a1 + 56);
  if ((v2 & 0x2000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSyncingRestoringResettingOrUpdatingWithServerInstance:", *(a1 + 48))}];
    [*(a1 + 32) setObject:v18 forKeyedSubscript:&unk_2833B1408];

    if ((*(a1 + 56) & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_33:
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSystemAppFrontmostExcludingSiri:withServerInstance:", 1, *(a1 + 48))}];
  [*(a1 + 32) setObject:v17 forKeyedSubscript:&unk_2833B13F0];

  v2 = *(a1 + 56);
  if ((v2 & 0x4000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v2 & 0x8000) == 0)
  {
    return;
  }

LABEL_35:
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSystemGestureActiveWithServerInstance:", *(a1 + 48))}];
  [*(a1 + 32) setObject:v19 forKeyedSubscript:&unk_2833B1420];
}

- (id)installedAppsWithServerInstance:(id)instance
{
  v30 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v3 = +[AXSpringBoardServerHelper _iconController];
  v4 = [v3 safeValueForKey:@"iconModel"];

  v5 = +[AXSpringBoardServerHelper _applicationController];
  v6 = [v5 safeValueForKey:@"allApplications"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 safeValueForKey:@"bundleIdentifier"];
        v12 = [v10 safeValueForKey:@"displayName"];
        v13 = [v10 safeValueForKey:@"isInternalApplication"];
        LOBYTE(v10) = [v13 BOOLValue];

        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        v20 = v4;
        v14 = v11;
        AXPerformSafeBlock();
        if ((v10 & 1) == 0 && *(v22 + 24) == 1 && v14 && v12)
        {
          [dictionary setObject:v12 forKey:v14];
        }

        _Block_object_dispose(&v21, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __61__AXSpringBoardServerHelper_installedAppsWithServerInstance___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 applicationIconForBundleIdentifier:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 isIconVisible:v3];
}

- (id)internalAppsWithServerInstance:(id)instance
{
  v30 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v3 = +[AXSpringBoardServerHelper _iconController];
  v4 = [v3 safeValueForKey:@"iconModel"];

  v5 = +[AXSpringBoardServerHelper _applicationController];
  v6 = [v5 safeValueForKey:@"allApplications"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 safeValueForKey:@"bundleIdentifier"];
        v12 = [v10 safeValueForKey:@"displayName"];
        v13 = [v10 safeValueForKey:@"isInternalApplication"];
        LODWORD(v10) = [v13 BOOLValue];

        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        v20 = v4;
        v14 = v11;
        AXPerformSafeBlock();
        if (v10 && *(v22 + 24) == 1 && v14 && v12)
        {
          [dictionary setObject:v12 forKey:v14];
        }

        _Block_object_dispose(&v21, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __60__AXSpringBoardServerHelper_internalAppsWithServerInstance___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 applicationIconForBundleIdentifier:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 isIconVisible:v3];
}

uint64_t __47__AXSpringBoardServerHelper__unlockWithIntent___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  return AXPerformSafeBlock();
}

void __47__AXSpringBoardServerHelper__unlockWithIntent___block_invoke_2(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  NSClassFromString(&cfstr_Sblockscreenun.isa);
  v2 = objc_opt_new();
  v3 = 0;
  v13[0] = sel_setName_;
  v13[1] = sel_setSource_;
  v13[2] = sel_setIntent_;
  do
  {
    v4 = v13[v3];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = *(a1 + 40);
      sel_getName(v4);
      _AXLogWithFacility();
    }

    ++v3;
  }

  while (v3 != 3);
  if (objc_opt_respondsToSelector())
  {
    [v2 setName:@"Accessibility screen unlock"];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSource:30];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setIntent:*(a1 + 40)];
  }

  v5 = AXLogSystemApp();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_DEFAULT, "Requesting screen unlock. intent: %ld", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() _lockScreenManager];
  [v8 unlockWithRequest:v2 completion:&__block_literal_global_2039];

  v9 = *MEMORY[0x277D85DE8];
}

void __47__AXSpringBoardServerHelper__unlockWithIntent___block_invoke_2036(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = AXLogSystemApp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_21FE6B000, v3, OS_LOG_TYPE_DEFAULT, "Screen unlock request finished: %ld", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)serverInstance:(id)instance pauseMedia:(BOOL)media forBundleId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  AXPerformBlockOnMainThread();
}

void __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  MRMediaRemoteGetNowPlayingApplicationPID();
}

void __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke_2(uint64_t a1)
{
  v2 = SBSCopyInfoForApplicationWithProcessID();
  v3 = [v2 objectForKey:*MEMORY[0x277D66D08]];
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CE6910]] && ((objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CE6938]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CE6940]) & 1) != 0) || (objc_msgSend(v3, "isEqualToString:", *(a1 + 32)) & 1) != 0 || !*(a1 + 32))
  {
    v5 = *(a1 + 40);
    v4 = v3;
    MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  }
}

void __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke_3(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2 != 1)
  {
    if (*(a1 + 40))
    {
      return;
    }

    goto LABEL_5;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
LABEL_5:
    v7 = *(a1 + 32);
    v3 = (a1 + 32);
    MRMediaRemoteSendCommandToApp();
    v5 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v6 = __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke_6;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  MRMediaRemoteSendCommandToApp();
  v5 = v9;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v6 = __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke_4;
LABEL_6:
  v5[2] = v6;
  v5[3] = &unk_27842BB18;
  v5[4] = *v3;
  AXPerformBlockOnMainThreadAfterDelay();
  _AXLogWithFacility();
}

void __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
}

uint64_t __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke_5(uint64_t result, int a2)
{
  if (a2 == 1)
  {
    v2 = *(result + 32);
    MRMediaRemoteSendCommandToApp();
    return _AXLogWithFacility();
  }

  return result;
}

void __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
}

uint64_t __67__AXSpringBoardServerHelper_serverInstance_pauseMedia_forBundleId___block_invoke_7(uint64_t result, int a2)
{
  if (a2 != 1)
  {
    v2 = *(result + 32);
    MRMediaRemoteSendCommandToApp();
    return _AXLogWithFacility();
  }

  return result;
}

- (BOOL)hasActiveCallWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__AXSpringBoardServerHelper_hasActiveCallWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __61__AXSpringBoardServerHelper_hasActiveCallWithServerInstance___block_invoke(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = __Block_byref_object_copy__0;
  v7 = __Block_byref_object_dispose__0;
  v8 = 0;
  AXPerformSafeBlock();
  v2 = v4[5];
  _Block_object_dispose(&v3, 8);

  *(*(*(a1 + 32) + 8) + 24) = [v2 safeBoolForKey:@"inCall"];
}

uint64_t __61__AXSpringBoardServerHelper_hasActiveCallWithServerInstance___block_invoke_2063(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbtelephonyman.isa) sharedTelephonyManagerCreatingIfNecessary:0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasActiveEndpointCallWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__AXSpringBoardServerHelper_hasActiveEndpointCallWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __69__AXSpringBoardServerHelper_hasActiveEndpointCallWithServerInstance___block_invoke(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__0;
  v8 = __Block_byref_object_dispose__0;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  v3 = [v2 safeBoolForKey:@"inCall"];
  if (v3)
  {
    LOBYTE(v3) = [v2 safeBoolForKey:@"isEndpointOnCurrentDevice"];
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

uint64_t __69__AXSpringBoardServerHelper_hasActiveEndpointCallWithServerInstance___block_invoke_2(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbtelephonyman.isa) sharedTelephonyManagerCreatingIfNecessary:0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasActiveOrPendingCallWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__AXSpringBoardServerHelper_hasActiveOrPendingCallWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __70__AXSpringBoardServerHelper_hasActiveOrPendingCallWithServerInstance___block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  AXPerformSafeBlock();
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  v3 = [v2 safeBoolForKey:@"incomingCallExists"];
  v4 = [v2 safeBoolForKey:@"outgoingCallExists"];
  *(*(*(a1 + 32) + 8) + 24) = (v3 | v4 | [v2 safeBoolForKey:@"inCall"]) & 1;
}

uint64_t __70__AXSpringBoardServerHelper_hasActiveOrPendingCallWithServerInstance___block_invoke_2(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbtelephonyman.isa) sharedTelephonyManagerCreatingIfNecessary:0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasActiveOrPendingCallOrFaceTimeWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__AXSpringBoardServerHelper_hasActiveOrPendingCallOrFaceTimeWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

void __80__AXSpringBoardServerHelper_hasActiveOrPendingCallOrFaceTimeWithServerInstance___block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  AXPerformSafeBlock();
  v2 = v9[5];
  _Block_object_dispose(&v8, 8);

  v3 = [v2 safeBoolForKey:@"incomingCallExists"];
  v4 = [v2 safeBoolForKey:@"outgoingCallExists"];
  v5 = [v2 safeBoolForKey:@"inCall"];
  v6 = [NSClassFromString(&cfstr_Sbconferencema.isa) safeValueForKey:@"sharedInstance"];
  v7 = [v6 safeBoolForKey:@"inFaceTime"];

  *(*(*(a1 + 32) + 8) + 24) = (v3 | v4 | v5 | v7) & 1;
}

uint64_t __80__AXSpringBoardServerHelper_hasActiveOrPendingCallOrFaceTimeWithServerInstance___block_invoke_2(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbtelephonyman.isa) sharedTelephonyManagerCreatingIfNecessary:0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (double)reachabilityOffsetWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__AXSpringBoardServerHelper_reachabilityOffsetWithServerInstance___block_invoke;
  v8[3] = &unk_27842BDD8;
  v8[4] = self;
  v8[5] = &v9;
  [mainAccessQueue performSynchronousReadingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __66__AXSpringBoardServerHelper_reachabilityOffsetWithServerInstance___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isReachabilityActive])
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 bounds];
    v3 = v2 * 0.5;
    v4 = [NSClassFromString(&cfstr_Sbreachability_0.isa) safeValueForKey:@"rootSettings"];
    [v4 safeCGFloatForKey:@"yOffsetFactor"];
    *(*(*(a1 + 40) + 8) + 24) = v3 + v5;
  }
}

- (id)allowedMedusaGesturesWithServerInstance:(id)instance
{
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  allowedMedusaGestures = [sideAppManager allowedMedusaGestures];

  return allowedMedusaGestures;
}

- (void)toggleBackgroundSoundsWithServerInstance:(id)instance
{
  sharedInstance = [getHUComfortSoundsSettingsClass() sharedInstance];
  sharedInstance2 = [getHUComfortSoundsSettingsClass() sharedInstance];
  [sharedInstance setComfortSoundsEnabled:{objc_msgSend(sharedInstance2, "comfortSoundsEnabled") ^ 1}];
}

- (BOOL)serverInstance:(id)instance performMedusaGesture:(unint64_t)gesture
{
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  LOBYTE(gesture) = [sideAppManager performMedusaGesture:gesture];

  return gesture;
}

- (id)medusaAppsWithServerInstance:(id)instance
{
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  medusaApps = [sideAppManager medusaApps];

  return medusaApps;
}

- (BOOL)isMenuBarVisibleWithServerInstance:(id)instance
{
  v3 = +[AXSpringBoardServerHelper _axMenuBarManager];
  v4 = [v3 safeBoolForKey:@"isMenuBarVisible"];

  return v4;
}

- (BOOL)isMenuBarModalWithServerInstance:(id)instance
{
  v3 = +[AXSpringBoardServerHelper _axMenuBarManager];
  v4 = [v3 safeValueForKey:@"menuBarViewController"];
  v5 = [v4 safeBoolForKey:@"isShowingMenu"];

  return v5;
}

- (void)serverInstance:(id)instance setDockIconActivationMode:(unint64_t)mode
{
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  [sideAppManager setDockIconActivationMode:mode];
}

- (BOOL)canSetDockIconActivationModeForServerInstance:(id)instance
{
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  canActivateMedusaForDock = [sideAppManager canActivateMedusaForDock];

  return canActivateMedusaForDock;
}

- (id)medusaBundleIDsToLayoutRoles
{
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  medusaAppBundleIdsToLayoutRoles = [sideAppManager medusaAppBundleIdsToLayoutRoles];

  return medusaAppBundleIdsToLayoutRoles;
}

- (void)toggleSpotlightWithServerInstance:(id)instance
{
  instanceCopy = instance;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (AXDeviceIsPad())
  {
    v6 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v7 = __63__AXSpringBoardServerHelper_toggleSpotlightWithServerInstance___block_invoke;
  }

  else
  {
    if ([(AXSpringBoardServerHelper *)self isAppSwitcherVisibleWithServerInstance:instanceCopy])
    {
      [(AXSpringBoardServerHelper *)self dismissAppSwitcherWithServerInstance:instanceCopy];
    }

    v6 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v7 = __63__AXSpringBoardServerHelper_toggleSpotlightWithServerInstance___block_invoke_2;
  }

  v6[2] = v7;
  v6[3] = &unk_27842BB18;
  v6[4] = mEMORY[0x277D75128];
  v8 = mEMORY[0x277D75128];
  AXPerformSafeBlock();
}

- (void)revealSpotlightWithServerInstance:(id)instance
{
  instanceCopy = instance;
  if (![(AXSpringBoardServerHelper *)self isSpotlightVisibleWithServerInstance:?])
  {
    [(AXSpringBoardServerHelper *)self toggleSpotlightWithServerInstance:instanceCopy];
  }
}

- (BOOL)isGuidedAccessActiveWithServerInstance:(id)instance
{
  v3 = [NSClassFromString(&cfstr_Gaxspringboard.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v4 = [v3 safeBoolForKey:@"isActive"];

  return v4;
}

- (BOOL)toggleDarkModeWithServerInstance:(id)instance
{
  mEMORY[0x277D75CF0] = [MEMORY[0x277D75CF0] sharedInstance];
  [mEMORY[0x277D75CF0] toggleCurrentStyle];

  return 1;
}

- (BOOL)isSpotlightVisibleWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v4 = [NSClassFromString(&cfstr_Sbspotlightmul.isa) safeValueForKey:@"sharedRemoteSearchViewController"];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  _appearState = [v5 _appearState];

  return (_appearState - 1) < 2;
}

- (BOOL)isTodayViewOrAppLibraryVisibleWithServerInstance:(id)instance
{
  _iconController = [objc_opt_class() _iconController];
  v4 = [_iconController safeValueForKey:@"iconManager"];
  v5 = [v4 safeBoolForKey:@"isOverlayTodayOrLibraryViewVisible"];

  return v5;
}

- (BOOL)isPIPWindowVisibleWithServerInstance:(id)instance
{
  v3 = [NSClassFromString(&cfstr_Sbworkspace.isa) safeValueForKey:@"mainWorkspace"];
  v4 = [v3 safeValueForKey:@"pipCoordinator"];
  v5 = [v4 safeBoolForKey:@"isAnyPictureInPictureWindowVisible"];

  return v5;
}

- (void)forceLoadGAXBundleWithServerInstance:(id)instance
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D81CD8] object:0];
}

- (void)reactivateInCallServiceWithServerInstance:(id)instance
{
  v5 = [NSClassFromString(&cfstr_Sbmainworkspac.isa) safeValueForKey:@"_instanceIfExists"];
  v3 = [v5 safeValueForKey:@"inCallTransientOverlayManager"];
  v4 = [v3 safeValueForKey:@"presentTransientOverlay"];
}

- (void)launchMagnifierAppWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v5 = [(AXSpringBoardServerHelper *)self serverInstance:instanceCopy appWithIdentifier:*MEMORY[0x277D81C00]];
  v6 = __UIAccessibilitySafeClass();

  if (v6 && ![(AXSpringBoardServerHelper *)self isPasscodeLockVisible])
  {
    _uiController = [objc_opt_class() _uiController];
    if (objc_opt_respondsToSelector())
    {
      v8 = _uiController;
      v9 = v6;
      AXPerformSafeBlock();
    }

    else
    {
      _AXLogWithFacility();
    }
  }
}

- (BOOL)isMagnifierVisibleWithServerInstance:(id)instance
{
  v24 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  AXFrontBoardRunningAppProcesses();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = MEMORY[0x277D81C00];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        bundleIdentifier = [v11 bundleIdentifier];
        v13 = [bundleIdentifier isEqualToString:*v9];

        if (v13)
        {
          state = [v11 state];
          visibility = [state visibility];

          if (visibility == 2)
          {
            LOBYTE(v16) = 1;
            goto LABEL_14;
          }

          if (visibility == 3)
          {
            v16 = ![(AXSpringBoardServerHelper *)self isScreenLockedWithServerInstance:instanceCopy];
            goto LABEL_14;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v16) = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)updateFrontMostApplicationWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  AXPerformSafeBlock();
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  v6 = v4;
  v5 = v4;
  AXPerformSafeBlock();
}

uint64_t __74__AXSpringBoardServerHelper_updateFrontMostApplicationWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbkeyboardfocu_1.isa) accessibility:@"Accessibility-FKA"];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __74__AXSpringBoardServerHelper_updateFrontMostApplicationWithServerInstance___block_invoke_2(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbkeyboardfocu_0.isa) safeValueForKey:@"sharedInstance"];
  [v2 requestArbitrationForSBWindowScene:0 forReason:*(a1 + 32)];
}

- (void)diminishJindoWithServerInstance:(id)instance
{
  instanceCopy = instance;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v5 = [mEMORY[0x277D75128] safeValueForKey:@"systemApertureControllerForMainDisplay"];
  v6 = [v5 safeValueForKey:@"_systemApertureViewController"];
  v7 = [v6 safeValueForKey:@"_systemApertureManager"];
  v8 = [v7 safeValueForKey:@"_elementsToElementViewControllers"];
  v9 = __UIAccessibilitySafeClass();

  if ([v9 count])
  {
    objectEnumerator = [v9 objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v12 = nextObject;
      do
      {
        if (objc_opt_respondsToSelector())
        {
          [v12 _axCollapseIfExpandedByUserInteraction];
        }

        nextObject2 = [objectEnumerator nextObject];

        v12 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

- (id)jindoAppBundleIndentifiersWithServerInstance:(id)instance
{
  v33 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v14 = [mEMORY[0x277D75128] safeValueForKey:@"systemApertureControllerForMainDisplay"];
  v3 = [v14 safeValueForKey:@"_systemApertureViewController"];
  [v3 safeArrayForKey:@"_orderedContainerViews"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = *v29;
    v20 = *MEMORY[0x277CE6928];
    v18 = *MEMORY[0x277CE6908];
    v16 = *MEMORY[0x277CE6818];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v22 = 0;
        v23 = &v22;
        v24 = 0x3032000000;
        v25 = __Block_byref_object_copy__0;
        v26 = __Block_byref_object_dispose__0;
        v27 = 0;
        v21 = v3;
        AXPerformSafeBlock();
        v8 = v23[5];

        _Block_object_dispose(&v22, 8);
        if (v8)
        {
          v9 = [v8 safeStringForKey:{@"clientIdentifier", instanceCopy}];
          if (([v9 isEqualToString:v20] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.chronod") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.CoreAuthUI") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.LocalAuthenticationUIService") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", v18) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.accessibility.MagnifierAngel") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"com.apple.ShortcutsUI") & 1) == 0 && (!objc_msgSend(v9, "isEqualToString:", v16) || !-[AXSpringBoardServerHelper isInCallServiceFrontmost](self, "isInCallServiceFrontmost")))
          {
            [v17 axSafelyAddObject:v9];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __74__AXSpringBoardServerHelper_jindoAppBundleIndentifiersWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _elementForContainerView:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)launchVoiceOverImageExplorerViewServiceWithServerInstance:(id)instance forData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  dataCopy = data;
  v8 = *MEMORY[0x277CE7CE8];
  v9 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CE7CE8]];
  v25 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v25];
  v11 = v25;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v11)
  {
    v13 = AXLogSpringboardServer();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412802;
      v27 = v22;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      _os_log_fault_impl(&dword_21FE6B000, v13, OS_LOG_TYPE_FAULT, "%@ - elementInfo must be type AXSBImageExplorerData. was actually %@. error:%@ ", buf, 0x20u);
    }

    goto LABEL_20;
  }

  if (!v10)
  {
    v13 = AXLogSpringboardServer();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [AXSpringBoardServerHelper launchVoiceOverImageExplorerViewServiceWithServerInstance:forData:];
    }

LABEL_20:
    v17 = v9;
    goto LABEL_21;
  }

  hostAppBundleID = [v10 hostAppBundleID];
  v13 = hostAppBundleID;
  if (hostAppBundleID)
  {
    v14 = AXSBApplicationWithIdentifier(hostAppBundleID);
    NSClassFromString(&cfstr_Sbapplication.isa);
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 safeValueForKey:@"displayName"];
      [v10 setHostAppName:v15];

      v16 = AXLogSpringboardServer();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [AXSpringBoardServerHelper launchVoiceOverImageExplorerViewServiceWithServerInstance:v10 forData:?];
      }
    }
  }

  v24 = 0;
  v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v24];
  v18 = v24;

  if (v18 || !v17)
  {
    v19 = AXLogSpringboardServer();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [AXSpringBoardServerHelper launchVoiceOverImageExplorerViewServiceWithServerInstance:forData:];
    }
  }

  v20 = [dataCopy mutableCopy];
  [v20 setObject:v17 forKeyedSubscript:v8];
  [(AXSpringBoardServerHelper *)self serverInstance:instanceCopy showRemoteViewType:2 withData:v20 withPreviousViewDismissal:1];

LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
}

- (id)coverSheetViewController
{
  v2 = AXSpringBoardGlueSBLockScreenControllerInstance();
  v3 = [v2 safeValueForKey:@"coverSheetViewController"];
  v4 = __UIAccessibilitySafeClass();

  return v4;
}

- (void)setSecurePayAccessibilityFeaturesDisabled:(BOOL)disabled withServerInstance:(id)instance
{
  disabledCopy = disabled;
  instanceCopy = instance;
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  securePayAssertionActive = [mEMORY[0x277CE7E20] securePayAssertionActive];

  if (disabledCopy)
  {
    if ((securePayAssertionActive & 1) == 0)
    {
      v9 = objc_opt_new();
      axFeatureCache = self->_axFeatureCache;
      self->_axFeatureCache = v9;

      [(AccessibilityFeatureCache *)self->_axFeatureCache setAssistiveTouch:_AXSAssistiveTouchEnabled() != 0];
      [(AccessibilityFeatureCache *)self->_axFeatureCache setLiveCaptions:_AXSLiveTranscriptionEnabled() != 0];
      [(AccessibilityFeatureCache *)self->_axFeatureCache setLiveSpeech:_AXSLiveSpeechEnabled() != 0];
      [(AccessibilityFeatureCache *)self->_axFeatureCache setSpeakScreen:_AXSSpeakThisEnabled() != 0];
      [(AccessibilityFeatureCache *)self->_axFeatureCache setZoom:_AXSZoomTouchEnabled() != 0];
      [(AccessibilityFeatureCache *)self->_axFeatureCache setVoiceControl:_AXSCommandAndControlEnabled() != 0];
      [(AccessibilityFeatureCache *)self->_axFeatureCache setBackTap:_AXSBackTapEnabled() != 0];
      v11 = _AXSTripleClickCopyOptions();
      [(AccessibilityFeatureCache *)self->_axFeatureCache setTripleClickOptions:v11];

      mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
      [mEMORY[0x277CE7E20]2 setSecurePayAssertionActive:1];

      _AXSSetTripleClickOptions();
      _AXSBackTapSetEnabled();
      _AXSAssistiveTouchSetEnabled();
      _AXSLiveTranscriptionSetEnabled();
      _AXSLiveSpeechSetEnabled();
      _AXSSetSpeakThisEnabled();
      _AXSZoomTouchSetEnabled();
      _AXSCommandAndControlSetEnabled();
      v13 = self->_axFeatureCache;
      v23 = 0;
      v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v23];
      v15 = v23;
      if (v15)
      {
        v16 = AXLogAssertions();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [AXSpringBoardServerHelper setSecurePayAccessibilityFeaturesDisabled:withServerInstance:];
        }
      }

      if (v14)
      {
        standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [standardUserDefaults setObject:v14 forKey:@"AXSecurePayFeatureCache"];
      }

      v18 = AXLogAssertions();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FE6B000, v18, OS_LOG_TYPE_DEFAULT, "Acquiring assertion for ax secure pay feature disablement", buf, 2u);
      }

LABEL_15:
    }
  }

  else if (securePayAssertionActive)
  {
    [(AXSpringBoardServerHelper *)self _restoreAccessibilityFeatureFromSecurePayCache:self->_axFeatureCache];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 removeObjectForKey:@"AXSecurePayFeatureCache"];

    mEMORY[0x277CE7E20]3 = [MEMORY[0x277CE7E20] sharedInstance];
    [mEMORY[0x277CE7E20]3 setSecurePayAssertionActive:0];

    v15 = AXLogAssertions();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_21FE6B000, v15, OS_LOG_TYPE_DEFAULT, "Release assertion for ax secure pay feature disablement", v21, 2u);
    }

    goto LABEL_15;
  }
}

- (void)_restoreAccessibilityFeatureFromSecurePayCache:(id)cache
{
  if (cache)
  {
    cacheCopy = cache;
    [cacheCopy assistiveTouch];
    _AXSAssistiveTouchSetEnabled();
    [cacheCopy liveCaptions];
    _AXSLiveTranscriptionSetEnabled();
    [cacheCopy liveSpeech];
    _AXSLiveSpeechSetEnabled();
    [cacheCopy speakScreen];
    _AXSSetSpeakThisEnabled();
    [cacheCopy zoom];
    _AXSZoomTouchSetEnabled();
    [cacheCopy voiceControl];
    _AXSCommandAndControlSetEnabled();
    [cacheCopy backTap];
    _AXSBackTapSetEnabled();
    tripleClickOptions = [cacheCopy tripleClickOptions];

    _AXSSetTripleClickOptions();
  }
}

- (void)activateSOSModeWithServerInstance:(id)instance
{
  v3 = dispatch_get_global_queue(21, 0);
  dispatch_async(v3, &__block_literal_global_2097);
}

uint64_t __63__AXSpringBoardServerHelper_activateSOSModeWithServerInstance___block_invoke()
{
  LOBYTE(v3) = 1;
  _AXLogWithFacility();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getSOSManagerClass_softClass;
  v8 = getSOSManagerClass_softClass;
  if (!getSOSManagerClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getSOSManagerClass_block_invoke;
    v4[3] = &unk_27842BD38;
    v4[4] = &v5;
    __getSOSManagerClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  return [v0 triggerSOS];
}

- (BOOL)connectedDevicesRequireAssistiveTouch
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  motionTrackingInputManager = [(AXSpringBoardServerHelper *)self motionTrackingInputManager];
  compatibleInputs = [motionTrackingInputManager compatibleInputs];

  v4 = [compatibleInputs countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(compatibleInputs);
        }

        if ([*(*(&v9 + 1) + 8 * i) isHIDDevice])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [compatibleInputs countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)currentDevicesHaveAssistiveTouchCustomActions
{
  mEMORY[0x277CE7DB8] = [MEMORY[0x277CE7DB8] sharedInstance];
  currentDevicesHaveAssistiveTouchCustomActions = [mEMORY[0x277CE7DB8] currentDevicesHaveAssistiveTouchCustomActions];

  return currentDevicesHaveAssistiveTouchCustomActions;
}

- (void)cancelSiriDismissalForAssistiveTouchWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21FE6B000, v4, OS_LOG_TYPE_INFO, "Canceling Siri dismissal (if pending) due to AssistiveTouch handling an up event.", buf, 2u);
  }

  objc_opt_class();
  _assistantController = [objc_opt_class() _assistantController];
  v6 = __UIAccessibilityCastAsSafeCategory();

  [v6 _axCancelDismissSiriForAssistiveTouch];
}

- (void)toggleLiveTranscriptionWithServerInstance:(id)instance
{
  v4 = _AXSLiveTranscriptionEnabled();
  v5 = v4 == 0;
  if (v4)
  {
    _AXSLiveTranscriptionSetEnabled();

    [(AXSpringBoardServerHelper *)self _sendLiveCaptionsCoreAnalytics:0];
  }

  else
  {
    server = [MEMORY[0x277CE7E40] server];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__AXSpringBoardServerHelper_toggleLiveTranscriptionWithServerInstance___block_invoke;
    v7[3] = &unk_27842C030;
    v8 = v5;
    v7[4] = self;
    [server showAlert:25 withHandler:v7];
  }
}

uint64_t __71__AXSpringBoardServerHelper_toggleLiveTranscriptionWithServerInstance___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = result;
    v4 = *(result + 40);
    _AXSLiveTranscriptionSetEnabled();
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);

    return [v5 _sendLiveCaptionsCoreAnalytics:v6];
  }

  return result;
}

id __60__AXSpringBoardServerHelper__sendLiveCaptionsCoreAnalytics___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE7C20];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)freezeClarityUILoadingScreenWithServerInstance:(id)instance
{
  v3 = objc_alloc(MEMORY[0x277CF05F0]);
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  v6 = [v3 initWithName:@"ClarityUI" display:mainDisplay];

  v5 = [objc_alloc(MEMORY[0x277CF05E8]) initWithDescriptor:v6];
  [v5 present];
  [v5 freeze];
}

void __80__AXSpringBoardServerHelper_presentNearbyDeviceControlPickerWithServerInstance___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2050000000;
    v2 = getAXRemoteViewServiceAdaptorClass_softClass;
    v9 = getAXRemoteViewServiceAdaptorClass_softClass;
    if (!getAXRemoteViewServiceAdaptorClass_softClass)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __getAXRemoteViewServiceAdaptorClass_block_invoke;
      v5[3] = &unk_27842BD38;
      v5[4] = &v6;
      __getAXRemoteViewServiceAdaptorClass_block_invoke(v5);
      v2 = v7[3];
    }

    v3 = v2;
    _Block_object_dispose(&v6, 8);
    [v2 presentRemoteNearbyDevicesViewControllerWithPresentationHandler:0 dismissalHandler:0];
  }

  else
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__AXSpringBoardServerHelper_presentNearbyDeviceControlPickerWithServerInstance___block_invoke_cold_1();
    }
  }
}

- (void)toggleDetectionModeWithServerInstance:(id)instance
{
  if (AccessibilityPhysicalInteractionLibraryCore())
  {
    sharedInstance = [getAXPISystemActionHelperClass() sharedInstance];
    [sharedInstance activateDetectionMode];
  }
}

- (void)askQuestionInMagnifierWithServerInstance:(id)instance
{
  if (AccessibilityPhysicalInteractionLibraryCore())
  {
    sharedInstance = [getAXPISystemActionHelperClass() sharedInstance];
    [sharedInstance activateMagnifierAskQuestion];
  }
}

- (void)launchAccessibilityReaderWithServerInstance:(id)instance
{
  if (AccessibilityPhysicalInteractionLibraryCore())
  {
    sharedInstance = [getAXPISystemActionHelperClass() sharedInstance];
    [sharedInstance launchAccessibilityReader];
  }
}

- (void)toggleConversationBoostWithServerInstance:(id)instance
{
  v14 = paCurrentBluetoothDeviceSupportingTransparencyAccommodations();
  address = [v14 address];
  if ([address length] && paCurrentRouteSupportsTransparencyAccommodations() && paBluetoothDeviceSupportsSSL())
  {
    mEMORY[0x277D3A1D0] = [MEMORY[0x277D3A1D0] sharedInstance];
    if ([mEMORY[0x277D3A1D0] personalMediaEnabled])
    {
      listeningMode = [v14 listeningMode];

      if (listeningMode == 3)
      {
        mEMORY[0x277D3A1D0]2 = [MEMORY[0x277D3A1D0] sharedInstance];
        v7 = [mEMORY[0x277D3A1D0]2 transparencyCustomizedForAddress:address];

        mEMORY[0x277D3A1D0]3 = [MEMORY[0x277D3A1D0] sharedInstance];
        [mEMORY[0x277D3A1D0]3 setTransparencyCustomized:v7 ^ 1u forAddress:address];
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    mEMORY[0x277D3A1D0]4 = [MEMORY[0x277D3A1D0] sharedInstance];
    v10 = [mEMORY[0x277D3A1D0]4 sslEnabledForAddress:address];

    listeningMode2 = [v14 listeningMode];
    if ((v10 & 1) != 0 || listeningMode2 == 3)
    {
      if (listeningMode2 == 3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }

      if (v13 != 1)
      {
        goto LABEL_17;
      }

      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    [v14 setListeningMode:v12];
LABEL_17:
    mEMORY[0x277D3A1D0]3 = [MEMORY[0x277D3A1D0] sharedInstance];
    [mEMORY[0x277D3A1D0]3 setSslEnabled:v10 ^ 1u forAddress:address];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)toggleTorchWithServerInstance:(id)instance
{
  mEMORY[0x277D679B8] = [MEMORY[0x277D679B8] sharedInstance];
  level = [mEMORY[0x277D679B8] level];

  mEMORY[0x277D679B8]2 = [MEMORY[0x277D679B8] sharedInstance];
  v6 = mEMORY[0x277D679B8]2;
  if (level)
  {
    [mEMORY[0x277D679B8]2 turnFlashlightOffForReason:@"Accessibility"];
  }

  else
  {
    [mEMORY[0x277D679B8]2 turnFlashlightOnForReason:@"Accessibility"];
  }
}

- (id)serverInstance:(id)instance splashImageForAppWithBundleIdentifier:(id)identifier
{
  instanceCopy = instance;
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v7 = AXSBApplicationWithIdentifier(identifierCopy);
  NSClassFromString(&cfstr_Sbapplication.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    AXPerformSafeBlock();
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __82__AXSpringBoardServerHelper_serverInstance_splashImageForAppWithBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [NSClassFromString(&cfstr_Sbscenemanager_0.isa) mainDisplaySceneManager];
  NSClassFromString(&cfstr_Sbmaindisplays.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 sceneIdentityForApplication:*(a1 + 32)];
    v4 = NSClassFromString(&cfstr_Sbapplications.isa);
    v5 = *(a1 + 32);
    v6 = [v2 safeValueForKey:@"displayIdentity"];
    v7 = [(objc_class *)v4 defaultRequestForApplication:v5 sceneIdentity:v3 displayIdentity:v6];

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = 0;
    v30 = v2;
    v8 = v7;
    AXPerformSafeBlock();
    v9 = v32[5];

    _Block_object_dispose(&v31, 8);
    NSClassFromString(&cfstr_Sbdeviceapplic.isa);
    if (objc_opt_isKindOfClass())
    {
      v27 = v8;
      v28 = v3;
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__0;
      v35 = __Block_byref_object_dispose__0;
      v36 = 0;
      v29 = v9;
      AXPerformSafeBlock();
      v10 = v32[5];

      _Block_object_dispose(&v31, 8);
      v26 = *(a1 + 32);
      v11 = [MEMORY[0x277D759A0] mainScreen];
      [v11 scale];
      v13 = v12;
      v14 = [MEMORY[0x277D759A0] mainScreen];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v19 = [*MEMORY[0x277D76620] windows];
      v20 = [v19 objectAtIndexedSubscript:0];
      v21 = [v20 traitCollection];
      v22 = [v26 bestSnapshotWithImageName:@"SBSuspendSnapshot" sceneHandle:v29 variantID:@"downscaled" scale:1 referenceSize:-1 requireExactSize:-5 contentTypeMask:v13 statusBarStateMask:v16 launchingOrientation:v18 contentOverridesContext:1 userInterfaceStyle:0 displayEdgeInfo:{objc_msgSend(v21, "userInterfaceStyle"), v10}];

      v23 = [v22 imageForInterfaceOrientation:1];
      v24 = *(*(a1 + 40) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v8 = v27;
      v3 = v28;
    }
  }
}

uint64_t __82__AXSpringBoardServerHelper_serverInstance_splashImageForAppWithBundleIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchOrCreateApplicationSceneHandleForRequest:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __82__AXSpringBoardServerHelper_serverInstance_splashImageForAppWithBundleIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) displayEdgeInfoForLayoutEnvironment:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)rebootDeviceWithServerInstance:(id)instance
{
  server = [MEMORY[0x277CE7E40] server];
  [server showAlert:11 withHandler:&__block_literal_global_2127];
}

uint64_t __60__AXSpringBoardServerHelper_rebootDeviceWithServerInstance___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x282138F30]();
  }

  return result;
}

- (void)launchApplication:(id)application
{
  applicationCopy = application;
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  [sideAppManager launchApplication:applicationCopy];
}

- (void)launchApplicationWithFullConfiguration:(id)configuration
{
  configurationCopy = configuration;
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  [sideAppManager launchApplicationWithFullConfiguration:configurationCopy];
}

- (void)launchFloatingApplication:(id)application
{
  applicationCopy = application;
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  [sideAppManager launchFloatingApplication:applicationCopy];
}

- (BOOL)canLaunchAsPinnedApplicationForIconView:(id)view
{
  viewCopy = view;
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  v6 = [sideAppManager canLaunchAsPinnedApplicationForIconView:viewCopy];

  return v6;
}

- (BOOL)canLaunchAsFloatingApplicationForIconView:(id)view
{
  viewCopy = view;
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  v6 = [sideAppManager canLaunchAsFloatingApplicationForIconView:viewCopy];

  return v6;
}

- (id)sceneLayoutState
{
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  sceneLayoutState = [sideAppManager sceneLayoutState];

  return sceneLayoutState;
}

- (id)appForLayoutRole:(int64_t)role
{
  sideAppManager = [(AXSpringBoardServerHelper *)self sideAppManager];
  v5 = [sideAppManager appForLayoutRole:role];

  return v5;
}

- (id)_accessibilityNotificationSummary:(unint64_t)summary
{
  coverSheetViewController = [(AXSpringBoardServerHelper *)self coverSheetViewController];
  v5 = [coverSheetViewController safeValueForKey:@"mainPageContentViewController"];
  v6 = [v5 safeValueForKey:@"combinedListViewController"];
  v7 = [v6 safeValueForKey:@"_structuredListViewController"];
  v8 = [v7 _accessibilityNotificationSummary:summary];

  return v8;
}

- (unint64_t)_accessibilityNotificationCount
{
  coverSheetViewController = [(AXSpringBoardServerHelper *)self coverSheetViewController];
  v3 = [coverSheetViewController safeValueForKey:@"mainPageContentViewController"];
  v4 = [v3 safeValueForKey:@"combinedListViewController"];
  v5 = [v4 safeValueForKey:@"_structuredListViewController"];
  _accessibilityNotificationCount = [v5 _accessibilityNotificationCount];

  return _accessibilityNotificationCount;
}

- (int)nativeFocusedApplication
{
  v2 = [NSClassFromString(&cfstr_Sbworkspace.isa) safeValueForKey:@"mainWorkspace"];
  v3 = [v2 safeValueForKey:@"keyboardFocusController"];

  v4 = [v3 safeIntForKey:@"_axPrimaryKeyboardFocusOverridePid"];
  if (!v4)
  {
    v19 = 0;
    objc_opt_class();
    v5 = [NSClassFromString(&cfstr_Sbworkspace.isa) safeValueForKey:@"mainWorkspace"];
    v6 = [v5 safeValueForKey:@"keyboardFocusController"];
    v7 = [v6 safeValueForKey:@"sceneWithFocusIncludingSpringBoard"];
    v8 = __UIAccessibilityCastAsClass();

    if ([v8 accessibilitySceneIsDeactivatedBySidebar])
    {
      processIdentity = AXLogCommon();
      if (os_log_type_enabled(processIdentity, OS_LOG_TYPE_ERROR))
      {
        [AXSpringBoardServerHelper nativeFocusedApplication];
      }

      v4 = 0;
    }

    else
    {
      definition = [v8 definition];
      clientIdentity = [definition clientIdentity];
      processIdentity = [clientIdentity processIdentity];

      if (processIdentity)
      {
        v12 = MEMORY[0x277D46F48];
        v13 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:processIdentity];
        v18 = 0;
        v14 = [v12 handleForPredicate:v13 error:&v18];
        v15 = v18;

        if (v15)
        {
          v16 = AXLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [AXSpringBoardServerHelper nativeFocusedApplication];
          }

          v4 = 0;
        }

        else
        {
          v4 = [v14 pid];
        }
      }

      else
      {
        v15 = AXLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [AXSpringBoardServerHelper nativeFocusedApplication];
        }

        v4 = 0;
      }
    }
  }

  return v4;
}

- (BOOL)_accessibilityIsUILocked
{
  server = [MEMORY[0x277CE7E40] server];
  v3 = [server isScreenLockedWithPasscode:0];

  return v3;
}

- (BOOL)accessibilityIsNotificationVisible
{
  v2 = [*MEMORY[0x277D76620] safeValueForKey:@"notificationDispatcher"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"bannerDestination"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeValueForKey:@"presentedBanner"];
  v7 = __UIAccessibilitySafeClass();

  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  if ([v5 safeBoolForKey:@"isPresentingBanner"])
  {
    view = [v8 view];
    v10 = _SBAXIsViewVisible(view);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)accessibilityIsBannerVisible
{
  v2 = [*MEMORY[0x277D76620] safeValueForKey:@"bannerManager"];
  v3 = __UIAccessibilitySafeClass();

  v4 = +[AXSpringBoardServerHelper _axActiveWindowScene];
  v5 = [v3 isDisplayingBannerInWindowScene:v4];

  return v5;
}

- (BOOL)accessibilityIsRemoteTransientOverlayVisible
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[AXSpringBoardServerHelper _axActiveWindowScene];
  [v2 safeArrayForKey:@"windows"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        NSClassFromString(&cfstr_Sbmainswitcher_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 _accessibilityFindSubviewDescendantsPassingTest:{&__block_literal_global_2146, v14}];
          v10 = [v9 count];

          if (v10)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __73__AXSpringBoardServerHelper_accessibilityIsRemoteTransientOverlayVisible__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Sbdeviceapplic_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_accessibilityShowCoverSheet:(BOOL)sheet serverInstance:(id)instance completion:(id)completion
{
  sheetCopy = sheet;
  v55 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  completionCopy = completion;
  [(AXSpringBoardServerHelper *)self setReachabilityActive:0];
  _accessibilityCoverSheetPresentationManagerSharedInstance = [(AXSpringBoardServerHelper *)self _accessibilityCoverSheetPresentationManagerSharedInstance];
  v11 = [_accessibilityCoverSheetPresentationManagerSharedInstance safeValueForKey:@"_coverSheetSlidingViewController"];
  v12 = [v11 safeValueForKey:@"systemGesturesDelegate"];
  v13 = v12;
  if (sheetCopy)
  {
    if (![(AXSpringBoardServerHelper *)self isCoverSheetVisibleWithServerInstance:instanceCopy])
    {
      objc_opt_class();
      v26 = [v13 safeValueForKey:@"presentGestureRecognizer"];
      v17 = __UIAccessibilityCastAsClass();

      v47 = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      v49 = __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke;
      v50 = &unk_27842BB18;
      v51 = v17;
      AXPerformSafeBlock();
      v27 = [MEMORY[0x277CBEB98] set];
      v28 = objc_opt_new();
      [v51 touchesBegan:v27 withEvent:v28];

      v29 = [MEMORY[0x277CBEB98] set];
      v30 = objc_opt_new();
      [v51 touchesEnded:v29 withEvent:v30];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v53 = 0x2020000000;
      LOBYTE(v54) = 0;
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2;
      v43 = &unk_27842BE90;
      p_buf = &buf;
      v31 = v13;
      v44 = v31;
      v16 = v51;
      v45 = v16;
      AXPerformSafeBlock();
      LOBYTE(v17) = *(*(&buf + 1) + 24);

      _Block_object_dispose(&buf, 8);
      v32 = AXLogSpringboardServer();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
      if (v17)
      {
        if (v33)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_21FE6B000, v32, OS_LOG_TYPE_INFO, "Showing CoverSheet and revealing more notifications", &buf, 2u);
        }

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2152;
        v38[3] = &unk_27842C0B8;
        v39 = completionCopy;
        [_accessibilityCoverSheetPresentationManagerSharedInstance setCoverSheetPresented:1 animated:1 withCompletion:v38];
        v32 = v39;
      }

      else if (v33)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_21FE6B000, v32, OS_LOG_TYPE_INFO, "Not showing CoverSheet because system gesture delegate said no: %@", &buf, 0xCu);
      }

      goto LABEL_27;
    }

    coverSheetViewController = [(AXSpringBoardServerHelper *)self coverSheetViewController];
    v15 = [coverSheetViewController safeValueForKey:@"mainPageContentViewController"];
    v17 = [v15 safeValueForKey:@"combinedListViewController"];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v53 = 0x2020000000;
    LOBYTE(v54) = 0;
    v16 = v17;
    AXPerformSafeBlock();
    LODWORD(v17) = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
    v18 = AXLogSpringboardServer();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (v19)
      {
        LOWORD(buf) = 0;
        v20 = "Revealing more recent notifications";
LABEL_22:
        _os_log_impl(&dword_21FE6B000, v18, OS_LOG_TYPE_INFO, v20, &buf, 2u);
      }
    }

    else if (v19)
    {
      LOWORD(buf) = 0;
      v20 = "Not revealing more recent notifications";
      goto LABEL_22;
    }

LABEL_27:
    goto LABEL_28;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x2020000000;
  v54 = 0;
  v21 = v12;
  AXPerformSafeBlock();
  v22 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v23 = v22 == 0;
  v24 = AXLogSpringboardServer();
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_21FE6B000, v25, OS_LOG_TYPE_INFO, "Hiding CS with completion", &buf, 2u);
    }

    v36 = _accessibilityCoverSheetPresentationManagerSharedInstance;
    v37 = completionCopy;
    AXPerformSafeBlock();

    v16 = v36;
    LOBYTE(v17) = 1;
    goto LABEL_27;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v21;
    _os_log_impl(&dword_21FE6B000, v25, OS_LOG_TYPE_DEFAULT, "Not hiding CS because system gesture delegate said no: %@", &buf, 0xCu);
  }

  if ([(AXSpringBoardServerHelper *)self isCoverSheetVisibleWithServerInstance:instanceCopy])
  {
    v16 = AXLogSpringboardServer();
    LOBYTE(v17) = 1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_21FE6B000, v16, OS_LOG_TYPE_INFO, "trying to hide recent notifications", &buf, 2u);
    }

    goto LABEL_27;
  }

  LOBYTE(v17) = 0;
LABEL_28:

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) gestureRecognizerShouldBegin:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2152(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2_2153(uint64_t a1)
{
  result = [*(a1 + 32) notificationStructuredListViewControllerShouldAllowNotificationHistoryReveal:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 safeValueForKey:@"dismissGestureRecognizer"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 gestureRecognizerShouldBegin:v3] ^ 1;
}

void __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2155(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2_2156;
  v2[3] = &unk_27842C0B8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 setCoverSheetPresented:0 animated:1 withCompletion:v2];
}

void __84__AXSpringBoardServerHelper__accessibilityShowCoverSheet_serverInstance_completion___block_invoke_2_2156(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  v3 = *MEMORY[0x277D764D8];

  UIAccessibilityPostNotification(v3, 0);
}

- (BOOL)_accessibilityShowNotificationCenter:(BOOL)center serverInstance:(id)instance
{
  centerCopy = center;
  v51 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  if ([(AXSpringBoardServerHelper *)self isControlCenterVisibleWithServerInstance:instanceCopy])
  {
    [(AXSpringBoardServerHelper *)self accessibilityShowControlCenter:0];
  }

  v7 = [NSClassFromString(&cfstr_Sbsystemgestur.isa) safeValueForKey:@"mainDisplayManager"];
  *buf = 0;
  v48 = buf;
  v49 = 0x2020000000;
  v50 = 0;
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke;
  v42 = &unk_27842BBA8;
  v44 = buf;
  v8 = v7;
  v43 = v8;
  AXPerformSafeBlock();
  v9 = v48[24];

  _Block_object_dispose(buf, 8);
  server = [MEMORY[0x277CE7D30] server];
  isGuidedAccessActive = [server isGuidedAccessActive];

  if (((isGuidedAccessActive | v9 ^ 1) & 1) == 0)
  {
    v12 = [NSClassFromString(&cfstr_Sbbulletinwind.isa) safeValueForKey:@"sharedInstance"];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 safeValueForKey:@"_accessibilityAllowsShowNotificationsGestureFromThreeFingerSwipe"];
      bOOLValue = [v13 BOOLValue];

      v15 = AXLogSpringboardServer();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = bOOLValue;
        _os_log_impl(&dword_21FE6B000, v15, OS_LOG_TYPE_INFO, "BB window allows: %d", buf, 8u);
      }

      v16 = !centerCopy;
      if (((!centerCopy | bOOLValue) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = !centerCopy;
    }

    v29 = [(AXSpringBoardServerHelper *)self isCoverSheetVisibleWithServerInstance:instanceCopy];
    coverSheetViewController = [(AXSpringBoardServerHelper *)self coverSheetViewController];
    v19 = [coverSheetViewController safeValueForKey:@"mainPageContentViewController"];
    v20 = [v19 safeValueForKey:@"combinedListViewController"];

    if ([v20 safeBoolForKey:@"_allowNotificationsRevealPolicy"] && ((v16 | objc_msgSend(v20, "safeBoolForKey:", @"_shouldPreventNotificationHistoryRevealForActiveDNDState")) & 1) == 0)
    {
      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke_2165;
      v36 = &unk_27842C008;
      v37 = v20;
      v38 = centerCopy;
      AXPerformSafeBlock();
      v22 = objc_alloc(MEMORY[0x277CCA898]);
      v23 = SBAXLocalizedString(@"notification.center.showing");
      v45 = *MEMORY[0x277CE6BC8];
      v46 = &unk_2833B1450;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v25 = [v22 initWithString:v23 attributes:v24];

      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v25);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke_2172;
      aBlock[3] = &unk_27842BBF8;
      v31 = v37;
      selfCopy = self;
      v21 = _Block_copy(aBlock);
    }

    else
    {
      v21 = 0;
    }

    if (centerCopy)
    {
      if (v29)
      {
        if (v21)
        {
          v21[2](v21);
        }

        v17 = 1;
        goto LABEL_24;
      }

      v26 = [(AXSpringBoardServerHelper *)self _accessibilityShowCoverSheet:1 serverInstance:instanceCopy completion:v21];
    }

    else
    {
      v26 = [(AXSpringBoardServerHelper *)self _accessibilityShowCoverSheet:0 serverInstance:instanceCopy completion:v21];
    }

    v17 = v26;
LABEL_24:

    goto LABEL_25;
  }

  v12 = AXLogSpringboardServer();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21FE6B000, v12, OS_LOG_TYPE_INFO, "GAX active or generally not allowed", buf, 2u);
  }

LABEL_10:
  v17 = 0;
LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isGestureWithTypeAllowed:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke_2165(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_structuredListViewController"];
  [v2 revealNotificationHistory:*(a1 + 40) animated:0];
}

void __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke_2172(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AXPerformSafeBlock();
}

void __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke_2(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke_3;
  aBlock[3] = &unk_27842BB18;
  v9 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = [*(a1 + 40) coverSheetViewController];
  v4 = [v3 safeUnsignedIntegerForKey:@"_indexOfMainPage"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2[2](v2);
  }

  else
  {
    v5 = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke_4;
    v6[3] = &unk_27842C0B8;
    v7 = v2;
    [v3 activatePage:v5 animated:1 withCompletion:v6];
  }
}

void __81__AXSpringBoardServerHelper__accessibilityShowNotificationCenter_serverInstance___block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 32) safeValueForKey:@"_structuredListViewController"];
  v1 = [v4 view];
  [v1 setNeedsLayout];

  v2 = [v4 view];
  [v2 layoutIfNeeded];

  LODWORD(v2) = *MEMORY[0x277D76488];
  v3 = [v4 view];
  UIAccessibilityPostNotification(v2, v3);
}

- (id)_accessibilityCoverSheetPresentationManagerSharedInstance
{
  if (_accessibilityCoverSheetPresentationManagerSharedInstance_onceToken != -1)
  {
    [AXSpringBoardServerHelper _accessibilityCoverSheetPresentationManagerSharedInstance];
  }

  v3 = _accessibilityCoverSheetPresentationManagerSharedInstance_SBCoverSheetPresentationManager;

  return [v3 safeValueForKey:@"sharedInstance"];
}

Class __86__AXSpringBoardServerHelper__accessibilityCoverSheetPresentationManagerSharedInstance__block_invoke()
{
  result = NSClassFromString(&cfstr_Sbcoversheetpr.isa);
  _accessibilityCoverSheetPresentationManagerSharedInstance_SBCoverSheetPresentationManager = result;
  return result;
}

- (BOOL)accessibilityShowControlCenter:(BOOL)center
{
  centerCopy = center;
  v30 = *MEMORY[0x277D85DE8];
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = centerCopy;
    _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_INFO, "Show CC: %d", buf, 8u);
  }

  v6 = [NSClassFromString(&cfstr_Sbsystemgestur.isa) safeValueForKey:@"mainDisplayManager"];
  *buf = 0;
  *&v28 = buf;
  *(&v28 + 1) = 0x2020000000;
  v29 = 0;
  v26[1] = MEMORY[0x277D85DD0];
  v26[2] = 3221225472;
  v26[3] = __60__AXSpringBoardServerHelper_accessibilityShowControlCenter___block_invoke;
  v26[4] = &unk_27842BBA8;
  v26[6] = buf;
  v7 = v6;
  v26[5] = v7;
  AXPerformSafeBlock();
  v8 = *(v28 + 24);

  _Block_object_dispose(buf, 8);
  if ((!centerCopy | v8))
  {
    if (centerCopy)
    {
      server = [MEMORY[0x277CE7D30] server];
      isGuidedAccessActive = [server isGuidedAccessActive];

      if (isGuidedAccessActive)
      {
        v11 = ASTLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Show CC: No because GA is active";
LABEL_10:
          _os_log_impl(&dword_21FE6B000, v11, OS_LOG_TYPE_INFO, v12, buf, 2u);
          goto LABEL_27;
        }

        goto LABEL_27;
      }
    }

    v11 = [NSClassFromString(&cfstr_Sbcontrolcente.isa) safeValueForKey:@"sharedInstance"];
    [(AXSpringBoardServerHelper *)self _accessibilitySetAllowShowNotificationGestureOverride:1];
    if ([(AXSpringBoardServerHelper *)self _accessibilityIsUILocked])
    {
      if (!centerCopy)
      {
        v15 = 1;
        goto LABEL_23;
      }

      v13 = +[AXSpringBoardServerHelper _axActiveWindowScene];
      v14 = [v13 safeValueForKey:@"controlCenterController"];

      v15 = [v14 safeBoolForKey:@"allowShowTransitionSystemGesture"];
      v16 = ASTLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *&buf[4] = v8;
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v15;
        _os_log_impl(&dword_21FE6B000, v16, OS_LOG_TYPE_INFO, "Show CC: UI is locked, generally allowed: %d, ccAllows: %d", buf, 0xEu);
      }
    }

    else
    {
      if (centerCopy)
      {
        v15 = [v11 safeBoolForKey:@"canBePresented"];
      }

      else
      {
        v15 = 1;
      }

      v14 = ASTLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_impl(&dword_21FE6B000, v14, OS_LOG_TYPE_INFO, "Show CC: controller allows transition: %d", buf, 8u);
      }
    }

LABEL_23:
    v17 = ASTLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = v15;
      LOWORD(v28) = 2114;
      *(&v28 + 2) = v11;
      _os_log_impl(&dword_21FE6B000, v17, OS_LOG_TYPE_INFO, "Show CC: Allow transition: %d %{public}@", buf, 0x12u);
    }

    v18 = v15 ^ 1;
    if ((!centerCopy | v18))
    {
      [(AXSpringBoardServerHelper *)self _accessibilitySetAllowShowNotificationGestureOverride:0];
      if ((centerCopy | v18))
      {
        goto LABEL_27;
      }

      v25[0] = v11;
      AXPerformSafeBlock();
      v20 = ASTLogCommon();
      v21 = v25;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v22 = "Show CC: Dismiss CC";
        goto LABEL_32;
      }
    }

    else
    {
      [(AXSpringBoardServerHelper *)self _accessibilitySetAllowShowNotificationGestureOverride:0];
      [v11 _accessibilitySetBoolValue:1 forKey:@"IsAXActivating"];
      v25[1] = MEMORY[0x277D85DD0];
      v25[2] = 3221225472;
      v25[3] = __60__AXSpringBoardServerHelper_accessibilityShowControlCenter___block_invoke_2184;
      v25[4] = &unk_27842BB18;
      v26[0] = v11;
      AXPerformSafeBlock();
      [v26[0] _accessibilitySetBoolValue:0 forKey:@"IsAXActivating"];
      v20 = ASTLogCommon();
      v21 = v26;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v22 = "Show CC: Presenting CC";
LABEL_32:
        _os_log_impl(&dword_21FE6B000, v20, OS_LOG_TYPE_INFO, v22, buf, 2u);
      }
    }

    v19 = 1;
    goto LABEL_34;
  }

  v11 = ASTLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v12 = "Show CC: Gesture manager said not generally allowed";
    goto LABEL_10;
  }

LABEL_27:
  v19 = 0;
LABEL_34:

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __60__AXSpringBoardServerHelper_accessibilityShowControlCenter___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isGestureWithTypeAllowed:6];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isSystemAppShowingAnAlertWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__AXSpringBoardServerHelper_isSystemAppShowingAnAlertWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

uint64_t __73__AXSpringBoardServerHelper_isSystemAppShowingAnAlertWithServerInstance___block_invoke(uint64_t a1)
{
  result = AXFrontBoardIsSystemAppShowingAlert();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)focusedAppPIDWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__AXSpringBoardServerHelper_focusedAppPIDWithServerInstance___block_invoke;
  v7[3] = &unk_27842BD38;
  v7[4] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __61__AXSpringBoardServerHelper_focusedAppPIDWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = AXFrontBoardFocusedAppPID();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (int)purpleBuddyPIDWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__AXSpringBoardServerHelper_purpleBuddyPIDWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LODWORD(mainAccessQueue) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

uint64_t __62__AXSpringBoardServerHelper_purpleBuddyPIDWithServerInstance___block_invoke(uint64_t a1)
{
  result = AXFrontBoardPurpleBuddyPID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)runningAppPIDsWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__AXSpringBoardServerHelper_runningAppPIDsWithServerInstance___block_invoke;
  v7[3] = &unk_27842BD38;
  v7[4] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __62__AXSpringBoardServerHelper_runningAppPIDsWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = AXFrontBoardRunningAppPIDs();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isSystemAppFrontmostExcludingSiri:(BOOL)siri withServerInstance:(id)instance
{
  instanceCopy = instance;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__AXSpringBoardServerHelper_isSystemAppFrontmostExcludingSiri_withServerInstance___block_invoke;
  v11[3] = &unk_27842C108;
  siriCopy = siri;
  v11[4] = self;
  v8 = instanceCopy;
  v12 = v8;
  v13 = &v15;
  [mainAccessQueue performSynchronousReadingBlock:v11];

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __82__AXSpringBoardServerHelper_isSystemAppFrontmostExcludingSiri_withServerInstance___block_invoke(uint64_t a1)
{
  v5 = AXFrontBoardSystemAppProcess();
  v2 = *(a1 + 56);
  v3 = AXFrontBoardFocusedAppProcessesForGuidedAccess();
  v4 = [v3 firstObject];

  if (v5 == v4 || [*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)isSettingsAppFrontmostWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__AXSpringBoardServerHelper_isSettingsAppFrontmostWithServerInstance___block_invoke;
  v8[3] = &unk_27842C130;
  v8[4] = self;
  v6 = instanceCopy;
  v9 = v6;
  v10 = &v11;
  [mainAccessQueue performSynchronousReadingBlock:v8];

  LOBYTE(instanceCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return instanceCopy;
}

void __70__AXSpringBoardServerHelper_isSettingsAppFrontmostWithServerInstance___block_invoke(uint64_t a1)
{
  v3 = AXFrontBoardSystemAppProcess();
  v2 = AXFrontBoardFocusedAppProcess();
  if (v3 == v2 || [*(a1 + 32) isScreenLockedWithServerInstance:*(a1 + 40)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)focusedAppsWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__AXSpringBoardServerHelper_focusedAppsWithServerInstance___block_invoke;
  v7[3] = &unk_27842BD38;
  v7[4] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __59__AXSpringBoardServerHelper_focusedAppsWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = AXFrontBoardFocusedApps();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)displayIdentifierForSceneIdentifier:(id)identifier serverInstance:(id)instance
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  instanceCopy = instance;
  v7 = +[AXSpringBoardServerHelper _axActiveWindowScene];
  v8 = [v7 safeValueForKey:@"sceneManager"];

  [v8 safeSetForKey:@"allScenes"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v24 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v21 + 1) + 8 * i) safeValueForKey:@"identifier"];
        v15 = [v14 isEqualToString:identifierCopy];

        if (v15)
        {
          objc_opt_class();
          v17 = [v8 safeValueForKey:@"displayIdentity"];
          v18 = __UIAccessibilityCastAsClass();

          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v18, "displayID")}];

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)focusedOccludedAppScenesWithServerInstance:(id)instance
{
  v59 = *MEMORY[0x277D85DE8];
  instanceCopy = instance;
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  LOBYTE(v42) = 0;
  v4 = [*MEMORY[0x277D76620] safeValueForKey:@"windowSceneManager"];
  v17 = __UIAccessibilitySafeClass();

  [v17 safeSetForKey:@"connectedWindowScenes"];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v21 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v21)
  {
    v19 = *v53;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [*(*(&v52 + 1) + 8 * i) safeValueForKey:@"switcherController"];
        v22 = [v24 safeValueForKey:@"windowManagementContext"];
        if ([v22 safeBoolForKey:@"isChamoisOrFlexibleWindowing"])
        {
          v27 = [v24 safeValueForKey:@"contentViewController"];
          v20 = [v24 safeValueForKey:@"_currentMainAppLayout"];
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v25 = [v20 safeArrayForKey:@"leafAppLayouts"];
          v28 = [v25 countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v28)
          {
            v26 = *v49;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v49 != v26)
                {
                  objc_enumerationMutation(v25);
                }

                v5 = *(*(&v48 + 1) + 8 * j);
                v42 = 0;
                v43 = &v42;
                v44 = 0x3032000000;
                v45 = __Block_byref_object_copy__0;
                v46 = __Block_byref_object_dispose__0;
                v47 = 0;
                v35 = MEMORY[0x277D85DD0];
                v36 = 3221225472;
                v37 = __72__AXSpringBoardServerHelper_focusedOccludedAppScenesWithServerInstance___block_invoke;
                v38 = &unk_27842BE90;
                v41 = &v42;
                v39 = v27;
                v40 = v5;
                AXPerformSafeBlock();
                v29 = v43[5];

                _Block_object_dispose(&v42, 8);
                if ([v29 safeBoolForKey:@"isSelectable"])
                {
                  v6 = [v5 safeArrayForKey:@"_items"];
                  v33 = 0u;
                  v34 = 0u;
                  v31 = 0u;
                  v32 = 0u;
                  v7 = [v6 countByEnumeratingWithState:&v31 objects:v56 count:16];
                  if (v7)
                  {
                    v8 = *v32;
                    do
                    {
                      for (k = 0; k != v7; ++k)
                      {
                        if (*v32 != v8)
                        {
                          objc_enumerationMutation(v6);
                        }

                        v10 = *(*(&v31 + 1) + 8 * k);
                        v11 = [v10 safeStringForKey:@"bundleIdentifier"];
                        v12 = [v10 safeStringForKey:@"uniqueIdentifier"];
                        v13 = [objc_alloc(MEMORY[0x277CE7D08]) initWithBundleIdentifier:v11 fbSceneIdentifier:v12];
                        [v3 addObject:v13];
                      }

                      v7 = [v6 countByEnumeratingWithState:&v31 objects:v56 count:16];
                    }

                    while (v7);
                  }
                }
              }

              v28 = [v25 countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v28);
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v21);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __72__AXSpringBoardServerHelper_focusedOccludedAppScenesWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _itemContainerForAppLayoutIfExists:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isChamoisOrFlexibleWindowingEnabledWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v4 = [*MEMORY[0x277D76620] safeValueForKey:@"windowSceneManager"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeValueForKey:@"activeDisplayWindowSceneFollowingKeyboard"];
  v7 = [v6 safeValueForKey:@"switcherController"];
  v8 = [v7 safeValueForKey:@"windowManagementContext"];

  LOBYTE(v6) = [v8 safeBoolForKey:@"isChamoisOrFlexibleWindowing"];
  return v6;
}

- (BOOL)isPurpleBuddyAppFrontmostWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__AXSpringBoardServerHelper_isPurpleBuddyAppFrontmostWithServerInstance___block_invoke;
  v6[3] = &unk_27842BD38;
  v6[4] = &v7;
  [mainAccessQueue performSynchronousReadingBlock:v6];

  LOBYTE(mainAccessQueue) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return mainAccessQueue;
}

uint64_t __73__AXSpringBoardServerHelper_isPurpleBuddyAppFrontmostWithServerInstance___block_invoke(uint64_t a1)
{
  result = AXIsPurpleBuddyFrontmost();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)frontmostAppProcessWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__AXSpringBoardServerHelper_frontmostAppProcessWithServerInstance___block_invoke;
  v7[3] = &unk_27842BD38;
  v7[4] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __67__AXSpringBoardServerHelper_frontmostAppProcessWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = AXFrontBoardFocusedAppProcess();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)focusedAppProcessWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__AXSpringBoardServerHelper_focusedAppProcessWithServerInstance___block_invoke;
  v7[3] = &unk_27842BD38;
  v7[4] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __65__AXSpringBoardServerHelper_focusedAppProcessWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = AXFrontBoardFocusedAppProcess();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)runningAppProcessesWithServerInstance:(id)instance
{
  instanceCopy = instance;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__AXSpringBoardServerHelper_runningAppProcessesWithServerInstance___block_invoke;
  v7[3] = &unk_27842BD38;
  v7[4] = &v8;
  [mainAccessQueue performSynchronousReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __67__AXSpringBoardServerHelper_runningAppProcessesWithServerInstance___block_invoke(uint64_t a1)
{
  v2 = AXFrontBoardRunningAppProcesses();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_visibleTripleClickItems
{
  [(AXSpringBoardServerHelper *)self _updateVisibleTripleClickItems];
  visibleTripleClickItems = self->_visibleTripleClickItems;

  return visibleTripleClickItems;
}

- (void)_updateVisibleTripleClickItems
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_visibleTripleClickItems removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = _AXSTripleClickCopyOptions();
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (-[AXSpringBoardServerHelper _shouldShowTCOption:](self, "_shouldShowTCOption:", [v8 intValue]))
        {
          [(NSMutableArray *)self->_visibleTripleClickItems addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(AXSpringBoardServerHelper *)self _sortVisibleItems];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBuddyRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(AXSpringBoardServerHelper *)self runningAppProcessesWithServerInstance:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__AXSpringBoardServerHelper_isBuddyRunning__block_invoke;
  v5[3] = &unk_27842C158;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__AXSpringBoardServerHelper_isBuddyRunning__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 safeValueForKey:@"bundleIdentifier"];
  v7 = [v6 isEqualToString:@"com.apple.purplebuddy"];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)isPreferencesFrontmost
{
  v2 = AXFrontBoardFocusedAppProcess();
  v3 = [v2 safeValueForKey:@"bundleIdentifier"];
  v4 = [v3 isEqualToString:*MEMORY[0x277CE6908]];

  return v4;
}

- (BOOL)isInCallServiceFrontmost
{
  v2 = AXFrontBoardFocusedAppProcess();
  v3 = [v2 safeValueForKey:@"bundleIdentifier"];
  v4 = [v3 isEqualToString:*MEMORY[0x277CE6818]];

  return v4;
}

- (BOOL)isPasscodeLockVisible
{
  v2 = AXSpringBoardGlueSBLockScreenControllerInstance();
  v3 = [v2 safeBoolForKey:@"isPasscodeEntryTransientOverlayVisible"];
  v4 = AXSBLockScreenEnvironment();
  v5 = [v4 safeValueForKey:@"passcodeViewPresenter"];
  v6 = [v5 safeBoolForKey:@"isPasscodeLockVisible"];

  return (v3 | v6) & 1;
}

- (BOOL)isLockScreenVisible
{
  v2 = AXSpringBoardGlueSBLockScreenControllerInstance();
  v3 = [v2 safeBoolForKey:@"isLockScreenVisible"];

  return v3;
}

- (void)_sortVisibleItems
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  tripleClickOrderedOptions = [mEMORY[0x277CE7E20] tripleClickOrderedOptions];

  visibleTripleClickItems = self->_visibleTripleClickItems;
  if (tripleClickOrderedOptions)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__AXSpringBoardServerHelper__sortVisibleItems__block_invoke;
    v14[3] = &unk_27842C180;
    v15 = tripleClickOrderedOptions;
    [(NSMutableArray *)visibleTripleClickItems sortUsingComparator:v14];
    mEMORY[0x277CE6960] = [MEMORY[0x277CE6960] sharedInstance];
    ignoreLogging = [mEMORY[0x277CE6960] ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      identifier = [MEMORY[0x277CE6960] identifier];
      v9 = AXLoggerForFacility();

      v10 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = AXColorizeFormatLog();
        v12 = _AXStringForArgs();
        if (os_log_type_enabled(v9, v10))
        {
          *buf = 138543362;
          v17 = v12;
          _os_log_impl(&dword_21FE6B000, v9, v10, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    [(NSMutableArray *)visibleTripleClickItems sortUsingComparator:&__block_literal_global_2200];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __46__AXSpringBoardServerHelper__sortVisibleItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

uint64_t __46__AXSpringBoardServerHelper__sortVisibleItems__block_invoke_2198(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 intValue] == 1)
  {
    v6 = -1;
  }

  else if ([v5 intValue] == 1)
  {
    v6 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277CE7E70] titleForTripleClickOption:{objc_msgSend(v4, "intValue")}];
    v8 = [MEMORY[0x277CE7E70] titleForTripleClickOption:{objc_msgSend(v5, "intValue")}];
    v6 = [v7 localizedCompare:v8];
  }

  return v6;
}

- (void)_handleAlertActionPress:(id)press
{
  alertHandler = self->_alertHandler;
  if (alertHandler)
  {
    alertHandler[2](alertHandler, [press buttonIndex]);
    v5 = self->_alertHandler;
  }

  else
  {
    v5 = 0;
  }

  self->_alertHandler = 0;

  [(AXSpringBoardServerHelper *)self _cleanupAlertController];
}

- (void)_toggleTripleClickDisplay
{
  selfCopy = self;
  v45 = *MEMORY[0x277D85DE8];
  rootViewController = [(UIWindow *)self->_presentationWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(AXSpringBoardServerHelper *)selfCopy _dismissAlertController];
    v6 = AXLogSpringboardServer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21FE6B000, v6, OS_LOG_TYPE_DEFAULT, "Triple click: dismissed.", buf, 2u);
    }
  }

  else
  {
    if (_AXSLiveSpeechEnabled())
    {
      _AXSLiveSpeechSetEnabled();
    }

    v7 = SBAXLocalizedString(@"ask.sheet.title");
    v6 = [AXTripleClickAlertController alertControllerWithTitle:v7 message:0 preferredStyle:AXDeviceIsPad()];

    [v6 _accessibilitySetBoolValue:1 forKey:@"IsTripleClick"];
    [(AXSpringBoardServerHelper *)selfCopy _updateVisibleTripleClickItems];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = selfCopy->_visibleTripleClickItems;
    v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v32 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          intValue = [v11 intValue];
          v13 = [MEMORY[0x277CE7E70] titleForTripleClickOption:intValue];
          v14 = &stru_2833AA238;
          if (v13)
          {
            v14 = v13;
          }

          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __54__AXSpringBoardServerHelper__toggleTripleClickDisplay__block_invoke;
          v34[3] = &unk_27842C1C8;
          v35 = v14;
          v36 = selfCopy;
          v15 = v14;
          v16 = [AXAlertAction actionWithTitle:v15 style:0 handler:v34];
          [v16 setButtonIndex:{objc_msgSend(v11, "integerValue")}];
          v17 = selfCopy;
          v18 = MEMORY[0x277CE7E70];
          intValue2 = [v11 intValue];
          v20 = v18;
          selfCopy = v17;
          [v16 _setChecked:{objc_msgSend(v20, "valueForTripleClickOption:", intValue2)}];
          [v6 addAction:v16];
        }

        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v9);
    }

    v21 = AXParameterizedLocalizedString();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__AXSpringBoardServerHelper__toggleTripleClickDisplay__block_invoke_2210;
    v33[3] = &unk_27842C1F0;
    v33[4] = selfCopy;
    v22 = [AXAlertAction actionWithTitle:v21 style:1 handler:v33];

    [v6 addAction:v22];
    if ([(NSMutableArray *)selfCopy->_visibleTripleClickItems count])
    {
      if ([(NSMutableArray *)selfCopy->_visibleTripleClickItems count]== 1)
      {
        actions = [v6 actions];
        firstObject = [actions firstObject];
        [(AXSpringBoardServerHelper *)selfCopy _handleAlertActionPress:firstObject];
      }

      else
      {
        selfCopy->_shouldOverrideInterfaceOrientation = 1;
        [(AXSpringBoardServerHelper *)selfCopy _displayAlertController:v6];
        v25 = AXLogSpringboardServer();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21FE6B000, v25, OS_LOG_TYPE_DEFAULT, "Triple click: presented.", buf, 2u);
        }

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v27 = *MEMORY[0x277CE7C58];
        v42 = @"windowContextID";
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[UIWindow _contextId](selfCopy->_presentationWindow, "_contextId")}];
        v43 = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        [defaultCenter postNotificationName:v27 object:0 userInfo:v29];

        AXPerformBlockOnMainThreadAfterDelay();
      }
    }

    else
    {
      [(AXSpringBoardServerHelper *)selfCopy _handleAlertActionPress:v22];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __54__AXSpringBoardServerHelper__toggleTripleClickDisplay__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AXLogSpringboardServer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_21FE6B000, v4, OS_LOG_TYPE_DEFAULT, "Triple click: selected %@.", &v7, 0xCu);
  }

  [*(a1 + 40) _handleAlertActionPress:v3];
  v6 = *MEMORY[0x277D85DE8];
}

void __54__AXSpringBoardServerHelper__toggleTripleClickDisplay__block_invoke_2210(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogSpringboardServer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21FE6B000, v4, OS_LOG_TYPE_DEFAULT, "Triple click: canceled.", v5, 2u);
  }

  [*(a1 + 32) _handleAlertActionPress:v3];
}

- (void)_displayAlertController:(id)controller
{
  [(AXSpringBoardServerHelper *)self _displayViewController:controller withCompletion:0];
  v4 = [MEMORY[0x277CE7D18] assertionWithType:*MEMORY[0x277CE79F0] identifier:@"AXSpringBoardServerHelper"];
  [(AXSpringBoardServerHelper *)self setDisableSystemGesturesAssertionForAlert:v4];
}

- (void)_displayViewController:(id)controller withCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if (![(AXSpringBoardServerHelper *)self _isDisplayingAlertController])
  {
    presentationWindow = self->_presentationWindow;
    if (!presentationWindow)
    {
      v9 = NSClassFromString(&cfstr_AxSbsecuremain.isa);
      if (!v9)
      {
        v10 = AXLogValidations();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [AXSpringBoardServerHelper _displayViewController:withCompletion:];
        }

        v9 = objc_opt_class();
      }

      v11 = [v9 isEqual:NSClassFromString(&cfstr_AxSbsecuremain.isa)];
      v12 = objc_alloc_init(MEMORY[0x277D75D28]);
      v13 = v12;
      if (v11)
      {
        v22 = v12;
        AXPerformSafeBlock();
      }

      else
      {
        v14 = [v9 alloc];
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v16 = [v14 initWithFrame:?];
        v17 = self->_presentationWindow;
        self->_presentationWindow = v16;

        [(UIWindow *)self->_presentationWindow setRootViewController:v13];
      }

      [(UIWindow *)self->_presentationWindow setAutorotates:1];
      [(UIWindow *)self->_presentationWindow setAccessibilityViewIsModal:1];
      [(UIWindow *)self->_presentationWindow setHidden:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        AXSBPrepareWindowForTripleClickSpeaking(self->_presentationWindow);
      }

      [(UIWindow *)self->_presentationWindow setWindowLevel:10000009.0];
      presentationWindowFocusAssertion = [(AXSpringBoardServerHelper *)self presentationWindowFocusAssertion];

      if (presentationWindowFocusAssertion)
      {
        v19 = AXLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [AXSpringBoardServerHelper _displayViewController:withCompletion:];
        }
      }

      [(AXSpringBoardServerHelper *)self presentationWindowFocusAssertion];

      if (v11)
      {
        objc_opt_class();
        v20 = [(UIWindow *)self->_presentationWindow safeValueForKey:@"contentViewController"];
        rootViewController = __UIAccessibilityCastAsClass();

        if (!rootViewController)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:
        [rootViewController presentViewController:controllerCopy animated:1 completion:&__block_literal_global_2229];
        goto LABEL_20;
      }

      presentationWindow = self->_presentationWindow;
    }

    rootViewController = [(UIWindow *)presentationWindow rootViewController];
    if (!rootViewController)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__AXSpringBoardServerHelper__displayViewController_withCompletion___block_invoke;
  v23[3] = &unk_27842C218;
  v23[4] = self;
  v24 = controllerCopy;
  v25 = completionCopy;
  [(AXSpringBoardServerHelper *)self _dismissAlertControllerWithCompletion:v23];

LABEL_21:
}

uint64_t __67__AXSpringBoardServerHelper__displayViewController_withCompletion___block_invoke_2219(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 48)) initWithRole:@"SBTraitsParticipantRoleAlert" debugName:@"AccessibilityShortcut"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 72);

  return [v6 setContentViewController:v5];
}

void __67__AXSpringBoardServerHelper__displayViewController_withCompletion___block_invoke_2227()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 setNeedsFocusUpdate];
}

- (BOOL)_isDisplayingAlertController
{
  rootViewController = [(UIWindow *)self->_presentationWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  v4 = presentedViewController != 0;

  return v4;
}

- (void)_dismissAlertControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __67__AXSpringBoardServerHelper__dismissAlertControllerWithCompletion___block_invoke;
  v10 = &unk_27842C0E0;
  selfCopy = self;
  v12 = completionCopy;
  v5 = completionCopy;
  v6 = _Block_copy(&v7);
  [(AXSpringBoardServerHelper *)self _dismissViewControllerWithCompletion:v6, v7, v8, v9, v10, selfCopy];
}

uint64_t __67__AXSpringBoardServerHelper__dismissAlertControllerWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissAlertWithCancel];
  [*(a1 + 32) _cleanupAlertController];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_dismissViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  rootViewController = [(UIWindow *)self->_presentationWindow rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__AXSpringBoardServerHelper__dismissViewControllerWithCompletion___block_invoke;
  v8[3] = &unk_27842C0E0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [presentedViewController dismissViewControllerAnimated:1 completion:v8];
}

uint64_t __66__AXSpringBoardServerHelper__dismissViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanupPresentationWindow];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_cleanupAlertController
{
  [(AXSpringBoardServerHelper *)self _cleanupPresentationWindow];

  [(AXSpringBoardServerHelper *)self setDisableSystemGesturesAssertionForAlert:0];
}

- (void)_cleanupPresentationWindow
{
  [(UIWindow *)self->_presentationWindow setHidden:1];
  presentationWindow = self->_presentationWindow;
  self->_presentationWindow = 0;

  presentationWindowFocusAssertion = [(AXSpringBoardServerHelper *)self presentationWindowFocusAssertion];
  [presentationWindowFocusAssertion invalidate];

  [(AXSpringBoardServerHelper *)self setPresentationWindowFocusAssertion:0];
}

- (void)dismissAlertWithCancel
{
  alertHandler = self->_alertHandler;
  if (alertHandler)
  {
    alertHandler[2](alertHandler, 0x7FFFFFFFFFFFFFFFLL);
    alertHandler = self->_alertHandler;
  }

  self->_alertHandler = 0;
}

- (void)_handleTripleClickAskAlert
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = [mEMORY[0x277D75128] safeValueForKey:@"_accessibilityObjectWithinProximity"];
  bOOLValue = [v3 BOOLValue];

  v5 = [(AXSpringBoardServerHelper *)self isSystemSleepingWithServerInstance:0];
  if ((bOOLValue & 1) != 0 || v5)
  {
    [(AXSpringBoardServerHelper *)self dismissAlertWithCancel];
  }

  else
  {
    [(AXSpringBoardServerHelper *)self _toggleTripleClickDisplay];
  }
}

- (void)_handleZoomConflictAlert:(id)alert
{
  v4 = MEMORY[0x277CCACA8];
  alertCopy = alert;
  v6 = SBAXLocalizedString(@"ZoomConflictMessage");
  alertCopy = [v4 stringWithFormat:v6, alertCopy, alertCopy];

  v8 = MEMORY[0x277D75110];
  v9 = SBAXLocalizedString(@"ZoomConflictTitle");
  v10 = [v8 alertControllerWithTitle:v9 message:alertCopy preferredStyle:1];

  v11 = SBAXLocalizedString(@"No");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__AXSpringBoardServerHelper__handleZoomConflictAlert___block_invoke;
  v16[3] = &unk_27842C1F0;
  v16[4] = self;
  v12 = [AXAlertAction actionWithTitle:v11 style:1 handler:v16];

  [v12 setButtonIndex:0];
  [v10 addAction:v12];
  v13 = SBAXLocalizedString(@"Yes");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__AXSpringBoardServerHelper__handleZoomConflictAlert___block_invoke_2;
  v15[3] = &unk_27842C1F0;
  v15[4] = self;
  v14 = [AXAlertAction actionWithTitle:v13 style:0 handler:v15];

  [v14 setButtonIndex:1];
  [v10 addAction:v14];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v10];
}

- (void)_handleZoomTripleClickAfterConflict
{
  v3 = AXLocStringKeyForHomeButtonAndExclusiveModel();
  v4 = SBAXLocalizedStringWithTable(v3, @"Accessibility");
  v5 = MEMORY[0x277D75110];
  v6 = SBAXLocalizedString(@"TripleClickEnableTitle");
  v7 = [v5 alertControllerWithTitle:v6 message:v4 preferredStyle:1];

  v8 = SBAXLocalizedString(@"No");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__AXSpringBoardServerHelper__handleZoomTripleClickAfterConflict__block_invoke;
  v13[3] = &unk_27842C1F0;
  v13[4] = self;
  v9 = [AXAlertAction actionWithTitle:v8 style:1 handler:v13];

  [v9 setButtonIndex:0];
  [v7 addAction:v9];
  v10 = SBAXLocalizedString(@"Yes");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__AXSpringBoardServerHelper__handleZoomTripleClickAfterConflict__block_invoke_2;
  v12[3] = &unk_27842C1F0;
  v12[4] = self;
  v11 = [AXAlertAction actionWithTitle:v10 style:0 handler:v12];

  [v11 setButtonIndex:1];
  [v7 addAction:v11];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v7];
}

- (void)_handleDisableBrightnessFiltersAlert:(id)alert
{
  v4 = *MEMORY[0x277D81CA8];
  alertCopy = alert;
  v6 = [alertCopy objectForKeyedSubscript:v4];
  v7 = [alertCopy objectForKeyedSubscript:*MEMORY[0x277D81CB0]];
  v8 = v7;
  if (v6)
  {
    v9 = SBAXLocalizedStringWithTable(v7, v6);

    v10 = [alertCopy objectForKeyedSubscript:*MEMORY[0x277D81CA0]];

    SBAXLocalizedStringWithTable(v10, v6);
  }

  else
  {
    v9 = SBAXLocalizedString(v7);

    v10 = [alertCopy objectForKeyedSubscript:*MEMORY[0x277D81CA0]];

    SBAXLocalizedString(v10);
  }
  v11 = ;

  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v11 preferredStyle:1];
  v13 = SBAXLocalizedString(@"cancel");
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__AXSpringBoardServerHelper__handleDisableBrightnessFiltersAlert___block_invoke;
  v18[3] = &unk_27842C1F0;
  v18[4] = self;
  v14 = [AXAlertAction actionWithTitle:v13 style:1 handler:v18];

  [v14 setButtonIndex:0];
  [v12 addAction:v14];
  v15 = SBAXLocalizedString(@"enable");
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__AXSpringBoardServerHelper__handleDisableBrightnessFiltersAlert___block_invoke_2;
  v17[3] = &unk_27842C1F0;
  v17[4] = self;
  v16 = [AXAlertAction actionWithTitle:v15 style:0 handler:v17];

  [v16 setButtonIndex:1];
  [v12 addAction:v16];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v12];
}

- (id)_handleConfirmationDialogWithMessage:(id)message confirmTitle:(id)title
{
  v6 = MEMORY[0x277D75110];
  titleCopy = title;
  messageCopy = message;
  v9 = SBAXLocalizedString(@"USAGE_CONFIRMED_TITLE");
  v10 = [v6 alertControllerWithTitle:v9 message:messageCopy preferredStyle:1];

  v11 = SBAXLocalizedString(@"cancel");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__AXSpringBoardServerHelper__handleConfirmationDialogWithMessage_confirmTitle___block_invoke;
  v16[3] = &unk_27842C1F0;
  v16[4] = self;
  v12 = [AXAlertAction actionWithTitle:v11 style:1 handler:v16];

  [v10 addAction:v12];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__AXSpringBoardServerHelper__handleConfirmationDialogWithMessage_confirmTitle___block_invoke_2;
  v15[3] = &unk_27842C1F0;
  v15[4] = self;
  v13 = [AXAlertAction actionWithTitle:titleCopy style:0 handler:v15];

  [v13 setButtonIndex:0];
  [v10 addAction:v13];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v10];

  return v10;
}

- (id)_handleVOConfirmationDialogWithMessage:(id)message confirmTitle:(id)title
{
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:message message:0 preferredStyle:0];
  view = [v5 view];
  [view setAccessibilityIdentifier:@"VO_USAGE_CONFIRMED_ALERT"];

  v7 = SBAXLocalizedString(@"VoiceOver.confirmation.launchTutorial");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__AXSpringBoardServerHelper__handleVOConfirmationDialogWithMessage_confirmTitle___block_invoke;
  v16[3] = &unk_27842C1F0;
  v16[4] = self;
  v8 = [AXAlertAction actionWithTitle:v7 style:0 handler:v16];

  [v8 setButtonIndex:0];
  [v8 setAccessibilityIdentifier:@"VO_USAGE_CONFIRMED_TUTORIAL_BUTTON"];
  [v5 addAction:v8];
  v9 = SBAXLocalizedString(@"VoiceOver.confirmation.useVO");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__AXSpringBoardServerHelper__handleVOConfirmationDialogWithMessage_confirmTitle___block_invoke_2;
  v15[3] = &unk_27842C1F0;
  v15[4] = self;
  v10 = [AXAlertAction actionWithTitle:v9 style:0 handler:v15];

  [v5 addAction:v10];
  v11 = SBAXLocalizedString(@"cancel");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__AXSpringBoardServerHelper__handleVOConfirmationDialogWithMessage_confirmTitle___block_invoke_3;
  v14[3] = &unk_27842C1F0;
  v14[4] = self;
  v12 = [AXAlertAction actionWithTitle:v11 style:1 handler:v14];

  [v5 addAction:v12];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v5];

  return v5;
}

void __81__AXSpringBoardServerHelper__handleVOConfirmationDialogWithMessage_confirmTitle___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _handleAlertActionPress:a2];
  v2 = [MEMORY[0x277CE7E40] server];
  [v2 launchOnboardingViewService:@"voiceover"];
}

- (id)_handleUsageConfirmationDialogWithMessage:(id)message
{
  messageCopy = message;
  v5 = SBAXLocalizedString(@"OK");
  v6 = [(AXSpringBoardServerHelper *)self _handleConfirmationDialogWithMessage:messageCopy confirmTitle:v5];

  return v6;
}

- (id)_handleVOUsageConfirmationDialogWithMessage:(id)message
{
  messageCopy = message;
  v5 = SBAXLocalizedString(@"OK");
  v6 = [(AXSpringBoardServerHelper *)self _handleVOConfirmationDialogWithMessage:messageCopy confirmTitle:v5];

  return v6;
}

- (void)_handleVoiceOverUsageConfirmation
{
  v3 = AXLocStringKeyForHomeButton();
  v4 = AXLocStringKeyForModel();
  v6 = SBAXLocalizedString(v4);

  v5 = [(AXSpringBoardServerHelper *)self _handleVOUsageConfirmationDialogWithMessage:v6];
}

- (void)_handleVONoHomeButtonGestureAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = SBAXLocalizedString(@"voiceover.home.gesture.alert.title");
  v5 = AXLocStringKeyForModel();
  v6 = SBAXLocalizedString(v5);
  v7 = [v3 alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = SBAXLocalizedString(@"OK");
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__AXSpringBoardServerHelper__handleVONoHomeButtonGestureAlert__block_invoke;
  v10[3] = &unk_27842C1F0;
  v10[4] = self;
  v9 = [AXAlertAction actionWithTitle:v8 style:0 handler:v10];

  [v7 addAction:v9];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v7];
}

- (void)_handleAlwaysOnBluetoothModeForVoiceOver
{
  v3 = MEMORY[0x277D75110];
  v4 = SBAXLocalizedString(@"vo.bluetooth.always.on.for.braille");
  v5 = SBAXLocalizedString(@"vo.bluetooth.always.on.for.message");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = SBAXLocalizedString(@"OK");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__AXSpringBoardServerHelper__handleAlwaysOnBluetoothModeForVoiceOver__block_invoke;
  v12[3] = &unk_27842C1F0;
  v12[4] = self;
  v8 = [AXAlertAction actionWithTitle:v7 style:0 handler:v12];

  [v8 setButtonIndex:0];
  [v6 addAction:v8];
  v9 = SBAXLocalizedString(@"cancel");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__AXSpringBoardServerHelper__handleAlwaysOnBluetoothModeForVoiceOver__block_invoke_2;
  v11[3] = &unk_27842C1F0;
  v11[4] = self;
  v10 = [AXAlertAction actionWithTitle:v9 style:1 handler:v11];

  [v10 setButtonIndex:1];
  [v6 addAction:v10];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v6];
}

- (void)_handleDisallowUSBRestrictedModeVOInformativeOnly:(BOOL)only
{
  onlyCopy = only;
  if (AXDeviceIsPod())
  {
    v5 = @"vo.disallow.usb.restricted.mode.alert.message_IPOD";
    if (!onlyCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (AXDeviceIsPad())
  {
    v5 = @"vo.disallow.usb.restricted.mode.alert.message_IPAD";
  }

  else
  {
    v5 = @"vo.disallow.usb.restricted.mode.alert.message_IPHONE";
  }

  if (onlyCopy)
  {
LABEL_8:
    v5 = [(__CFString *)v5 stringByAppendingString:@".informativeOnly"];
  }

LABEL_9:
  v6 = MEMORY[0x277D75110];
  v7 = SBAXLocalizedString(@"vo.disallow.usb.restricted.mode.alert.title");
  v8 = SBAXLocalizedString(v5);
  v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = SBAXLocalizedString(@"OK");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__AXSpringBoardServerHelper__handleDisallowUSBRestrictedModeVOInformativeOnly___block_invoke;
  v12[3] = &unk_27842C1F0;
  v12[4] = self;
  v11 = [AXAlertAction actionWithTitle:v10 style:0 handler:v12];

  [v9 addAction:v11];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v9];
}

- (void)_handleDisallowUSBRestrictedModeSCInformativeOnly:(BOOL)only
{
  onlyCopy = only;
  if (AXDeviceIsUnlocked())
  {
    if (AXDeviceIsPod())
    {
      v5 = @"sc.disallow.usb.restricted.mode.alert.message_IPOD";
      if (!onlyCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (AXDeviceIsPad())
      {
        v5 = @"sc.disallow.usb.restricted.mode.alert.message_IPAD";
      }

      else
      {
        v5 = @"sc.disallow.usb.restricted.mode.alert.message_IPHONE";
      }

      if (!onlyCopy)
      {
        goto LABEL_12;
      }
    }

    v5 = [(__CFString *)v5 stringByAppendingString:@".informativeOnly"];
LABEL_12:
    v6 = MEMORY[0x277D75110];
    v7 = SBAXLocalizedString(@"sc.disallow.usb.restricted.mode.alert.title");
    v8 = SBAXLocalizedString(v5);
    v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = SBAXLocalizedString(@"OK");
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__AXSpringBoardServerHelper__handleDisallowUSBRestrictedModeSCInformativeOnly___block_invoke;
    v12[3] = &unk_27842C1F0;
    v12[4] = self;
    v11 = [AXAlertAction actionWithTitle:v10 style:0 handler:v12];

    [v9 addAction:v11];
    [(AXSpringBoardServerHelper *)self _displayAlertController:v9];

    goto LABEL_13;
  }

  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_DEFAULT, "Not showing USB restricted mode alert because device is locked", buf, 2u);
  }

LABEL_13:
}

- (void)_handleASTMenuFullForInstance:(id)instance
{
  instanceCopy = instance;
  v5 = MEMORY[0x277D75110];
  v6 = SBAXLocalizedString(@"DWELL_CONTROL_CUSTOMIZE_MENU");
  v7 = SBAXLocalizedString(@"DWELL_CONTROL_ADD_DWELL_SCROLL");
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = SBAXLocalizedString(@"No");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__AXSpringBoardServerHelper__handleASTMenuFullForInstance___block_invoke;
  v16[3] = &unk_27842C1F0;
  v16[4] = self;
  v10 = [AXAlertAction actionWithTitle:v9 style:1 handler:v16];

  [v10 setButtonIndex:0];
  [v8 addAction:v10];
  v11 = SBAXLocalizedString(@"DWELL_CONTROL_CUSTOMIZE");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__AXSpringBoardServerHelper__handleASTMenuFullForInstance___block_invoke_2;
  v14[3] = &unk_27842C1C8;
  v14[4] = self;
  v15 = instanceCopy;
  v12 = instanceCopy;
  v13 = [AXAlertAction actionWithTitle:v11 style:0 handler:v14];

  [v13 setButtonIndex:1];
  [v8 addAction:v13];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v8];
}

uint64_t __59__AXSpringBoardServerHelper__handleASTMenuFullForInstance___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _handleAlertActionPress:a2];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 openMenuCustomizationForASTWithServerInstance:v4];
}

- (void)_handleASTMenuCustomizeAddDwell:(BOOL)dwell addScroll:(BOOL)scroll
{
  v5 = @"DWELL_CONTROL_ADD_DWELL";
  if (scroll)
  {
    v5 = @"DWELL_CONTROL_ADD_DWELL_SCROLL";
  }

  if (!dwell)
  {
    v5 = @"DWELL_CONTROL_ADD_SCROLL";
  }

  v6 = MEMORY[0x277D75110];
  v7 = v5;
  v8 = SBAXLocalizedString(@"DWELL_CONTROL_CUSTOMIZE_MENU");
  v9 = SBAXLocalizedString(v7);

  v10 = [v6 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = SBAXLocalizedString(@"cancel");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__AXSpringBoardServerHelper__handleASTMenuCustomizeAddDwell_addScroll___block_invoke;
  v16[3] = &unk_27842C1F0;
  v16[4] = self;
  v12 = [AXAlertAction actionWithTitle:v11 style:1 handler:v16];

  [v12 setButtonIndex:0];
  [v10 addAction:v12];
  v13 = SBAXLocalizedString(@"Yes");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__AXSpringBoardServerHelper__handleASTMenuCustomizeAddDwell_addScroll___block_invoke_2;
  v15[3] = &unk_27842C1F0;
  v15[4] = self;
  v14 = [AXAlertAction actionWithTitle:v13 style:0 handler:v15];

  [v14 setButtonIndex:1];
  [v10 addAction:v14];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v10];
}

- (void)_handleConnectedDevicesHaveAssistiveTouchCustomActions
{
  v3 = MEMORY[0x277D75110];
  v4 = SBAXLocalizedStringWithTable(@"devices.require.ast.title", @"Accessibility-hello");
  v5 = SBAXLocalizedStringWithTable(@"devices.have.ast.customActions", @"Accessibility-hello");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = SBAXLocalizedString(@"cancel");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__AXSpringBoardServerHelper__handleConnectedDevicesHaveAssistiveTouchCustomActions__block_invoke;
  v12[3] = &unk_27842C1F0;
  v12[4] = self;
  v8 = [AXAlertAction actionWithTitle:v7 style:1 handler:v12];

  [v8 setButtonIndex:0];
  [v6 addAction:v8];
  v9 = SBAXLocalizedString(@"turn.off");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__AXSpringBoardServerHelper__handleConnectedDevicesHaveAssistiveTouchCustomActions__block_invoke_2;
  v11[3] = &unk_27842C1F0;
  v11[4] = self;
  v10 = [AXAlertAction actionWithTitle:v9 style:2 handler:v11];

  [v10 setButtonIndex:1];
  [v6 addAction:v10];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v6];
}

- (void)_handleSecureItentAlertForSwitchAST
{
  v3 = _AXSAssistiveTouchEnabled();
  v4 = v3 == 0;
  if (v3)
  {
    v5 = @"SECURE_INTENT_ALERT_FIRST_USE_TITLE_AST";
  }

  else
  {
    v5 = @"SECURE_INTENT_ALERT_FIRST_USE_TITLE_SC";
  }

  if (v4)
  {
    v6 = @"SECURE_INTENT_ALERT_FIRST_USE_BODY_SC";
  }

  else
  {
    v6 = @"SECURE_INTENT_ALERT_FIRST_USE_BODY_AST";
  }

  v7 = SBAXLocalizedString(v5);
  v8 = SBAXLocalizedString(v6);
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  v10 = SBAXLocalizedString(@"OK");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__AXSpringBoardServerHelper__handleSecureItentAlertForSwitchAST__block_invoke;
  v12[3] = &unk_27842C1F0;
  v12[4] = self;
  v11 = [AXAlertAction actionWithTitle:v10 style:0 handler:v12];

  [v9 addAction:v11];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v9];
}

- (void)_handleSwitchUsageConfirmed
{
  v3 = AXLocStringKeyForHomeButton();
  v4 = AXLocStringKeyForModel();
  v6 = SBAXLocalizedString(v4);

  v5 = [(AXSpringBoardServerHelper *)self _handleUsageConfirmationDialogWithMessage:v6];
}

- (void)_handleDisableAssistiveTouchConfirmation
{
  v3 = AXUILocalizedStringForKey();
  v6 = SBAXLocalizedString(v3);

  v4 = SBAXLocalizedString(@"Yes");
  v5 = [(AXSpringBoardServerHelper *)self _handleConfirmationDialogWithMessage:v6 confirmTitle:v4];
}

- (void)_handleDisableSwitchControlConfirmation
{
  v3 = AXUILocalizedStringForKey();
  v6 = SBAXLocalizedString(v3);

  v4 = SBAXLocalizedString(@"Yes");
  v5 = [(AXSpringBoardServerHelper *)self _handleConfirmationDialogWithMessage:v6 confirmTitle:v4];
}

- (void)_handleDisableFKAConfirmation
{
  v3 = AXUILocalizedStringForKey();
  v6 = SBAXLocalizedString(v3);

  v4 = SBAXLocalizedString(@"Yes");
  v5 = [(AXSpringBoardServerHelper *)self _handleConfirmationDialogWithMessage:v6 confirmTitle:v4];
}

- (void)_handleLiveTranscriptionConfirmation
{
  v3 = SBAXLocalizedString(@"OK");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__AXSpringBoardServerHelper__handleLiveTranscriptionConfirmation__block_invoke;
  v15[3] = &unk_27842C1F0;
  v15[4] = self;
  v4 = [AXAlertAction actionWithTitle:v3 style:0 handler:v15];

  [v4 setButtonIndex:1];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:@"kAXLiveTranscriptionConfirmationAlertDefaultsKey"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isEqualToString:@"AXLiveTranscriptionAlertShowed"])
  {
    [(AXSpringBoardServerHelper *)self _handleAlertActionPress:v4];
  }

  else
  {
    v7 = MEMORY[0x277D75110];
    v8 = AXUILocalizedStringForKey();
    v9 = AXLocStringKeyForModel();
    v10 = AXUILocalizedStringForKey();
    v11 = [v7 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = SBAXLocalizedString(@"cancel");
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__AXSpringBoardServerHelper__handleLiveTranscriptionConfirmation__block_invoke_2;
    v14[3] = &unk_27842C1F0;
    v14[4] = self;
    v13 = [AXAlertAction actionWithTitle:v12 style:1 handler:v14];

    [v13 setButtonIndex:0];
    [v11 addAction:v13];
    [v11 addAction:v4];
    [(AXSpringBoardServerHelper *)self _displayAlertController:v11];
  }
}

void __65__AXSpringBoardServerHelper__handleLiveTranscriptionConfirmation__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v6 = a2;
  v4 = [v3 standardUserDefaults];
  [v4 setObject:@"AXLiveTranscriptionAlertShowed" forKey:@"kAXLiveTranscriptionConfirmationAlertDefaultsKey"];

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 synchronize];

  [*(a1 + 32) _handleAlertActionPress:v6];
}

- (void)_handleDisableOnDeviceEyeTrackingConfirmation
{
  v3 = SBAXLocalizedString(@"OK");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__AXSpringBoardServerHelper__handleDisableOnDeviceEyeTrackingConfirmation__block_invoke;
  v12[3] = &unk_27842C1F0;
  v12[4] = self;
  v4 = [AXAlertAction actionWithTitle:v3 style:0 handler:v12];

  [v4 setButtonIndex:1];
  v5 = MEMORY[0x277D75110];
  v6 = SBAXLocalizedString(@"USAGE_CONFIRMED_TITLE");
  v7 = AXUILocalizedStringForKey();
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = SBAXLocalizedString(@"cancel");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__AXSpringBoardServerHelper__handleDisableOnDeviceEyeTrackingConfirmation__block_invoke_2;
  v11[3] = &unk_27842C1F0;
  v11[4] = self;
  v10 = [AXAlertAction actionWithTitle:v9 style:1 handler:v11];

  [v10 setButtonIndex:0];
  [v8 addAction:v10];
  [v8 addAction:v4];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v8];
}

void __74__AXSpringBoardServerHelper__handleDisableOnDeviceEyeTrackingConfirmation__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CE7E20];
  v6 = a2;
  v4 = [v3 sharedInstance];
  [v4 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:0];

  v5 = [MEMORY[0x277CE7E20] sharedInstance];
  [v5 setSwitchControlOnDeviceEyeTrackingEnabled:0];

  [*(a1 + 32) _handleAlertActionPress:v6];
}

- (void)_handleTouchAccommodationsUsageConfirmed
{
  v3 = AXLocStringKeyForHomeButton();
  v4 = AXLocStringKeyForModel();
  v6 = SBAXLocalizedString(v4);

  v5 = [(AXSpringBoardServerHelper *)self _handleUsageConfirmationDialogWithMessage:v6];
}

- (void)handleBrokenHomeButtonAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = SBAXLocalizedString(@"broken.home.button.title");
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v5 = [v3 alertControllerWithTitle:v4 message:&stru_2833AA238 preferredStyle:1];
  }

  else
  {
    v6 = SBAXLocalizedString(@"broken.home.button.message");
    v5 = [v3 alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  }

  v7 = SBAXLocalizedString(@"OK");
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__AXSpringBoardServerHelper_handleBrokenHomeButtonAlert__block_invoke;
  v9[3] = &unk_27842C1F0;
  v9[4] = self;
  v8 = [AXAlertAction actionWithTitle:v7 style:0 handler:v9];

  [v5 addAction:v8];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v5];
}

- (void)_handleZoomInBuddyAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = SBAXLocalizedString(@"enable.zoom.purple.buddy.title");
  v5 = SBAXLocalizedString(@"enable.zoom.purple.buddy.message");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = SBAXLocalizedString(@"cancel");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__AXSpringBoardServerHelper__handleZoomInBuddyAlert__block_invoke;
  v12[3] = &unk_27842C1F0;
  v12[4] = self;
  v8 = [AXAlertAction actionWithTitle:v7 style:1 handler:v12];

  [v6 addAction:v8];
  v9 = SBAXLocalizedString(@"enable");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__AXSpringBoardServerHelper__handleZoomInBuddyAlert__block_invoke_2;
  v11[3] = &unk_27842C1F0;
  v11[4] = self;
  v10 = [AXAlertAction actionWithTitle:v9 style:0 handler:v11];

  [v10 setButtonIndex:0];
  [v6 addAction:v10];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v6];
}

- (void)_handleConfirmRebootDevice
{
  if (AXDeviceIsPad())
  {
    v3 = @"REBOOT_ALERT_MESSAGE_IPAD";
  }

  else if (AXDeviceIsPod())
  {
    v3 = @"REBOOT_ALERT_MESSAGE_IPOD";
  }

  else
  {
    v3 = @"REBOOT_ALERT_MESSAGE_IPHONE";
  }

  v4 = MEMORY[0x277D75110];
  v5 = SBAXLocalizedString(v3);
  v6 = [v4 alertControllerWithTitle:0 message:v5 preferredStyle:1];

  v7 = SBAXLocalizedString(@"cancel");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__AXSpringBoardServerHelper__handleConfirmRebootDevice__block_invoke;
  v12[3] = &unk_27842C1F0;
  v12[4] = self;
  v8 = [AXAlertAction actionWithTitle:v7 style:1 handler:v12];

  [v6 addAction:v8];
  v9 = SBAXLocalizedString(@"REBOOT_ALERT_CONFIRM");
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__AXSpringBoardServerHelper__handleConfirmRebootDevice__block_invoke_2;
  v11[3] = &unk_27842C1F0;
  v11[4] = self;
  v10 = [AXAlertAction actionWithTitle:v9 style:0 handler:v11];

  [v10 setButtonIndex:0];
  [v6 addAction:v10];
  [(AXSpringBoardServerHelper *)self _displayAlertController:v6];
}

- (BOOL)_accessibilityHandleHomeOrLockButtonPress
{
  if (!UIAccessibilityIsGuidedAccessEnabled())
  {
    mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
    [mEMORY[0x277D7EA38] notifyZoomHomeButtonWasPressed];
  }

  _isDisplayingAlertController = [SBServerHelper _isDisplayingAlertController];
  if (_isDisplayingAlertController)
  {
    [SBServerHelper _dismissAlertController];
  }

  else
  {
    v4 = +[AXSBHearingAidDeviceController sharedController];
    isShowingHearingAidControl = [v4 isShowingHearingAidControl];

    if (isShowingHearingAidControl)
    {
      v6 = +[AXSBHearingAidDeviceController sharedController];
      [v6 showHearingAidControl:0];
    }
  }

  return _isDisplayingAlertController;
}

- (void)didFailToFloatAppForSideAppManager:(id)manager
{
  v3 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v3 springBoardActionOccurred:12];
}

- (void)didFailToPinAppForSideAppManager:(id)manager
{
  v3 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v3 springBoardActionOccurred:11];
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  v18[2] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v8 = [mEMORY[0x277D75128] safeValueForKey:@"_frontMostAppOrientation"];
  integerValue = [v8 integerValue];

  if (integerValue)
  {
    orientationCopy = orientation;
  }

  else
  {
    orientationCopy = 0;
  }

  v17[0] = *MEMORY[0x277CE7C88];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:orientationCopy];
  v18[0] = v11;
  v17[1] = *MEMORY[0x277CE7C90];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v14 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v14 springBoardActionOccurred:4 withPayload:v13];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXSBServerOrientationChange" object:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)installGuestPassPINGesture
{
  if (![(AXSpringBoardServerHelper *)self guestPassShowPINRecognizerIsInstalled])
  {
    v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__guestPassShowPIN_];
    [v3 setNumberOfTouchesRequired:3];
    [v3 setMinimumPressDuration:3.0];
    [v3 setName:@"AXGuestPassShowPIN"];
    [v3 setDelegate:self];
    mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    [mEMORY[0x277D76330] addGestureRecognizer:v3 toDisplayWithIdentity:mainIdentity];

    [(AXSpringBoardServerHelper *)self setGuestPassShowPINRecognizerIsInstalled:1];
  }

  if (![(AXSpringBoardServerHelper *)self guestPassSpeakPINRecognizerIsInstalled])
  {
    v8 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__guestPassSpeakPIN_];
    [v8 setNumberOfTouchesRequired:3];
    [v8 setMinimumPressDuration:5.0];
    [v8 setName:@"AXGuestPassSpeakPIN"];
    [v8 setDelegate:self];
    mEMORY[0x277D76330]2 = [MEMORY[0x277D76330] sharedInstance];
    mainIdentity2 = [MEMORY[0x277D0AA90] mainIdentity];
    [mEMORY[0x277D76330]2 addGestureRecognizer:v8 toDisplayWithIdentity:mainIdentity2];

    [(AXSpringBoardServerHelper *)self setGuestPassSpeakPINRecognizerIsInstalled:1];
  }
}

- (void)installGuestPassAcceptDialogGesture
{
  guestPassAcceptDialogRecognizer = [(AXSpringBoardServerHelper *)self guestPassAcceptDialogRecognizer];

  if (!guestPassAcceptDialogRecognizer)
  {
    v6 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__guestPassAcceptDialog_];
    [v6 setNumberOfTouchesRequired:3];
    [v6 setMinimumPressDuration:3.0];
    [v6 setName:@"AXGuestPassAcceptDialog"];
    [v6 setDelegate:self];
    mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    [mEMORY[0x277D76330] addGestureRecognizer:v6 toDisplayWithIdentity:mainIdentity];

    [(AXSpringBoardServerHelper *)self setGuestPassAcceptDialogRecognizer:v6];
  }
}

- (void)removeGuestPassAcceptDialogGesture
{
  guestPassAcceptDialogRecognizer = [(AXSpringBoardServerHelper *)self guestPassAcceptDialogRecognizer];

  if (guestPassAcceptDialogRecognizer)
  {
    mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
    guestPassAcceptDialogRecognizer2 = [(AXSpringBoardServerHelper *)self guestPassAcceptDialogRecognizer];
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    [mEMORY[0x277D76330] removeGestureRecognizer:guestPassAcceptDialogRecognizer2 fromDisplayWithIdentity:mainIdentity];

    [(AXSpringBoardServerHelper *)self setGuestPassAcceptDialogRecognizer:0];
  }
}

- (void)_guestPassShowPIN:(id)n
{
  nCopy = n;
  if ([nCopy state] == 1)
  {
    feedbackGenerator = [(AXSpringBoardServerHelper *)self feedbackGenerator];
    [feedbackGenerator impactOccurred];

    v6 = AXLogGuestPass();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_21FE6B000, v6, OS_LOG_TYPE_INFO, "Asking UIServer to show pin", v11, 2u);
    }

    guestPassClient = [(AXSpringBoardServerHelper *)self guestPassClient];
    mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
    [guestPassClient sendAsynchronousMessage:0 withIdentifier:11 targetAccessQueue:mainAccessQueue completion:0];
  }

  else if ([nCopy state] == 3)
  {
    mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    [mEMORY[0x277D76330] removeGestureRecognizer:nCopy fromDisplayWithIdentity:mainIdentity];

    [(AXSpringBoardServerHelper *)self setGuestPassShowPINRecognizerIsInstalled:0];
  }
}

- (void)_guestPassSpeakPIN:(id)n
{
  nCopy = n;
  if ([nCopy state] == 1)
  {
    v5 = AXLogGuestPass();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_INFO, "Asking UIServer to speak pin", v10, 2u);
    }

    guestPassClient = [(AXSpringBoardServerHelper *)self guestPassClient];
    mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
    [guestPassClient sendAsynchronousMessage:0 withIdentifier:12 targetAccessQueue:mainAccessQueue completion:0];
  }

  else if ([nCopy state] == 3)
  {
    mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    [mEMORY[0x277D76330] removeGestureRecognizer:nCopy fromDisplayWithIdentity:mainIdentity];

    [(AXSpringBoardServerHelper *)self setGuestPassSpeakPINRecognizerIsInstalled:0];
  }
}

- (void)_guestPassAcceptDialog:(id)dialog
{
  dialogCopy = dialog;
  if ([dialogCopy state] == 1)
  {
    v5 = AXLogGuestPass();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_INFO, "Asking UIServer to accept confirmation dialog", v11, 2u);
    }

    guestPassClient = [(AXSpringBoardServerHelper *)self guestPassClient];
    mainAccessQueue = [MEMORY[0x277CE6948] mainAccessQueue];
    [guestPassClient sendAsynchronousMessage:0 withIdentifier:13 targetAccessQueue:mainAccessQueue completion:0];

    feedbackGenerator = [(AXSpringBoardServerHelper *)self feedbackGenerator];
    [feedbackGenerator impactOccurred];
  }

  else if ([dialogCopy state] == 3)
  {
    mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
    mainIdentity = [MEMORY[0x277D0AA90] mainIdentity];
    [mEMORY[0x277D76330] removeGestureRecognizer:dialogCopy fromDisplayWithIdentity:mainIdentity];

    [(AXSpringBoardServerHelper *)self setGuestPassAcceptDialogRecognizer:0];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  name = [recognizer name];
  if ([name containsString:@"AXGuestPass"])
  {
    v7 = 1;
  }

  else
  {
    name2 = [gestureRecognizerCopy name];
    v7 = [name2 containsString:@"AXGuestPass"];
  }

  return v7;
}

- (AXUIClient)guestPassClient
{
  guestPassClient = self->_guestPassClient;
  if (!guestPassClient)
  {
    v4 = objc_alloc(MEMORY[0x277CE7740]);
    v5 = MEMORY[0x277CCACA8];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v7 = [v5 stringWithFormat:@"GuestPassClient-%d", objc_msgSend(processInfo, "processIdentifier")];
    v8 = [v4 initWithIdentifier:v7 serviceBundleName:*MEMORY[0x277CE7BF8]];
    v9 = self->_guestPassClient;
    self->_guestPassClient = v8;

    guestPassClient = self->_guestPassClient;
  }

  return guestPassClient;
}

- (void)launchVoiceOverImageExplorerViewServiceWithServerInstance:(void *)a1 forData:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 hostAppName];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)launchVoiceOverImageExplorerViewServiceWithServerInstance:forData:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_21FE6B000, v0, OS_LOG_TYPE_FAULT, "Failed to archive AXSBImageExplorerData. error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)launchVoiceOverImageExplorerViewServiceWithServerInstance:forData:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSecurePayAccessibilityFeaturesDisabled:withServerInstance:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)appNameFromPid:(void *)a1 withServerInstance:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)appNameFromPid:withServerInstance:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_21FE6B000, v0, OS_LOG_TYPE_DEBUG, "Process AppID: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)appNameFromPid:withServerInstance:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_21FE6B000, v0, OS_LOG_TYPE_DEBUG, "Host AppID: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)appNameFromPid:(void *)a1 withServerInstance:.cold.4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)appNameFromPid:withServerInstance:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__AXSpringBoardServerHelper_presentNearbyDeviceControlPickerWithServerInstance___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)nativeFocusedApplication
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_displayViewController:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end