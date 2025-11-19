@interface SpringBoardAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHitTestsStatusBar;
- (BOOL)_accessibilityIsAlarmRinging;
- (BOOL)_accessibilityIsAppSwitcherVisible;
- (BOOL)_accessibilityIsBatteryLow;
- (BOOL)_accessibilityIsShowingLongLookNotification;
- (BOOL)_accessibilityIsShowingShortcutsUI;
- (BOOL)_accessibilityIsSystemLocked;
- (BOOL)_accessibilityIsSystemSleeping;
- (BOOL)_accessibilityIsVoiceControlRunning;
- (BOOL)_accessibilityShouldHitTestStatusBarWindow;
- (BOOL)_accessibilitySwitchNativeFocusedApplicationWithPID:(int)a3 identifier:(id)a4;
- (BOOL)_accessibilitySystemAppServerIsReady;
- (BOOL)_accessibilitySystemWideGestureInProgress;
- (BOOL)_axIsKeyUIEventCommandTab:(id)a3;
- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5;
- (BOOL)_isDim;
- (BOOL)accessibilityStartStopToggle;
- (BOOL)handleDoubleHeightStatusBarTapWithStyleOverride:(unint64_t)a3;
- (id)_accessibilityActiveSceneIdentifier;
- (id)_accessibilityAppIconValues;
- (id)_accessibilityCenterPointOfScreen;
- (id)_accessibilityFocusActiveActivityName;
- (id)_accessibilityFocusableScenes;
- (id)_accessibilityFrontmostItemContainer;
- (id)_accessibilityHomeAffordanceView;
- (id)_accessibilityLaunchableApps;
- (id)_accessibilityNextDockElementStartingAtDisplayID:(unsigned int)a3;
- (id)_accessibilityNotificationSummary:(unint64_t)a3;
- (id)_accessibilityOccludedAppSceneIdentifiers;
- (id)_accessibilityOccludedMultitaskingApps;
- (id)_accessibilityPIPCoordinator;
- (id)_accessibilityPictureInPictureWindow;
- (id)_accessibilitySideAppDividerElement;
- (id)_accessibilitySoftwareMimicKeyboard;
- (id)_accessibilityStatusBar;
- (id)_accessibilityStatusBarElements:(BOOL)a3 sorted:(BOOL)a4;
- (id)_axKeyboardFocusCoordinator;
- (id)_firstStatusBarElement;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3;
- (id)_iosAccessibilityAttributeValue:(int64_t)a3 forParameter:(id)a4;
- (id)_lastStatusBarElement;
- (id)axSBCommandTabController;
- (int)_accessibilityCurrentCallState;
- (int)_accessibilityRemoteKeyboardApp;
- (int64_t)_accessibilityApplicationOrientation;
- (unint64_t)_accessibilityNotificationCount;
- (void)__accessibilityUpdateSpeakScreenGestureRecognizer;
- (void)_accessibilityDeactivationAnimationWillBegin;
- (void)_accessibilityHandleSpeakScreenGesture:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityLoadPIPInfo;
- (void)_accessibilityStatusChanged:(id)a3;
- (void)_accessibilityUpdateRingerState;
- (void)_accessibilityUpdateSpeakScreenGestureRecognizer;
- (void)_handleKeyUIEvent:(id)a3;
- (void)_keyboardOrCaseLatchWantsToAttemptUnlock:(int)a3;
- (void)_legacy_noteInterfaceOrientationChanged:(int64_t)a3 duration:(double)a4 updateMirroredDisplays:(BOOL)a5 force:(BOOL)a6 logMessage:(id)a7;
- (void)_monitorContinuityDisplayChanges;
- (void)_processAccessibilityStatusChange:(id)a3;
- (void)_registerObserversForFBProcessManager;
- (void)_registerforAXNotifications;
- (void)_resetContinuityStateForActiveProcesses;
- (void)_stopContinuityDisplayMonitorIfNecessary;
- (void)_takeScreenshotWithPresentationMode:(unint64_t)a3;
- (void)_unregisterObserversForFBProcessManager;
- (void)_updateContinuityAttributesForProcess:(id)a3 isActive:(BOOL)a4;
- (void)_updateContinuityStateForAXReadyNotificationData:(id)a3;
- (void)_updateRingerState:(int)a3 reason:(id)a4;
- (void)accessibilityDisable;
- (void)accessibilityInitialize;
- (void)applicationDidFinishLaunching:(id)a3;
- (void)observer:(id)a3 didObserveNotification:(int)a4 notificationData:(void *)a5;
- (void)process:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
- (void)processManager:(id)a3 didAddProcess:(id)a4;
- (void)processManager:(id)a3 didRemoveProcess:(id)a4;
- (void)restartManagerWillReboot:(id)a3;
@end

@implementation SpringBoardAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"_isDim" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_AXSpringBoardServerInstance" hasClassMethod:@"springBoardServerInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"handleDoubleHeightStatusBarTapWithStyleOverride:" withFullSignature:{"B", "Q", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"_keyboardOrCaseLatchWantsToAttemptUnlock:" withFullSignature:{"v", "i", 0}];
  [v3 validateClass:@"SBControlCenterCoordinator"];
  [v3 validateClass:@"SBMediaController" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBMediaController" hasInstanceMethod:@"isPaused" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBConferenceManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBConferenceManager" hasInstanceMethod:@"faceTimeInvitationExists" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBConferenceManager" hasInstanceMethod:@"inFaceTime" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBConferenceManager" hasInstanceMethod:@"endFaceTime" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBControlCenterCoordinator" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBControlCenterCoordinator" hasInstanceMethod:@"presentedControlCenterController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBControlCenterController" hasInstanceVariable:@"_viewController" withType:"UIViewController<CCUIMainViewController><CCUIMainViewControllerPPTSupporting>"];
  [v3 validateClass:@"CCUIMainViewController" hasInstanceMethod:@"_statusLabelViewContainerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUIStatusBar" hasInstanceVariable:@"_compactTrailingStatusBar" withType:"UIStatusBar"];
  [v3 validateClass:@"CCUIStatusBar" hasInstanceVariable:@"_expandedStatusBar" withType:"UIStatusBar"];
  [v3 validateClass:@"CCUIContentModuleContainerViewController" hasInstanceMethod:@"setGridSizeClass:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"CCUIHeaderPocketView" hasInstanceMethod:@"statusBar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"isInternalApplication" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBAppSwitcherPageView" hasInstanceMethod:@"_overlayClippingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBAssistantWindow"];
  [v3 validateClass:@"SBSceneManagerCoordinator"];
  [v3 validateClass:@"SBUIController" hasInstanceMethod:@"_activateApplicationFromAccessibility:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"unlockUIFromSource:withOptions:" withFullSignature:{"B", "i", "@", 0}];
  [v3 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"lockScreenEnvironment" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"SBLockScreenEnvironment" hasRequiredInstanceMethod:@"rootViewController"];
  [v3 validateClass:@"SBLockScreenViewControllerBase"];
  [v3 validateClass:@"SBLockScreenViewControllerBase" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"notificationDispatcher" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBNCNotificationDispatcher" hasInstanceVariable:@"_alertingController" withType:"SBNCAlertingController"];
  [v3 validateClass:@"SBNCAlertingController" hasInstanceMethod:@"soundController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBNCNotificationDispatcher" hasInstanceMethod:@"bannerDestination" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBNCNotificationDispatcher" hasInstanceMethod:@"dashBoardDestination" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"isPresentingBannerInLongLook" withFullSignature:{"B", 0}];
  [v3 validateProtocol:@"SBNotificationDestination" conformsToProtocol:@"SBFNotificationLongLookPresenting"];
  [v3 validateProtocol:@"SBFNotificationLongLookPresenting" hasRequiredInstanceMethod:@"isPresentingNotificationInLongLook"];
  [v3 validateClass:@"SBMainDisplaySceneManager" isKindOfClass:@"SBSceneManager"];
  [v3 validateClass:@"SBSceneManager" hasInstanceMethod:@"windowScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIWindowScene" hasInstanceMethod:@"keyWindow" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleItemContainers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherItemContainer" hasInstanceVariable:@"_pageView" withType:"SBAppSwitcherPageView"];
  [v3 validateClass:@"SpringBoard" hasInstanceVariable:@"_extendedDisplayControllerProvider" withType:"SBSceneHostingDisplayControllerProvider"];
  [v3 validateClass:@"SBSceneManagerCoordinator" hasClassMethod:@"mainDisplaySceneManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator"];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController"];
  [v3 validateClass:@"SBSwitcherController" hasProperty:@"contentViewController" withType:"@"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"layoutContext" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherLayoutContext" hasInstanceMethod:@"layoutState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherItemContainer" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBAppLayout" hasInstanceVariable:@"_items" withType:"NSArray"];
  [v3 validateClass:@"SBFullScreenSwitcherSceneLiveContentOverlay" hasInstanceMethod:@"deviceApplicationSceneViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController"];
  [v3 validateClass:@"SBAppContainerViewController"];
  [v3 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"pipCoordinator" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBPIPControllerCoordinator" hasInstanceVariable:@"_controllersByType" withType:"NSMutableDictionary"];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"brightnessControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBPIPController" hasInstanceMethod:@"_leadingWindowForWindowScene:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBPIPController" hasInstanceMethod:@"_windowScenesDisplayingPIPContent" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"applicationDidFinishLaunching:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceVariable:@"_hasFinishedLaunching" withType:"B"];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"restartManagerWillReboot:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_axIsFloatingSwitcherVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHomeGrabberView" hasInstanceVariable:@"_pillView" withType:"MTLumaDodgePillView"];
  [v3 validateClass:@"SBMainWorkspace"];
  [v3 validateClass:@"SBMainWorkspace" hasClassMethod:@"_instanceIfExists" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"ringerControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainWorkspace" hasInstanceVariable:@"_keyboardFocusCoordinator" withType:"<SBKeyboardFocusControlling>"];
  [v3 validateClass:@"SBKeyboardFocusCoordinator" hasInstanceMethod:@"_sceneControllerForScene:" withFullSignature:{"@", "@", 0}];
  [v3 validateProtocol:@"SBKeyboardFocusControlling" hasRequiredInstanceMethod:@"inputUISceneController"];
  [v3 validateClass:@"SBInputUISceneController" hasInstanceVariable:@"_inputUIScene" withType:"FBScene"];
  [v3 validateClass:@"SBRingerControl"];
  [v3 validateClass:@"SBRingerControl" hasInstanceMethod:@"_accessibilityIsRingerMuted" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBLayoutState"];
  [v3 validateClass:@"SBLayoutState" hasInstanceMethod:@"elementWithRole:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"SBLayoutElement"];
  [v3 validateClass:@"SBApplicationSceneEntity"];
  [v3 validateClass:@"SBApplicationSceneEntity" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplication"];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleUnderlayAccessoryViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherSpaceUnderlayAccessoryView" hasInstanceVariable:@"_resizeGrabber" withType:"SBSeparatorView"];
  [v3 validateClass:@"SiriPresentationSpringBoardMainScreenViewController"];
  [v3 validateClass:@"SiriPresentationSpringBoardMainScreenViewController" isKindOfClass:@"SiriPresentationViewController"];
  [v3 validateClass:@"SiriPresentationViewController" hasInstanceMethod:@"siriViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AFUISiriViewController"];
  [v3 validateClass:@"AFUISiriViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AFUISiriViewController" hasInstanceMethod:@"_siriView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AFUISiriViewController" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AFUISiriView"];
  [v3 validateClass:@"AFUISiriView" hasInstanceVariable:@"_siriStatusView" withType:"UIView<SiriUISiriStatusViewProtocol>"];
  [v3 validateClass:@"UIScreenEdgePanGestureRecognizer" hasInstanceMethod:@"_touchInterfaceOrientation" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBCommandTabController"];
  [v3 validateClass:@"SBCommandTabController" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBCommandTabController" hasInstanceMethod:@"next" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIStatusBar_Modern"];
  [v3 validateClass:@"_UIStatusBarAccessibility" hasInstanceMethod:@"_axSetIsHitTesting:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"bannerManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBBannerManager" hasInstanceMethod:@"isDisplayingBannerInWindowScene:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"SBBrightnessControl" hasInstanceVariable:@"_displayBrightnessController" withType:"SBDisplayBrightnessController"];
  [v3 validateClass:@"SBDisplayBrightnessController" hasInstanceMethod:@"handleBrightnessKeyPressEvent:" withFullSignature:{"v", "^{__IOHIDEvent=}", 0}];
  [v3 validateClass:@"SBTopAffordanceDotsView"];
  [v3 validateClass:@"SBTopAffordanceViewController"];
  [v3 validateClass:@"UIApplicationAccessibility" hasInstanceMethod:@"_accessibilityActiveScenes" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"deviceOrientationUpdateDeferralAssertionWithReason:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBSystemApertureController"];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"systemApertureControllerForMainDisplay" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSystemApertureViewController"];
  [v3 validateClass:@"SBSystemApertureController" hasInstanceVariable:@"_systemApertureViewController" withType:"SBSystemApertureViewController"];
  [v3 validateClass:@"SAUISystemApertureManager"];
  [v3 validateClass:@"SBSystemApertureViewController" hasInstanceVariable:@"_systemApertureManager" withType:"SAUISystemApertureManager"];
  [v3 validateClass:@"SBSystemApertureViewController" hasInstanceMethod:@"minimumSensorRegionFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"SBSystemApertureViewController" hasInstanceVariable:@"_orderedContainerViews" withType:"NSMutableArray"];
  [v3 validateClass:@"SBSystemApertureViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SAUISystemApertureManager" hasInstanceVariable:@"_elementsToElementViewControllers" withType:"NSMapTable"];
  [v3 validateClass:@"SAUIElementViewController" hasInstanceMethod:@"_elementView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SAUIIndicatorElementViewController"];
  [v3 validateClass:@"SBSystemApertureSceneElement" hasInstanceMethod:@"elementIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWindowSceneManager" hasInstanceMethod:@"connectedWindowScenes" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWindowScene" hasInstanceMethod:@"floatingDockController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"isFloatingDockFullyPresented" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"floatingDockViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockViewController" hasInstanceVariable:@"_dockView" withType:"SBFloatingDockView"];
  [v3 validateClass:@"SBIconListView" hasInstanceVariable:@"_iconViews" withType:"NSMapTable"];
  [v3 validateClass:@"SBStatusBarWindow"];
  [v3 validateClass:@"SBStatusBarWindow" hasInstanceMethod:@"statusBar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBTransientOverlayWindow"];
  [v3 validateClass:@"SpringBoard" hasInstanceVariable:@"_orientationAggregator" withType:"SBMainDisplayInterfaceOrientationAggregator"];
  [v3 validateClass:@"SBMainDisplayInterfaceOrientationAggregator" hasInstanceMethod:@"interfaceOrientationSources" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWindowScene" conformsToProtocol:@"SBWindowSceneContextProviding"];
  [v3 validateProtocol:@"SBWindowSceneContextProviding" hasRequiredInstanceMethod:@"commandTabController"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"_itemContainerForAppLayoutIfExists:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_liveContentOverlayCoordinator" withType:"<SBSwitcherLiveContentOverlayCoordinating>"];
  [v3 validateProtocol:@"SBSwitcherLiveContentOverlayCoordinating" hasMethod:@"appLayoutForSceneIdentifier:" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"SBAppLayout" hasInstanceMethod:@"leafAppLayoutsFromDisplayItems:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"zOrderedItemsInAppLayout:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"remoteTransientOverlaySessionManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRemoteTransientOverlaySessionManager" hasInstanceMethod:@"hasActiveSessionMatchingPredicate:options:" withFullSignature:{"B", "@?", "q", 0}];
  [v3 validateClass:@"SBRemoteTransientOverlaySession" hasInstanceMethod:@"serviceBundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PGLayerHostView"];
}

- (id)_accessibilityStatusBarElements:(BOOL)a3 sorted:(BOOL)a4
{
  v4 = a3;
  v154 = *MEMORY[0x29EDCA608];
  v106 = [MEMORY[0x29EDC7328] options];
  [v106 setShouldUseAllSubviews:1];
  v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v116 = [MEMORY[0x29EDB8DE8] array];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v6 = [*MEMORY[0x29EDC8008] _accessibilityAllWindowsOnlyVisibleWindows:1];
  v7 = [v6 reverseObjectEnumerator];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v144 objects:v153 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v145;
    v110 = *v145;
    do
    {
      v11 = 0;
      v112 = v9;
      do
      {
        if (*v145 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v144 + 1) + 8 * v11);
        if (v4)
        {
          v13 = v4;
          v14 = [*(*(&v144 + 1) + 8 * v11) _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_20];
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v140 objects:v152 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v141;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v141 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v140 + 1) + 8 * i) _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_895];
                [v5 axSafelyAddObjectsFromArray:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v140 objects:v152 count:16];
            }

            while (v16);
          }

          [v5 axSafelyAddObjectsFromArray:v14];

          v4 = v13;
          v10 = v110;
          v9 = v112;
        }

        NSClassFromString(&cfstr_Sbstatusbarwin_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v20 = [v12 safeUIViewForKey:@"statusBar"];
          if ([v20 _accessibilityViewIsVisible])
          {
            [v116 axSafelyAddObject:v20];
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v144 objects:v153 count:16];
    }

    while (v9);
  }

  obja = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v113 = AXSwitcherController(@"activeDisplayWindowScene", obja);
  [v113 safeValueForKey:@"contentViewController"];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v111 = v139 = 0u;
  v21 = [v111 safeDictionaryForKey:@"visibleItemContainers"];
  v22 = [v21 allValues];

  v23 = [v22 countByEnumeratingWithState:&v136 objects:v151 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v137;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v137 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v136 + 1) + 8 * j) safeUIViewForKey:@"_pageView"];
        v28 = [v27 safeUIViewForKey:@"_overlayClippingView"];

        v29 = [v28 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_901];
        [v116 axSafelyAddObjectsFromArray:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v136 objects:v151 count:16];
    }

    while (v24);
  }

  v30 = [NSClassFromString(&cfstr_Sbcontrolcente.isa) safeValueForKey:@"sharedInstanceIfExists"];
  if ([v30 safeBoolForKey:@"isVisible"])
  {
    v31 = [v30 safeValueForKeyPath:@"presentedControlCenterController._viewController"];
    v32 = [v31 safeValueForKey:@"_statusLabelViewContainerView"];
    v33 = [v32 safeValueForKey:@"statusBar"];

    v34 = [v33 safeValueForKey:@"_compactTrailingStatusBar"];
    [v116 axSafelyAddObject:v34];

    v35 = [v33 safeValueForKey:@"_expandedStatusBar"];
    [v116 axSafelyAddObject:v35];
  }

  v105 = v30;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v36 = v116;
  v37 = [v36 countByEnumeratingWithState:&v132 objects:v150 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v133;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v133 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v132 + 1) + 8 * k);
        if ([v41 _accessibilityViewIsVisible])
        {
          v42 = [v41 safeValueForKey:@"statusBar"];
          if ([v42 _accessibilityViewIsVisible])
          {
            v128[5] = MEMORY[0x29EDCA5F8];
            v128[6] = 3221225472;
            v128[7] = __67__SpringBoardAccessibility__accessibilityStatusBarElements_sorted___block_invoke_4;
            v128[8] = &unk_29F2FC410;
            v129 = v42;
            v131 = a4;
            v130 = v5;
            AXPerformSafeBlock();
          }
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v132 objects:v150 count:16];
    }

    while (v38);
  }

  v43 = NSClassFromString(&cfstr_Sbtopaffordanc_4.isa);
  v128[0] = MEMORY[0x29EDCA5F8];
  v128[1] = 3221225472;
  v128[2] = __67__SpringBoardAccessibility__accessibilityStatusBarElements_sorted___block_invoke_7;
  v128[3] = &__block_descriptor_40_e27_q24__0__UIView_8__UIView_16lu32l8;
  v128[4] = v43;
  [v5 sortUsingComparator:v128];
  if (AXDeviceHasJindo())
  {
    v44 = [(SpringBoardAccessibility *)self safeValueForKey:@"systemApertureControllerForMainDisplay"];
    v45 = [v44 safeValueForKey:@"_systemApertureViewController"];
    v46 = [v45 safeValueForKey:@"_systemApertureManager"];
    v103 = [v45 safeBoolForKey:@"_systemApertureContainsAnyContent"];
    [v45 safeCGRectForKey:@"minimumSensorRegionFrame"];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = [v45 safeUIViewForKey:@"view"];
    v109 = v45;
    v117 = v46;
    v104 = v55;
    if (objc_opt_respondsToSelector())
    {
      memset(&v127, 0, sizeof(v127));
      v56 = [v55 window];
      v57 = v56;
      if (v56)
      {
        [v56 transform];
      }

      else
      {
        memset(&v127, 0, sizeof(v127));
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v58 = [v45 safeArrayForKey:@"_orderedContainerViews"];
      v59 = [v58 countByEnumeratingWithState:&v123 objects:v149 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v124;
        do
        {
          for (m = 0; m != v60; ++m)
          {
            if (*v124 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v123 + 1) + 8 * m);
            v64 = [v63 window];
            [v63 bounds];
            [v64 convertRect:v63 fromView:?];
            x = v65;
            y = v67;
            width = v69;
            height = v71;

            v156.origin.x = x;
            v156.origin.y = y;
            v156.size.width = width;
            v156.size.height = height;
            if (!CGRectIsEmpty(v156))
            {
              v122 = v127;
              if (!CGAffineTransformIsIdentity(&v122))
              {
                v122 = v127;
                v157.origin.x = x;
                v157.origin.y = y;
                v157.size.width = width;
                v157.size.height = height;
                v158 = CGRectApplyAffineTransform(v157, &v122);
                x = v158.origin.x;
                y = v158.origin.y;
                width = v158.size.width;
                height = v158.size.height;
              }

              v159.origin.x = v48;
              v159.origin.y = v50;
              v159.size.width = v52;
              v159.size.height = v54;
              v161.origin.x = x;
              v161.origin.y = y;
              v161.size.width = width;
              v161.size.height = height;
              v160 = CGRectUnion(v159, v161);
              v48 = v160.origin.x;
              v50 = v160.origin.y;
              v52 = v160.size.width;
              v54 = v160.size.height;
            }
          }

          v60 = [v58 countByEnumeratingWithState:&v123 objects:v149 count:16];
        }

        while (v60);
      }

      v45 = v109;
      v46 = v117;
    }

    v73 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    LOBYTE(v127.a) = 0;
    v74 = [v46 safeValueForKey:@"_elementsToElementViewControllers"];
    v75 = __UIAccessibilitySafeClass();

    if (LOBYTE(v127.a) == 1)
    {
      abort();
    }

    v102 = v75;
    if ([v75 count])
    {
      v76 = [v75 objectEnumerator];
      v77 = [v76 nextObject];
      if (v77)
      {
        v78 = v77;
        do
        {
          v79 = objc_opt_class();
          if (v79 == NSClassFromString(&cfstr_Sauiindicatore.isa))
          {
            v80 = @"view";
          }

          else
          {
            v80 = @"_elementView";
          }

          v81 = [v78 safeUIViewForKey:v80];
          [v73 axSafelyAddObject:v81];

          v82 = [v76 nextObject];

          v78 = v82;
        }

        while (v82);
      }

      v83 = [v73 sortedArrayUsingComparator:&__block_literal_global_928];
      v84 = [v83 mutableCopy];

      v73 = v84;
      v45 = v109;
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v85 = v5;
    v86 = [v85 countByEnumeratingWithState:&v118 objects:v148 count:16];
    if (v86)
    {
      v87 = *v119;
      while (2)
      {
        for (n = 0; n != v86; ++n)
        {
          if (*v119 != v87)
          {
            objc_enumerationMutation(v85);
          }

          v89 = *(*(&v118 + 1) + 8 * n);
          [v89 frame];
          if (v90 > v48)
          {
            v86 = [v85 indexOfObject:v89];
            goto LABEL_77;
          }
        }

        v86 = [v85 countByEnumeratingWithState:&v118 objects:v148 count:16];
        if (v86)
        {
          continue;
        }

        break;
      }
    }

LABEL_77:

    if ((v103 & 1) == 0)
    {
      v91 = [v85 firstObject];
      v92 = [v91 accessibilityContainer];
      [v45 setAccessibilityContainer:v92];

      [v73 axSafelyAddObject:v45];
    }

    v93 = objc_alloc_init(MEMORY[0x29EDBA048]);
    if (v86 < [v73 count] + v86)
    {
      v94 = v86;
      do
      {
        [v93 addIndex:v94++];
      }

      while (v94 < [v73 count] + v86);
    }

    [v85 insertObjects:v73 atIndexes:v93];
  }

  v95 = [MEMORY[0x29EDBDFA8] server];
  v96 = [v95 isPIPWindowVisible];

  if (v96)
  {
    v97 = [(SpringBoardAccessibility *)self _accessibilityPictureInPictureWindow];
    if (v97)
    {
      v98 = NSClassFromString(&cfstr_Pglayerhostvie.isa);
      if (v98)
      {
        v99 = [(SpringBoardAccessibility *)self _accessibilityDescendantOfType:v98];
        if (v99)
        {
          [v5 axSafelyAddObject:v99];
        }
      }
    }
  }

  v100 = [(SpringBoardAccessibility *)self _accessibilityGeometrySortedElements:v5];

  return v100;
}

uint64_t __67__SpringBoardAccessibility__accessibilityStatusBarElements_sorted___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Sbtopaffordanc_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __67__SpringBoardAccessibility__accessibilityStatusBarElements_sorted___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __67__SpringBoardAccessibility__accessibilityStatusBarElements_sorted___block_invoke_4(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) _axSetIsHitTesting:1];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    [v2 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_909];
  }

  else
  {
    [v2 _accessibilityFindUnsortedSubviewDescendantsPassingTest:&__block_literal_global_909];
  }
  v4 = ;
  [v3 axSafelyAddObjectsFromArray:v4];

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 _axSetIsHitTesting:0];
  }

  return result;
}

BOOL __67__SpringBoardAccessibility__accessibilityStatusBarElements_sorted___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement])
  {
    v3 = [v2 _accessibilityFindAncestor:&__block_literal_global_912 startWithSelf:0];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __67__SpringBoardAccessibility__accessibilityStatusBarElements_sorted___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    v6 = 1;
  }

  else
  {
    [v4 accessibilityFrame];
    v8 = v7;
    [v5 accessibilityFrame];
    if (v8 <= v9)
    {
      v6 = -1;
    }

    else
    {
      [v4 accessibilityFrame];
      v11 = v10;
      [v5 accessibilityFrame];
      v6 = v11 >= v12;
    }
  }

  return v6;
}

BOOL __67__SpringBoardAccessibility__accessibilityStatusBarElements_sorted___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  [v4 frame];
  v8 = v7;

  return v6 < v8;
}

- (id)_firstStatusBarElement
{
  v8.receiver = self;
  v8.super_class = SpringBoardAccessibility;
  v3 = [(SpringBoardAccessibility *)&v8 _firstStatusBarElement];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SpringBoardAccessibility *)self _accessibilityStatusBarElements:0 sorted:1];
    v5 = [v6 firstObject];
  }

  return v5;
}

- (id)_lastStatusBarElement
{
  v8.receiver = self;
  v8.super_class = SpringBoardAccessibility;
  v3 = [(SpringBoardAccessibility *)&v8 _lastStatusBarElement];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SpringBoardAccessibility *)self _accessibilityStatusBarElements:0 sorted:1];
    v5 = [v6 lastObject];
  }

  return v5;
}

- (BOOL)_accessibilityShouldHitTestStatusBarWindow
{
  v2 = AXFrontBoardFocusedAppProcesses();
  if ([v2 count] == 1)
  {
    v3 = AXFrontBoardSystemAppProcess();
    v4 = [v2 firstObject];
    if ([v3 isEqual:v4])
    {
      v5 = [MEMORY[0x29EDBDFA8] server];
      v6 = [v5 isMenuBarModal] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_accessibilityStatusBar
{
  v3 = [(SpringBoardAccessibility *)self _accessibilityMainWindow];
  NSClassFromString(&cfstr_Sbassistantwin_0.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 _accessibilityDescendantOfType:objc_opt_class()], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6.receiver = self;
    v6.super_class = SpringBoardAccessibility;
    v4 = [(SpringBoardAccessibility *)&v6 _accessibilityStatusBar];
  }

  return v4;
}

- (BOOL)_accessibilitySystemAppServerIsReady
{
  if (![(SpringBoardAccessibility *)self safeBoolForKey:@"_hasFinishedLaunching"])
  {
    return 0;
  }

  v2 = AXSBLockScreenViewController();
  if (v2)
  {
    v3 = NSClassFromString(&cfstr_Axspringboards_0.isa) != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_legacy_noteInterfaceOrientationChanged:(int64_t)a3 duration:(double)a4 updateMirroredDisplays:(BOOL)a5 force:(BOOL)a6 logMessage:(id)a7
{
  v8.receiver = self;
  v8.super_class = SpringBoardAccessibility;
  [(SpringBoardAccessibility *)&v8 _legacy_noteInterfaceOrientationChanged:a3 duration:a5 updateMirroredDisplays:a6 force:a7 logMessage:a4];
  if (_legacy_noteInterfaceOrientationChanged_duration_updateMirroredDisplays_force_logMessage___LastPostedOrientation != a3)
  {
    _legacy_noteInterfaceOrientationChanged_duration_updateMirroredDisplays_force_logMessage___LastPostedOrientation = a3;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (id)_accessibilitySoftwareMimicKeyboard
{
  v3 = [MEMORY[0x29EDBDFA8] server];
  v4 = [v3 isPasscodeLockVisible];

  if (v4)
  {
    v5 = [NSClassFromString(&cfstr_Sblockscreenma.isa) safeValueForKey:@"sharedInstanceIfExists"];
    v6 = [v5 safeValueForKey:@"_lockScreenEnvironment"];
    v7 = [v6 safeValueForKeyPath:@"rootViewController.view"];
    v8 = [v7 _accessibilityFindDescendant:&__block_literal_global_952];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SpringBoardAccessibility;
    v8 = [(SpringBoardAccessibility *)&v10 _accessibilitySoftwareMimicKeyboard];
  }

  return v8;
}

- (void)accessibilityInitialize
{
  if (_SBAXInstance != self)
  {
    v22[5] = v5;
    v22[6] = v4;
    v22[15] = v2;
    v22[16] = v3;
    objc_storeStrong(&_SBAXInstance, self);
    v7 = +[SBVoiceOverTouchConnection defaultConnection];
    v8 = _VOTConnection;
    _VOTConnection = v7;

    *&_SBAXPhoneCallLastEnded = CFAbsoluteTimeGetCurrent() + -10.0;
    _AXStatusEnabled = _AXSApplicationAccessibilityEnabled() != 0;
    if ((accessibilityInitialize_DidEnable & 1) == 0)
    {
      v9 = [MEMORY[0x29EDBA068] defaultCenter];
      v10 = *MEMORY[0x29EDC6FA8];
      v11 = [MEMORY[0x29EDBA088] mainQueue];
      v12 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:&__block_literal_global_960];

      v13 = [MEMORY[0x29EDBA068] defaultCenter];
      v14 = *MEMORY[0x29EDC6D18];
      v15 = [MEMORY[0x29EDBA088] mainQueue];
      v22[0] = MEMORY[0x29EDCA5F8];
      v22[1] = 3221225472;
      v22[2] = __51__SpringBoardAccessibility_accessibilityInitialize__block_invoke_962;
      v22[3] = &unk_29F2FC498;
      v22[4] = self;
      v16 = [v13 addObserverForName:v14 object:0 queue:v15 usingBlock:v22];

      v17 = [MEMORY[0x29EDBA068] defaultCenter];
      v18 = *MEMORY[0x29EDC7F18];
      v19 = [MEMORY[0x29EDBA088] mainQueue];
      v21[0] = MEMORY[0x29EDCA5F8];
      v21[1] = 3221225472;
      v21[2] = __51__SpringBoardAccessibility_accessibilityInitialize__block_invoke_2;
      v21[3] = &unk_29F2FC498;
      v21[4] = self;
      v20 = [v17 addObserverForName:v18 object:0 queue:v19 usingBlock:v21];

      accessibilityInitialize_DidEnable = 1;
    }

    [(SpringBoardAccessibility *)self _accessibilityUpdateSpeakScreenGestureRecognizer];
    [(SpringBoardAccessibility *)self _monitorContinuityDisplayChanges];
  }
}

void __51__SpringBoardAccessibility_accessibilityInitialize__block_invoke()
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDC6F78] sharedInstance];
  v1 = [v0 currentCalls];

  if (!v1)
  {
    v2 = AXLogSpringboardServer();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 134217984;
      v4 = _SBAXPhoneCallLastEnded;
      _os_log_impl(&dword_29C37A000, v2, OS_LOG_TYPE_INFO, "marking last call at %f", &v3, 0xCu);
    }

    _SBAXPhoneCallLastEnded = CFAbsoluteTimeGetCurrent();
  }
}

uint64_t __51__SpringBoardAccessibility_accessibilityInitialize__block_invoke_962(uint64_t a1)
{
  UIAccessibilityPostNotification(0x7EBu, 0);
  v2 = *(a1 + 32);

  return [v2 _accessibilityUpdateRingerState];
}

- (void)accessibilityDisable
{
  v3 = _SBAXInstance;
  _SBAXInstance = 0;

  [_VOTConnection tearDownVoiceOverTouchConnection];
  [(SpringBoardAccessibility *)self _stopContinuityDisplayMonitorIfNecessary];

  [(SpringBoardAccessibility *)self _unregisterObserversForFBProcessManager];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  if ([(SpringBoardAccessibility *)self safeBoolForKey:@"_hasFinishedLaunching"])
  {
    v7.receiver = self;
    v7.super_class = SpringBoardAccessibility;
    [(SpringBoardAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
    v3 = [NSClassFromString(&cfstr_Sbcontrolcente.isa) safeValueForKey:@"sharedInstanceIfExists"];
    [v3 _accessibilityLoadAccessibilityInformation];

    v4 = [NSClassFromString(&cfstr_Sbwallpapercon_0.isa) safeValueForKey:@"sharedInstance"];
    [v4 _accessibilityLoadAccessibilityInformation];

    v5 = [(SpringBoardAccessibility *)self safeValueForKey:@"_extendedDisplayControllerProvider"];
    [v5 _accessibilityLoadAccessibilityInformation];

    v6 = AXSBFloatingDockControllerFromActiveDisplayWindowScene();
    [v6 _accessibilityLoadAccessibilityInformation];

    [(SpringBoardAccessibility *)self accessibilityInitialize];
  }

  else
  {

    [(SpringBoardAccessibility *)self _accessibilitySetShouldLoadAXInfoOnAppLaunchFinish:1];
  }
}

- (void)_monitorContinuityDisplayChanges
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SpringBoardAccessibility _monitorContinuityDisplayChanges]";
    _os_log_impl(&dword_29C37A000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x29EDC11A8] configurationForContinuityDisplay];
  [v4 setNeedsUserInteractivePriority:1];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __60__SpringBoardAccessibility__monitorContinuityDisplayChanges__block_invoke;
  v6[3] = &unk_29F2FC4C0;
  v6[4] = self;
  [v4 setTransitionHandler:v6];
  [(SpringBoardAccessibility *)self _stopContinuityDisplayMonitorIfNecessary];
  v5 = [MEMORY[0x29EDC11A0] monitorWithConfiguration:v4];
  [(SpringBoardAccessibility *)self _setContinuityDisplayMonitor:v5];
}

void __60__SpringBoardAccessibility__monitorContinuityDisplayChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [*(a1 + 32) _contintuityDisplayIsActive];
  [*(a1 + 32) _setContintuityDisplayIsActive:v4 != 0];
  v6 = [v4 displayConfiguration];
  v7 = [v6 identity];
  [*(a1 + 32) _setContintuityDisplayID:{objc_msgSend(v7, "displayID")}];

  v8 = AXLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (v4)
    {
      v9 = @"YES";
    }

    v11 = 136315394;
    v12 = "[SpringBoardAccessibility _monitorContinuityDisplayChanges]_block_invoke";
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_29C37A000, v8, OS_LOG_TYPE_INFO, "%s: continuity state changed, is active: %@", &v11, 0x16u);
  }

  if (v4)
  {
    v10 = v5;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!v4 && ((v5 ^ 1) & 1) == 0)
    {
      [*(a1 + 32) _unregisterObserversForFBProcessManager];
      [*(a1 + 32) _resetContinuityStateForActiveProcesses];
    }
  }

  else
  {
    [*(a1 + 32) _registerforAXNotifications];
    [*(a1 + 32) _registerObserversForFBProcessManager];
  }
}

- (void)_stopContinuityDisplayMonitorIfNecessary
{
  v3 = [(SpringBoardAccessibility *)self _continuityDisplayMonitor];

  if (v3)
  {
    v4 = [(SpringBoardAccessibility *)self _continuityDisplayMonitor];
    [v4 invalidate];

    [(SpringBoardAccessibility *)self _setContinuityDisplayMonitor:0];
  }

  [(SpringBoardAccessibility *)self _setContintuityDisplayIsActive:0];
}

- (void)_updateContinuityAttributesForProcess:(id)a3 isActive:(BOOL)a4
{
  v6 = a3;
  if (_updateContinuityAttributesForProcess_isActive__onceToken != -1)
  {
    [SpringBoardAccessibility _updateContinuityAttributesForProcess:isActive:];
  }

  if (_updateContinuityAttributesForProcess_isActive__queueForSettingAttrs)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_979;
    block[3] = &unk_29F2FC410;
    v11 = a4;
    v9 = v6;
    v10 = self;
    dispatch_async(MEMORY[0x29EDCA578], block);
    v7 = v9;
  }

  else
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SpringBoardAccessibility _updateContinuityAttributesForProcess:isActive:];
    }
  }
}

uint64_t __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke()
{
  _updateContinuityAttributesForProcess_isActive__queueForSettingAttrs = dispatch_get_global_queue(21, 0);

  return MEMORY[0x2A1C71028]();
}

void __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_979(uint64_t a1)
{
  v2 = AXFrontBoardFocusedAppPidsForContinuity();
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_2;
  v9[3] = &unk_29F2FC4E8;
  v10 = *(a1 + 32);
  v13 = *(a1 + 48);
  v3 = v2;
  v4 = *(a1 + 40);
  v11 = v3;
  v12 = v4;
  v5 = MEMORY[0x29ED38050](v9);
  LODWORD(a1) = [*(a1 + 32) pid];
  if (a1 == getpid())
  {
    v5[2](v5);
  }

  else
  {
    v6 = _updateContinuityAttributesForProcess_isActive__queueForSettingAttrs;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_983;
    block[3] = &unk_29F2FBE98;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 pid] >= 1)
  {
    v3 = [MEMORY[0x29EDBD818] uiApplicationWithPid:{objc_msgSend(*(a1 + 32), "pid")}];
    if (*(a1 + 56) == 1)
    {
      v4 = *(a1 + 40);
      v5 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(*(a1 + 32), "pid")}];
      LOBYTE(v4) = [v4 containsObject:v5];

      if (v4)
      {
        v6 = AXLogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_2_cold_2();
        }

        [v3 setAXAttribute:3071 withNumber:MEMORY[0x29EDB8EB0]];
        v7 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(*(a1 + 48), "_contintuityDisplayID")}];
        [v3 setAXAttribute:3075 withNumber:v7];

        v8 = [*(a1 + 48) _fbProcessesCurrentlyActiveForContinuity];
        [v8 addObject:*(a1 + 32)];
LABEL_12:

        goto LABEL_13;
      }

      if (*(a1 + 56))
      {
LABEL_13:

        return;
      }
    }

    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_2_cold_1();
    }

    [v3 setAXAttribute:3071 withNumber:MEMORY[0x29EDB8EA8]];
    [v3 setAXAttribute:3075 withNumber:&unk_2A230C958];
    v8 = [*(a1 + 48) _fbProcessesCurrentlyActiveForContinuity];
    [v8 removeObject:*(a1 + 32)];
    goto LABEL_12;
  }
}

- (void)_updateContinuityStateForAXReadyNotificationData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SpringBoardAccessibility *)self _fbProceessBundleIDsRecentlyAdded];
    v7 = [v6 containsObject:v5];

    if (v7)
    {
      v8 = [(SpringBoardAccessibility *)self _fbProceessBundleIDsRecentlyAdded];
      [v8 removeObject:v5];

      v9 = [MEMORY[0x29EDC1168] sharedInstance];
      v10 = [v9 processesForBundleIdentifier:v5];

      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = __77__SpringBoardAccessibility__updateContinuityStateForAXReadyNotificationData___block_invoke;
      v11[3] = &unk_29F2FC510;
      v11[4] = self;
      [v10 enumerateObjectsUsingBlock:v11];
    }
  }
}

void __77__SpringBoardAccessibility__updateContinuityStateForAXReadyNotificationData___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isRunning])
  {
    v3 = [v4 isForeground];
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 32) _updateContinuityAttributesForProcess:v4 isActive:v3];
}

- (void)_resetContinuityStateForActiveProcesses
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[SpringBoardAccessibility _resetContinuityStateForActiveProcesses]";
    _os_log_impl(&dword_29C37A000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v4 = [(SpringBoardAccessibility *)self _fbProcessesCurrentlyActiveForContinuity];
  v5 = [v4 copy];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __67__SpringBoardAccessibility__resetContinuityStateForActiveProcesses__block_invoke;
  v7[3] = &unk_29F2FC510;
  v7[4] = self;
  [v5 enumerateObjectsUsingBlock:v7];

  v6 = [MEMORY[0x29EDB8DE8] array];
  [(SpringBoardAccessibility *)self _setFBProcessesCurrentlyActiveForContinuity:v6];
}

- (void)_registerforAXNotifications
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __55__SpringBoardAccessibility__registerforAXNotifications__block_invoke;
  block[3] = &unk_29F2FBA40;
  block[4] = self;
  if (_registerforAXNotifications_onceToken != -1)
  {
    dispatch_once(&_registerforAXNotifications_onceToken, block);
  }

  v3 = [MEMORY[0x29EDB8DE8] array];
  [(SpringBoardAccessibility *)self _setFBProcessesCurrentlyActiveForContinuity:v3];
}

uint64_t __55__SpringBoardAccessibility__registerforAXNotifications__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x29EDBD7F8]) initWithNotifications:&unk_2A230C9D0];
  v3 = _registerforAXNotifications__sAXNotificationObserver;
  _registerforAXNotifications__sAXNotificationObserver = v2;

  v4 = *(a1 + 32);
  v5 = _registerforAXNotifications__sAXNotificationObserver;

  return [v5 setDelegate:v4];
}

- (void)_registerObserversForFBProcessManager
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[SpringBoardAccessibility _registerObserversForFBProcessManager]";
    _os_log_impl(&dword_29C37A000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x29EDB8DE8] array];
  [(SpringBoardAccessibility *)self _setFBProceessBundleIDsRecentlyAdded:v4];

  v5 = [MEMORY[0x29EDC1168] sharedInstance];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 allProcesses];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) addObserver:self];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [v5 addObserver:self];
}

- (void)_unregisterObserversForFBProcessManager
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[SpringBoardAccessibility _unregisterObserversForFBProcessManager]";
    _os_log_impl(&dword_29C37A000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x29EDC1168] sharedInstance];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 allProcesses];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeObserver:self];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [v4 removeObserver:self];
}

- (void)observer:(id)a3 didObserveNotification:(int)a4 notificationData:(void *)a5
{
  if (a4 == 3031)
  {
    [(SpringBoardAccessibility *)self _updateContinuityStateForAXReadyNotificationData:a5];
  }
}

- (void)process:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v7 = a3;
  if ([v7 isRunning])
  {
    v6 = [v7 isForeground];
  }

  else
  {
    v6 = 0;
  }

  [(SpringBoardAccessibility *)self _updateContinuityAttributesForProcess:v7 isActive:v6];
}

- (void)processManager:(id)a3 didAddProcess:(id)a4
{
  v5 = a4;
  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SpringBoardAccessibility processManager:v5 didAddProcess:?];
  }

  [v5 addObserver:self];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __57__SpringBoardAccessibility_processManager_didAddProcess___block_invoke;
  v8[3] = &unk_29F2FBFC0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(MEMORY[0x29EDCA578], v8);
}

void __57__SpringBoardAccessibility_processManager_didAddProcess___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];

  if (v2)
  {
    v4 = [*(a1 + 40) _fbProceessBundleIDsRecentlyAdded];
    v3 = [*(a1 + 32) bundleIdentifier];
    [v4 addObject:v3];
  }
}

- (void)processManager:(id)a3 didRemoveProcess:(id)a4
{
  v5 = a4;
  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SpringBoardAccessibility processManager:v5 didRemoveProcess:?];
  }

  [v5 removeObserver:self];
  [(SpringBoardAccessibility *)self _updateContinuityAttributesForProcess:v5 isActive:0];
}

- (void)_accessibilityLoadPIPInfo
{
  v3 = [NSClassFromString(&cfstr_Sbmainworkspac.isa) safeValueForKey:@"_instanceIfExists"];

  if (v3)
  {
    v4 = [(SpringBoardAccessibility *)self _accessibilityPIPCoordinator];
    [v4 _accessibilityLoadAccessibilityInformation];
  }
}

- (void)_accessibilityStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [(SpringBoardAccessibility *)self _accessibilityValueForKey:@"AXReenabledTimer"];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v5 = [v6 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(SpringBoardAccessibility *)self _accessibilitySetRetainedValue:v5 forKey:@"AXReenabledTimer"];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __56__SpringBoardAccessibility__accessibilityStatusChanged___block_invoke;
  v8[3] = &unk_29F2FBFC0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 afterDelay:v8 processBlock:0.3];
}

- (void)_processAccessibilityStatusChange:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = AXLogLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = [(SpringBoardAccessibility *)self safeBoolForKey:@"_hasFinishedLaunching"];
    _os_log_impl(&dword_29C37A000, v5, OS_LOG_TYPE_DEFAULT, "SB AX Status change (finished: %d), ", buf, 8u);
  }

  if ([(SpringBoardAccessibility *)self safeBoolForKey:@"_hasFinishedLaunching"])
  {
    v10.receiver = self;
    v10.super_class = SpringBoardAccessibility;
    [(SpringBoardAccessibility *)&v10 _accessibilityStatusChanged:v4];
    v6 = _AXSApplicationAccessibilityEnabled();
    v7 = AXLogLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v12 = v6 != 0;
      _os_log_impl(&dword_29C37A000, v7, OS_LOG_TYPE_INFO, "SB new status: %d, ", buf, 8u);
    }

    if ((_AXStatusEnabled & 1) != 0 || !v6)
    {
      if (_AXStatusEnabled == (v6 != 0))
      {
        [MEMORY[0x29EDC7358] _accessibilityReenabled];
      }

      _AXStatusEnabled = v6 != 0;
      if (!v6)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x29EDBDA38], 0, 0, 1u);
        v9 = AXLogLoading();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_29C37A000, v9, OS_LOG_TYPE_INFO, "Posted kAXAccessibilityTurnedOff notification", buf, 2u);
        }
      }
    }

    else
    {
      [(SpringBoardAccessibility *)self accessibilityInitialize];
      [(SpringBoardAccessibility *)self _accessibilityLoadPIPInfo];
      _AXStatusEnabled = v6 != 0;
    }
  }

  else
  {
    [(SpringBoardAccessibility *)self _accessibilitySetShouldCallAXStatusChangedOnAppLaunchFinish:1];
  }
}

- (void)applicationDidFinishLaunching:(id)a3
{
  v4.receiver = self;
  v4.super_class = SpringBoardAccessibility;
  [(SpringBoardAccessibility *)&v4 applicationDidFinishLaunching:a3];
  if ([(SpringBoardAccessibility *)self _accessibilityShouldCallAXStatusChangedOnAppLaunchFinish])
  {
    [(SpringBoardAccessibility *)self _accessibilityStatusChanged:0];
  }

  if ([(SpringBoardAccessibility *)self _accessibilityShouldLoadAXInfoOnAppLaunchFinish])
  {
    [(SpringBoardAccessibility *)self _accessibilityLoadAccessibilityInformation];
  }
}

- (void)restartManagerWillReboot:(id)a3
{
  v4 = a3;
  v5 = accessibilityLocalizedString(@"rebooting.format");
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v7 = [MEMORY[0x29EDC7A58] currentDevice];
    v8 = [v7 localizedModel];
    v9 = [v6 initWithFormat:v5, v8];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
  }

  v10.receiver = self;
  v10.super_class = SpringBoardAccessibility;
  [(SpringBoardAccessibility *)&v10 restartManagerWillReboot:v4];
}

- (BOOL)_isDim
{
  if (UIAccessibilityIsVoiceOverRunning() && _SBAXScreenCurtainEnabled == 1 && *&_SBAXRealBacklightFactor == 1.0)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = SpringBoardAccessibility;
  return [(SpringBoardAccessibility *)&v5 _isDim];
}

- (void)_accessibilityDeactivationAnimationWillBegin
{
  v2.receiver = self;
  v2.super_class = SpringBoardAccessibility;
  [(SpringBoardAccessibility *)&v2 _accessibilityDeactivationAnimationWillBegin];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74D8], 0);
}

- (int64_t)_accessibilityApplicationOrientation
{
  LODWORD(result) = +[AXSpringBoardGlue applicationOrientation];
  if (result >= 7)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

- (BOOL)_accessibilityIsVoiceControlRunning
{
  if (!_accessibilityIsVoiceControlRunning_VoiceControlClass)
  {
    _accessibilityIsVoiceControlRunning_VoiceControlClass = NSClassFromString(&cfstr_Sbvoicecontrol.isa);
  }

  v2 = [*MEMORY[0x29EDC8008] keyWindow];
  v3 = [v2 _accessibilityFindSubviewDescendant:&__block_literal_global_1013];
  v4 = v3 != 0;

  return v4;
}

uint64_t __63__SpringBoardAccessibility__accessibilityIsVoiceControlRunning__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_accessibilityIsBatteryLow
{
  v2 = [(objc_class *)AXSpringBoardGlueSBUIControllerClass() safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeValueForKey:@"batteryCapacityAsPercentage"];
  v4 = [v3 integerValue];

  return v4 < 21;
}

- (BOOL)_accessibilityIsSystemLocked
{
  v2 = +[AXSpringBoardGlue sharedInstance];
  v3 = [v2 isUILocked];

  return v3;
}

- (BOOL)_accessibilityIsAlarmRinging
{
  v2 = [(SpringBoardAccessibility *)self safeValueForKey:@"notificationDispatcher"];
  v3 = [v2 safeValueForKey:@"_alertingController"];
  v4 = [v3 safeValueForKey:@"soundController"];
  v5 = [v4 _accessibilityIsAlarmRinging];

  return v5;
}

- (BOOL)_accessibilityIsSystemSleeping
{
  v2 = [(SpringBoardAccessibility *)self safeValueForKey:@"_accessibilityObjectWithinProximity"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    return 1;
  }

  v5 = +[AXSpringBoardGlue sharedInstance];
  v6 = [v5 isDimmed];

  return v6;
}

- (BOOL)_accessibilitySystemWideGestureInProgress
{
  v2 = [(SpringBoardAccessibility *)self safeValueForKey:@"_accessibilityIsSystemGestureActive"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_accessibilityLaunchableApps
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = [NSClassFromString(&cfstr_Sbiconcontroll.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeValueForKey:@"iconModel"];

  v4 = [NSClassFromString(&cfstr_Sbapplicationc.isa) safeValueForKey:@"sharedInstance"];
  v5 = [v4 safeValueForKey:@"allApplications"];

  v15 = [MEMORY[0x29EDB8E00] dictionary];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 safeValueForKey:@"bundleIdentifier"];
        v11 = [v9 safeValueForKey:@"displayName"];
        v12 = [v9 safeValueForKey:@"isInternalApplication"];
        LOBYTE(v9) = [v12 BOOLValue];

        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v21 = 0;
        v17 = v3;
        v13 = v10;
        AXPerformSafeBlock();
        if ((v9 & 1) == 0 && *(v19 + 24) == 1 && v13 && v11)
        {
          [v15 setObject:v13 forKey:v11];
        }

        _Block_object_dispose(&v18, 8);
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  return v15;
}

void __56__SpringBoardAccessibility__accessibilityLaunchableApps__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 applicationIconForBundleIdentifier:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 isIconVisible:v3];
}

- (id)_accessibilityAppIconValues
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = [NSClassFromString(&cfstr_Sbiconcontroll.isa) safeValueForKey:@"sharedInstance"];
  v14 = [v3 safeValueForKey:@"iconModel"];

  v4 = [(SpringBoardAccessibility *)self _accessibilityLaunchableApps];
  v13 = [MEMORY[0x29EDB8E00] dictionary];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy__8;
        v20 = __Block_byref_object_dispose__8;
        v21 = 0;
        v15 = v14;
        v10 = v5;
        AXPerformSafeBlock();
        v11 = v17[5];
        if (v11)
        {
          [v13 setObject:v11 forKey:v9];
        }

        _Block_object_dispose(&v16, 8);
      }

      v6 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  return v13;
}

void __55__SpringBoardAccessibility__accessibilityAppIconValues__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v7 = [v2 applicationIconForBundleIdentifier:v3];

  v4 = [v7 _axIconValue];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_accessibilityCenterPointOfScreen
{
  v2 = [(SpringBoardAccessibility *)self _accessibilityMainWindow];
  v3 = [v2 screen];

  [v3 bounds];
  MidX = CGRectGetMidX(v8);
  [v3 bounds];
  v5 = [MEMORY[0x29EDBA168] valueWithCGPoint:{MidX, CGRectGetMidY(v9)}];

  return v5;
}

- (BOOL)_accessibilityIsAppSwitcherVisible
{
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = [v2 safeBoolForKey:@"isAnySwitcherVisible"];

  return v3;
}

- (BOOL)_accessibilityHitTestsStatusBar
{
  v2 = [MEMORY[0x29EDC7938] sharedApplication];
  v3 = [v2 safeValueForKey:@"bannerManager"];
  v4 = __UIAccessibilitySafeClass();

  v5 = AXWindowScene(@"activeDisplayWindowScene");
  LOBYTE(v3) = [v4 isDisplayingBannerInWindowScene:v5];

  return v3;
}

- (id)_accessibilitySideAppDividerElement
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = AXSwitcherController(@"activeDisplayWindowScene", v2);
  v4 = [v3 safeValueForKey:@"contentViewController"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 safeDictionaryForKey:{@"visibleUnderlayAccessoryViews", 0}];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v13 + 1) + 8 * v10) safeUIViewForKey:@"_resizeGrabber"];
      if ([v11 _accessibilityViewIsVisible])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)_accessibilityHomeAffordanceView
{
  v2 = [NSClassFromString(&cfstr_Sbscenemanager.isa) safeValueForKey:@"mainDisplaySceneManager"];
  v3 = [v2 safeValueForKey:@"windowScene"];
  v4 = [v3 safeUIViewForKey:@"keyWindow"];
  v5 = [v4 _accessibilityFindSubviewDescendant:&__block_literal_global_1040];
  v6 = [v5 safeUIViewForKey:@"_pillView"];

  return v6;
}

uint64_t __60__SpringBoardAccessibility__accessibilityHomeAffordanceView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Sbhomegrabberv_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityPIPCoordinator
{
  v2 = [NSClassFromString(&cfstr_Sbmainworkspac.isa) safeValueForKey:@"_instanceIfExists"];
  v3 = [v2 safeValueForKey:@"pipCoordinator"];

  return v3;
}

- (id)_accessibilityPictureInPictureWindow
{
  v33 = *MEMORY[0x29EDCA608];
  v2 = [(SpringBoardAccessibility *)self _accessibilityPIPCoordinator];
  v3 = [v2 safeDictionaryForKey:@"_controllersByType"];
  v4 = [v3 objectForKey:&unk_2A230C988];

  v31 = 0;
  objc_opt_class();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__8;
  v29 = __Block_byref_object_dispose__8;
  v30 = 0;
  v19 = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = __64__SpringBoardAccessibility__accessibilityPictureInPictureWindow__block_invoke;
  v22 = &unk_29F2FBCB8;
  v24 = &v25;
  v5 = v4;
  v23 = v5;
  AXPerformSafeBlock();
  v6 = v26[5];

  _Block_object_dispose(&v25, 8);
  v7 = __UIAccessibilityCastAsClass();

  if (v31 == 1)
  {
    abort();
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v32 count:16];
  if (v9)
  {
    v10 = *v16;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__8;
      v29 = __Block_byref_object_dispose__8;
      v30 = 0;
      v14 = v5;
      AXPerformSafeBlock();
      v12 = v26[5];

      _Block_object_dispose(&v25, 8);
      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12;
}

uint64_t __64__SpringBoardAccessibility__accessibilityPictureInPictureWindow__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _windowScenesDisplayingPIPContent];

  return MEMORY[0x2A1C71028]();
}

uint64_t __64__SpringBoardAccessibility__accessibilityPictureInPictureWindow__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _leadingWindowForWindowScene:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3
{
  if (a3 > 5039)
  {
    if (a3 == 5040)
    {
      v5 = [(SpringBoardAccessibility *)self _accessibilitySideAppDividerElement];
    }

    else if (a3 == 5065)
    {
      v5 = [(SpringBoardAccessibility *)self _accessibilityHomeAffordanceView];
    }

    else
    {
LABEL_9:
      v13.receiver = self;
      v13.super_class = SpringBoardAccessibility;
      v5 = [(SpringBoardAccessibility *)&v13 _iosAccessibilityAttributeValue:?];
    }
  }

  else
  {
    switch(a3)
    {
      case 1500:
        v3 = MEMORY[0x29EDBA070];
        IsAssistantVisible = [(SpringBoardAccessibility *)self _accessibilityIsSystemLocked];
        goto LABEL_34;
      case 1501:
        v3 = MEMORY[0x29EDBA070];
        if ([(SpringBoardAccessibility *)self _accessibilityIsVoiceControlRunning])
        {
          v8 = 1;
        }

        else
        {
          IsAssistantVisible = AXSpringBoardIsAssistantVisible();
LABEL_34:
          v8 = IsAssistantVisible;
        }

        v5 = [v3 numberWithBool:v8];
        break;
      case 1502:
      case 1511:
      case 1522:
        goto LABEL_9;
      case 1503:
        v5 = [MEMORY[0x29EDBA070] numberWithLong:{-[SpringBoardAccessibility _accessibilityApplicationOrientation](self, "_accessibilityApplicationOrientation")}];
        break;
      case 1504:
        v3 = MEMORY[0x29EDBA070];
        IsAssistantVisible = [(SpringBoardAccessibility *)self _accessibilityIsBatteryLow];
        goto LABEL_34;
      case 1505:
        v6 = MEMORY[0x29EDBA070];
        v7 = [(SpringBoardAccessibility *)self _accessibilityCurrentCallState];
        goto LABEL_28;
      case 1506:
        v3 = MEMORY[0x29EDBA070];
        IsAssistantVisible = [(SpringBoardAccessibility *)self _accessibilitySystemWideGestureInProgress];
        goto LABEL_34;
      case 1507:
        v3 = MEMORY[0x29EDBA070];
        IsAssistantVisible = [(SpringBoardAccessibility *)self _accessibilityIsSystemSleeping];
        goto LABEL_34;
      case 1508:
        v5 = [(SpringBoardAccessibility *)self _accessibilityLaunchableApps];
        break;
      case 1509:
        v5 = [(SpringBoardAccessibility *)self _accessibilityAppSwitcherApps];
        break;
      case 1510:
        v3 = MEMORY[0x29EDBA070];
        IsAssistantVisible = [(SpringBoardAccessibility *)self _accessibilityIsAppSwitcherVisible];
        goto LABEL_34;
      case 1512:
        v5 = [(SpringBoardAccessibility *)self _accessibilityCenterPointOfScreen];
        break;
      case 1513:
        v5 = [(SpringBoardAccessibility *)self _accessibilityPictureInPictureWindow];
        break;
      case 1514:
        v3 = MEMORY[0x29EDBA070];
        IsAssistantVisible = [(SpringBoardAccessibility *)self _accessibilitySpringBoardIsModal];
        goto LABEL_34;
      case 1515:
        v3 = MEMORY[0x29EDBA070];
        IsAssistantVisible = [(SpringBoardAccessibility *)self _accessibilityIsAlarmRinging];
        goto LABEL_34;
      case 1516:
        v9 = MEMORY[0x29EDBA070];
        v10 = [MEMORY[0x29EDBDFA8] server];
        v11 = [v9 numberWithBool:{objc_msgSend(v10, "isControlCenterVisible")}];

        goto LABEL_37;
      case 1517:
        v5 = [(SpringBoardAccessibility *)self _accessibilityFocusActiveActivityName];
        break;
      case 1518:
        v5 = [(SpringBoardAccessibility *)self _accessibilityAppIconValues];
        break;
      case 1519:
        v5 = [(SpringBoardAccessibility *)self _accessibilityOccludedAppSceneIdentifiers];
        break;
      case 1520:
        v5 = [(SpringBoardAccessibility *)self _accessibilityOccludedMultitaskingApps];
        break;
      case 1521:
        v5 = [(SpringBoardAccessibility *)self _accessibilityFrontmostItemContainer];
        break;
      case 1523:
        v5 = [(SpringBoardAccessibility *)self _accessibilityActiveSceneIdentifier];
        break;
      default:
        if (a3 != 1107)
        {
          goto LABEL_9;
        }

        v6 = MEMORY[0x29EDBA070];
        v7 = [(SpringBoardAccessibility *)self _accessibilityRemoteKeyboardApp];
LABEL_28:
        v5 = [v6 numberWithInt:v7];
        break;
    }
  }

  v11 = v5;
LABEL_37:

  return v11;
}

- (id)_accessibilityNextDockElementStartingAtDisplayID:(unsigned int)a3
{
  v45 = *MEMORY[0x29EDCA608];
  v42 = 0;
  v4 = [*MEMORY[0x29EDC8008] safeValueForKey:@"windowSceneManager"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeSetForKey:@"connectedWindowScenes"];
  if ([v6 count] == 1)
  {
    v7 = 0;
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = v6;
    v32 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v32)
    {
      v33 = *v39;
      v27 = v6;
      v28 = v5;
      v26 = a3;
      v29 = v8;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v8);
          }

          v10 = *(*(&v38 + 1) + 8 * i);
          v11 = [v10 safeValueForKey:@"floatingDockController"];
          if ([v11 safeBoolForKey:@"isFloatingDockFullyPresented"])
          {
            v12 = [v10 screen];
            v13 = [v12 displayIdentity];
            v14 = [v13 displayID];

            if (v14 != a3)
            {
              v31 = [v11 safeValueForKey:@"floatingDockViewController"];
              v30 = [v31 safeValueForKey:@"_dockView"];
              v15 = [v30 safeValueForKey:@"_userIconListView"];
              v42 = 0;
              v16 = [v15 safeValueForKey:@"_iconViews"];
              v17 = __UIAccessibilitySafeClass();

              if (v42 == 1)
              {
LABEL_30:
                abort();
              }

              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v18 = v17;
              v19 = [v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v35;
                while (2)
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v35 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v34 + 1) + 8 * j);
                    v42 = 0;
                    v24 = [v18 objectForKey:v23];
                    v7 = __UIAccessibilitySafeClass();

                    if (v42 == 1)
                    {
                      goto LABEL_30;
                    }

                    if (v7)
                    {

                      v6 = v27;
                      v5 = v28;
                      v8 = v29;
                      goto LABEL_26;
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v34 objects:v43 count:16];
                  if (v20)
                  {
                    continue;
                  }

                  break;
                }
              }

              a3 = v26;
              v8 = v29;
            }
          }
        }

        v7 = 0;
        v6 = v27;
        v5 = v28;
        v32 = [v8 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v32);
    }

    else
    {
      v7 = 0;
    }

LABEL_26:
  }

  return v7;
}

- (id)_iosAccessibilityAttributeValue:(int64_t)a3 forParameter:(id)a4
{
  if (a3 == 91513)
  {
    v5 = a4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = -[SpringBoardAccessibility _accessibilityNextDockElementStartingAtDisplayID:](self, "_accessibilityNextDockElementStartingAtDisplayID:", [v6 unsignedIntValue]);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SpringBoardAccessibility;
    v5 = a4;
    v7 = [(SpringBoardAccessibility *)&v11 _iosAccessibilityAttributeValue:a3 forParameter:v5];
  }

  v9 = v7;

  return v9;
}

- (id)_accessibilityFocusActiveActivityName
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getFCActivityManagerClass_softClass;
  v12 = getFCActivityManagerClass_softClass;
  if (!getFCActivityManagerClass_softClass)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __getFCActivityManagerClass_block_invoke;
    v8[3] = &unk_29F2FBCE0;
    v8[4] = &v9;
    __getFCActivityManagerClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = [v2 sharedActivityManager];
  v5 = [v4 activeActivity];
  v6 = [v5 activityDisplayName];

  return v6;
}

- (int)_accessibilityRemoteKeyboardApp
{
  v2 = [(SpringBoardAccessibility *)self _axKeyboardFocusCoordinator];
  v3 = [v2 safeValueForKey:@"_inputUISceneController"];
  v4 = [v3 safeValueForKey:@"_inputUIScene"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 clientHandle];
  v7 = [v6 processHandle];
  LODWORD(v4) = [v7 pid];

  return v4;
}

- (BOOL)_iosAccessibilityPerformAction:(int)a3 withValue:(id)a4 fencePort:(unsigned int)a5
{
  v5 = *&a5;
  v6 = *&a3;
  v8 = a4;
  v9 = v8;
  if (v6 <= 5013)
  {
    if (v6 <= 5011)
    {
      if (v6 != 5000)
      {
        if (v6 == 5009)
        {
          if ([v8 BOOLValue])
          {
            v10 = [(SpringBoardAccessibility *)self _accessibilityOrientationDeferralAssertion];
            [v10 invalidate];
          }

          else
          {
            v48 = 0;
            v49 = &v48;
            v50 = 0x3032000000;
            v51 = __Block_byref_object_copy__8;
            v52 = __Block_byref_object_dispose__8;
            v53 = 0;
            v42 = MEMORY[0x29EDCA5F8];
            v43 = 3221225472;
            v44 = __79__SpringBoardAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke_1078;
            v45 = &unk_29F2FBCB8;
            v46 = self;
            v47 = &v48;
            AXPerformSafeBlock();
            v10 = v49[5];
            _Block_object_dispose(&v48, 8);

            [(SpringBoardAccessibility *)self _setAccessibilityOrientationDeferralAssertion:v10];
          }
        }

        goto LABEL_45;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![(SpringBoardAccessibility *)self _accessibilityIsBuddyRunning])
      {
        v17 = [MEMORY[0x29EDBDFA8] server];
        v25 = [v17 showNotificationCenter:{objc_msgSend(v9, "BOOLValue")}];
LABEL_50:
        isKindOfClass = v25;
LABEL_51:

        goto LABEL_62;
      }

      goto LABEL_28;
    }

    if (v6 != 5012)
    {
      LOBYTE(v48) = 0;
      v16 = [MEMORY[0x29EDC7938] safeValueForKeyPath:@"brightnessControl._displayBrightnessController"];
      v17 = __UIAccessibilitySafeClass();

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v19 = v9;
        v20 = [v19 newHIDEventRef];
        if (v20)
        {
          v21 = v20;
          v54 = MEMORY[0x29EDCA5F8];
          v55 = 3221225472;
          v56 = __79__SpringBoardAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke_2;
          v57 = &unk_29F2FC560;
          v58 = v17;
          v59 = v21;
          AXPerformSafeBlock();
          CFRelease(v21);
        }
      }

      goto LABEL_51;
    }

    v26 = [NSClassFromString(&cfstr_Sbuicontroller.isa) safeValueForKey:@"sharedInstance"];
    v27 = [NSClassFromString(&cfstr_Sbapplicationc.isa) safeValueForKey:@"sharedInstance"];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    LOBYTE(v51) = 0;
    v60 = MEMORY[0x29EDCA5F8];
    v61 = 3221225472;
    v62 = __79__SpringBoardAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke;
    v63 = &unk_29F2FC538;
    v28 = v27;
    v64 = v28;
    v65 = v9;
    v24 = v26;
    v66 = v24;
    v67 = &v48;
    AXPerformSafeBlock();
    isKindOfClass = *(v49 + 24);

    _Block_object_dispose(&v48, 8);
LABEL_61:

    goto LABEL_62;
  }

  if (v6 > 5300)
  {
    if (v6 != 5301)
    {
      if (v6 == 5303)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
        {
          v22 = [v9 firstObject];
          v23 = [v22 intValue];

          if ([v9 count] < 2)
          {
            v24 = 0;
          }

          else
          {
            v24 = [v9 lastObject];
          }

          isKindOfClass = [(SpringBoardAccessibility *)self _accessibilitySwitchNativeFocusedApplicationWithPID:v23 identifier:v24];
          goto LABEL_61;
        }

        v12 = FKALogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [SpringBoardAccessibility _iosAccessibilityPerformAction:withValue:fencePort:];
        }

        goto LABEL_48;
      }

LABEL_45:
      v41.receiver = self;
      v41.super_class = SpringBoardAccessibility;
      isKindOfClass = [(SpringBoardAccessibility *)&v41 _iosAccessibilityPerformAction:v6 withValue:v9 fencePort:v5];
      goto LABEL_62;
    }

    if (!v8)
    {
      v34 = 0;
      v33 = 0;
LABEL_57:
      LOBYTE(v48) = 0;
      objc_opt_class();
      v37 = [(SpringBoardAccessibility *)self _axKeyboardFocusCoordinator];
      v38 = __UIAccessibilityCastAsSafeCategory();

      [v38 _accessibilitySetPrimaryKeyboardFocusOverridePid:v33 sceneID:v34];
      goto LABEL_58;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v9 lastObject];
        objc_opt_class();
        v31 = objc_opt_isKindOfClass();

        if (v31)
        {
          v32 = [v9 firstObject];
          v33 = [v32 intValue];

          v34 = [v9 lastObject];
          if (!v33)
          {
            v35 = FKALogCommon();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [SpringBoardAccessibility _iosAccessibilityPerformAction:withValue:fencePort:];
            }
          }

          if ([v34 length])
          {
            goto LABEL_57;
          }

          v36 = FKALogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [SpringBoardAccessibility _iosAccessibilityPerformAction:withValue:fencePort:];
          }

          goto LABEL_56;
        }
      }

      else
      {
      }
    }

    v36 = FKALogCommon();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [SpringBoardAccessibility _iosAccessibilityPerformAction:withValue:fencePort:];
    }

    v34 = 0;
    v33 = 0;
LABEL_56:

    goto LABEL_57;
  }

  if (v6 != 5014)
  {
    if (v6 == 5015)
    {
      v11 = [MEMORY[0x29EDBDFA0] sharedInstance];
      v12 = [v11 voiceOverHandwritingWasNativeAutocorrectEnabled];

      if (v12)
      {
        LOBYTE(v40) = 1;
        _AXLogWithFacility();
        v13 = [MEMORY[0x29EDC7B28] sharedPreferencesController];
        [v13 setValue:v12 forKey:8];

        v14 = [MEMORY[0x29EDC7B28] sharedPreferencesController];
        [v14 synchronizePreferences];

        v15 = [MEMORY[0x29EDBDFA0] sharedInstance];
        [v15 setVoiceOverHandwritingWasNativeAutocorrectEnabled:0];
      }

      else
      {
        _AXAssert();
        _AXLogWithFacility();
      }

LABEL_48:

LABEL_58:
      isKindOfClass = 1;
      goto LABEL_62;
    }

    goto LABEL_45;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(SpringBoardAccessibility *)self _accessibilityIsBuddyRunning])
  {
    v17 = [MEMORY[0x29EDBDFA8] server];
    v25 = [v17 showControlCenter:{objc_msgSend(v9, "BOOLValue")}];
    goto LABEL_50;
  }

LABEL_28:
  isKindOfClass = 0;
LABEL_62:

  return isKindOfClass & 1;
}

uint64_t __79__SpringBoardAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationWithBundleIdentifier:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) _activateApplicationFromAccessibility:v2];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return MEMORY[0x2A1C71028]();
}

uint64_t __79__SpringBoardAccessibility__iosAccessibilityPerformAction_withValue_fencePort___block_invoke_1078(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) deviceOrientationUpdateDeferralAssertionWithReason:@"Accessibility"];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityFocusableScenes
{
  v3 = [(SpringBoardAccessibility *)self _axKeyboardFocusCoordinator];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __57__SpringBoardAccessibility__accessibilityFocusableScenes__block_invoke;
  block[3] = &unk_29F2FBA40;
  v4 = v3;
  v12 = v4;
  if (_accessibilityFocusableScenes_onceToken != -1)
  {
    dispatch_once(&_accessibilityFocusableScenes_onceToken, block);
  }

  v5 = [(SpringBoardAccessibility *)self safeArrayForKey:@"_accessibilityActiveScenes"];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __57__SpringBoardAccessibility__accessibilityFocusableScenes__block_invoke_2;
  v9[3] = &unk_29F2FC588;
  v10 = v4;
  v6 = v4;
  v7 = [v5 axFilterObjectsUsingBlock:v9];

  return v7;
}

uint64_t __57__SpringBoardAccessibility__accessibilityFocusableScenes__block_invoke()
{
  result = objc_opt_respondsToSelector();
  _accessibilityFocusableScenes__sShouldCheckKeyboardFocusCoordinator = result & 1;
  return result;
}

uint64_t __57__SpringBoardAccessibility__accessibilityFocusableScenes__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_accessibilityFocusableScenes__sShouldCheckKeyboardFocusCoordinator == 1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__8;
    v13 = __Block_byref_object_dispose__8;
    v14 = 0;
    v7 = *(a1 + 32);
    v8 = v3;
    AXPerformSafeBlock();
    v4 = v10[5];

    _Block_object_dispose(&v9, 8);
    isKindOfClass = v4 != 0;
  }

  else
  {
    NSClassFromString(&cfstr_Sbwindowscene.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __57__SpringBoardAccessibility__accessibilityFocusableScenes__block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _sceneControllerForScene:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_axKeyboardFocusCoordinator
{
  v2 = [NSClassFromString(&cfstr_Sbmainworkspac.isa) safeValueForKey:@"_instanceIfExists"];
  v3 = [v2 safeValueForKey:@"_keyboardFocusCoordinator"];

  return v3;
}

- (BOOL)_accessibilitySwitchNativeFocusedApplicationWithPID:(int)a3 identifier:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  objc_opt_class();
  v7 = [(SpringBoardAccessibility *)self _axKeyboardFocusCoordinator];
  v8 = __UIAccessibilityCastAsSafeCategory();

  LOBYTE(v4) = [v8 _accessibilitySwitchNativeFocusedApplicationWithPID:v4 identifier:v6];
  return v4;
}

- (int)_accessibilityCurrentCallState
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  AXPerformSafeBlock();
  v2 = v12[5];
  _Block_object_dispose(&v11, 8);

  v3 = [v2 safeValueForKey:@"incomingCallExists"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v6 = [v2 safeValueForKey:@"activeCallExists"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v5 = 1;
    }

    else
    {
      v8 = [v2 safeValueForKey:@"outgoingCallExists"];
      v9 = [v8 BOOLValue];

      if (v9)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

uint64_t __58__SpringBoardAccessibility__accessibilityCurrentCallState__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [(objc_class *)AXSpringBoardGlueSBTelephonyManagerClass() sharedTelephonyManagerCreatingIfNecessary:0];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)accessibilityStartStopToggle
{
  v75 = *MEMORY[0x29EDCA608];
  v3 = AXSBHIconManagerFromSharedIconController();
  v4 = [v3 safeBoolForKey:@"isEditing"];

  if (!v4)
  {
    if (AXSpringBoardIsAssistantVisible())
    {
      v8 = [NSClassFromString(&cfstr_Sbmediacontrol.isa) safeValueForKey:@"sharedInstance"];
      if ([v8 safeBoolForKey:@"isPlaying"]&& ([v8 safeBoolForKey:@"isPaused"]& 1) == 0)
      {
        v51 = [MEMORY[0x29EDBD6C0] sharedInstance];
        v52 = [v51 ignoreLogging];

        if ((v52 & 1) == 0)
        {
          v53 = [MEMORY[0x29EDBD6C0] identifier];
          v54 = AXLoggerForFacility();

          v55 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = AXColorizeFormatLog();
            v57 = _AXStringForArgs();
            if (os_log_type_enabled(v54, v55))
            {
              *buf = 138543362;
              v74 = v57;
              _os_log_impl(&dword_29C37A000, v54, v55, "%{public}@", buf, 0xCu);
            }
          }
        }

        v68 = MEMORY[0x29EDCA5F8];
        v69 = 3221225472;
        v70 = __56__SpringBoardAccessibility_accessibilityStartStopToggle__block_invoke;
        v71 = &unk_29F2FBA40;
        v8 = v8;
        v72 = v8;
        AXPerformSafeBlock();
        v7 = 1;
        v16 = v8;
      }

      else
      {
        v9 = [MEMORY[0x29EDBD6C0] sharedInstance];
        v10 = [v9 ignoreLogging];

        if ((v10 & 1) == 0)
        {
          v11 = [MEMORY[0x29EDBD6C0] identifier];
          v12 = AXLoggerForFacility();

          v13 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = AXColorizeFormatLog();
            v15 = _AXStringForArgs();
            if (os_log_type_enabled(v12, v13))
            {
              *buf = 138543362;
              v74 = v15;
              _os_log_impl(&dword_29C37A000, v12, v13, "%{public}@", buf, 0xCu);
            }
          }
        }

        v16 = [NSClassFromString(&cfstr_Sbassistantcon.isa) safeValueForKey:@"sharedInstanceIfExists"];
        v17 = [v16 safeValueForKey:@"_presentedMainScreenSiriPresentation"];
        v18 = [v17 safeValueForKey:@"siriViewController"];
        v19 = [v18 safeUIViewForKey:@"_siriView"];
        v20 = [v19 safeUIViewForKey:@"siriStatusView"];
        v7 = [v20 accessibilityPerformMagicTap];
      }

      goto LABEL_58;
    }

    v67.receiver = self;
    v67.super_class = SpringBoardAccessibility;
    if ([(SpringBoardAccessibility *)&v67 accessibilityStartStopToggle])
    {
      v24 = [MEMORY[0x29EDBD6C0] sharedInstance];
      v25 = [v24 ignoreLogging];

      if (v25)
      {
        return 1;
      }

      v58 = [MEMORY[0x29EDBD6C0] identifier];
      v8 = AXLoggerForFacility();

      v7 = 1;
      v59 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v8, v59))
      {
        goto LABEL_59;
      }

      v16 = AXColorizeFormatLog();
      v60 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v59))
      {
        *buf = 138543362;
        v74 = v60;
        _os_log_impl(&dword_29C37A000, v8, v59, "%{public}@", buf, 0xCu);
      }

LABEL_57:

      v7 = 1;
LABEL_58:

      goto LABEL_59;
    }

    v26 = [(SpringBoardAccessibility *)self _iosAccessibilityAttributeValue:1500];
    v27 = [v26 BOOLValue];

    if (v27)
    {
      v28 = [MEMORY[0x29EDBD6C0] sharedInstance];
      v29 = [v28 ignoreLogging];

      if ((v29 & 1) == 0)
      {
        v30 = [MEMORY[0x29EDBD6C0] identifier];
        v31 = AXLoggerForFacility();

        v32 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = AXColorizeFormatLog();
          v34 = _AXStringForArgs();
          if (os_log_type_enabled(v31, v32))
          {
            *buf = 138543362;
            v74 = v34;
            _os_log_impl(&dword_29C37A000, v31, v32, "%{public}@", buf, 0xCu);
          }
        }
      }

      v8 = [NSClassFromString(&cfstr_Sbmediacontrol.isa) safeValueForKey:@"sharedInstance"];
      if (([v8 safeBoolForKey:@"isPlaying"]& 1) == 0 && ([v8 safeBoolForKey:@"isPaused"]& 1) == 0)
      {
        v62 = [MEMORY[0x29EDBD6C0] sharedInstance];
        v63 = [v62 ignoreLogging];

        if (v63)
        {
          v7 = 1;
          goto LABEL_59;
        }

        v64 = [MEMORY[0x29EDBD6C0] identifier];
        v16 = AXLoggerForFacility();

        v7 = 1;
        v65 = AXOSLogLevelFromAXLogLevel();
        if (!os_log_type_enabled(v16, v65))
        {
          goto LABEL_58;
        }

        v60 = AXColorizeFormatLog();
        v66 = _AXStringForArgs();
        if (os_log_type_enabled(v16, v65))
        {
          *buf = 138543362;
          v74 = v66;
          _os_log_impl(&dword_29C37A000, v16, v65, "%{public}@", buf, 0xCu);
        }

        goto LABEL_57;
      }
    }

    v35 = [MEMORY[0x29EDBD6C0] sharedInstance];
    v36 = [v35 ignoreLogging];

    if ((v36 & 1) == 0)
    {
      v37 = [MEMORY[0x29EDBD6C0] identifier];
      v38 = AXLoggerForFacility();

      v39 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = AXColorizeFormatLog();
        CFAbsoluteTimeGetCurrent();
        v41 = _AXStringForArgs();
        if (os_log_type_enabled(v38, v39))
        {
          *buf = 138543362;
          v74 = v41;
          _os_log_impl(&dword_29C37A000, v38, v39, "%{public}@", buf, 0xCu);
        }
      }
    }

    if (CFAbsoluteTimeGetCurrent() - *&_SBAXPhoneCallLastEnded <= 10.0)
    {
      return 0;
    }

    v42 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v43 = [v42 voiceOverMagicTapDefaultToMediaPlayback];

    if (!v43)
    {
      return 0;
    }

    v8 = [NSClassFromString(&cfstr_Sbmediacontrol.isa) safeValueForKey:@"sharedInstance"];
    AXPerformSafeBlock();
    v44 = [MEMORY[0x29EDBD6C0] sharedInstance];
    v45 = [v44 ignoreLogging];

    if ((v45 & 1) == 0)
    {
      v46 = [MEMORY[0x29EDBD6C0] identifier];
      v47 = AXLoggerForFacility();

      v48 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = AXColorizeFormatLog();
        v50 = _AXStringForArgs();
        if (os_log_type_enabled(v47, v48))
        {
          *buf = 138543362;
          v74 = v50;
          _os_log_impl(&dword_29C37A000, v47, v48, "%{public}@", buf, 0xCu);
        }
      }
    }

    v7 = 1;
    v16 = v8;
    goto LABEL_58;
  }

  v5 = [MEMORY[0x29EDBD6C0] sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v21 = [MEMORY[0x29EDBD6C0] identifier];
    v8 = AXLoggerForFacility();

    v22 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v22))
    {
      v16 = AXColorizeFormatLog();
      v23 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v22))
      {
        *buf = 138543362;
        v74 = v23;
        _os_log_impl(&dword_29C37A000, v8, v22, "%{public}@", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_58;
    }

    v7 = 0;
LABEL_59:

    return v7;
  }

  return 0;
}

- (void)_accessibilityUpdateRingerState
{
  if (![(SpringBoardAccessibility *)self _accessibilityIsSystemSleeping])
  {
    v3 = [(SpringBoardAccessibility *)self safeValueForKey:@"ringerControl"];
    v4 = [v3 safeBoolForKey:@"_accessibilityIsRingerMuted"];

    if (v4 != [(SpringBoardAccessibility *)self _axWasRingerMuted])
    {
      if (v4)
      {
        v5 = @"silent.mode";
      }

      else
      {
        v5 = @"ring.mode";
      }

      v7 = accessibilityLocalizedString(v5);
      v6 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v7];
      [v6 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD9F8]];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
    }
  }
}

- (void)_updateRingerState:(int)a3 reason:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(SpringBoardAccessibility *)self safeValueForKey:@"ringerControl"];
  v8 = [v7 safeBoolForKey:@"_accessibilityIsRingerMuted"];

  [(SpringBoardAccessibility *)self _axSetWasRingerMuted:v8];
  v9.receiver = self;
  v9.super_class = SpringBoardAccessibility;
  [(SpringBoardAccessibility *)&v9 _updateRingerState:v4 reason:v6];
}

- (BOOL)handleDoubleHeightStatusBarTapWithStyleOverride:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = SpringBoardAccessibility;
  v4 = [(SpringBoardAccessibility *)&v7 handleDoubleHeightStatusBarTapWithStyleOverride:?];
  v5 = _AXSHearingAidsPaired();
  if (a3 != 1024 && v5)
  {
    AXPerformSafeBlock();
  }

  return v4;
}

void __76__SpringBoardAccessibility_handleDoubleHeightStatusBarTapWithStyleOverride___block_invoke()
{
  v0 = [NSClassFromString(&cfstr_Axsbhearingaid.isa) safeValueForKey:@"sharedController"];
  [v0 showHearingAidControl:0];
}

- (void)_keyboardOrCaseLatchWantsToAttemptUnlock:(int)a3
{
  v3 = *&a3;
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74B0], 0);
  v5.receiver = self;
  v5.super_class = SpringBoardAccessibility;
  [(SpringBoardAccessibility *)&v5 _keyboardOrCaseLatchWantsToAttemptUnlock:v3];
}

- (void)_takeScreenshotWithPresentationMode:(unint64_t)a3
{
  v5 = +[SBVoiceOverTouchConnection defaultConnection];
  v6 = [v5 screenCurtainEnabled];

  if (v6)
  {
    v7 = +[SBVoiceOverTouchConnection defaultConnection];
    [v7 setScreenCurtainEnabled:0 animated:0];
  }

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __64__SpringBoardAccessibility__takeScreenshotWithPresentationMode___block_invoke;
  v10[3] = &unk_29F2FC5B8;
  v10[4] = self;
  v10[5] = a3;
  v11 = v6;
  v8 = MEMORY[0x29ED38050](v10);
  v9 = v8;
  if (v6)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    (*(v8 + 16))(v8);
  }
}

id __64__SpringBoardAccessibility__takeScreenshotWithPresentationMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = SpringBoardAccessibility;
  result = objc_msgSendSuper2(&v4, sel__takeScreenshotWithPresentationMode_, v2);
  if (*(a1 + 48) == 1)
  {
    return AXPerformBlockOnMainThreadAfterDelay();
  }

  return result;
}

void __64__SpringBoardAccessibility__takeScreenshotWithPresentationMode___block_invoke_2()
{
  v0 = +[SBVoiceOverTouchConnection defaultConnection];
  [v0 setScreenCurtainEnabled:1];
}

- (id)_accessibilityOccludedAppSceneIdentifiers
{
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 focusedOccludedAppScenes];

  v4 = [v3 ax_mappedArrayUsingBlock:&__block_literal_global_1176];

  return v4;
}

- (id)_accessibilityOccludedMultitaskingApps
{
  v32 = *MEMORY[0x29EDCA608];
  v15 = objc_opt_new();
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 focusedOccludedAppScenes];

  v4 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v13 = AXSwitcherController(@"activeDisplayWindowScene", v4);

  v18 = [v13 safeValueForKey:@"contentViewController"];
  v17 = [v18 safeValueForKey:@"_liveContentOverlayCoordinator"];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v16 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v27 + 1) + 8 * i) fbSceneIdentifier];
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = __Block_byref_object_copy__8;
        v25 = __Block_byref_object_dispose__8;
        v26 = 0;
        v20 = v17;
        v8 = v7;
        AXPerformSafeBlock();
        v9 = v22[5];

        _Block_object_dispose(&v21, 8);
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = __Block_byref_object_copy__8;
        v25 = __Block_byref_object_dispose__8;
        v26 = 0;
        v19 = v18;
        v10 = v9;
        AXPerformSafeBlock();
        v11 = v22[5];

        _Block_object_dispose(&v21, 8);
        if (v11)
        {
          [v15 setObject:v11 forKey:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  return v15;
}

uint64_t __66__SpringBoardAccessibility__accessibilityOccludedMultitaskingApps__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) appLayoutForSceneIdentifier:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __66__SpringBoardAccessibility__accessibilityOccludedMultitaskingApps__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _itemContainerForAppLayoutIfExists:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityFrontmostItemContainer
{
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = AXSwitcherController(@"activeDisplayWindowScene", v2);

  v4 = [v3 safeValueForKey:@"contentViewController"];
  v5 = [v4 safeValueForKey:@"layoutContext"];
  v6 = [v5 safeValueForKey:@"layoutState"];
  v7 = [v6 safeValueForKey:@"appLayout"];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v13 = v7;
  v14 = v4;
  AXPerformSafeBlock();
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v11 = v14;
  v12 = v8;
  AXPerformSafeBlock();
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __64__SpringBoardAccessibility__accessibilityFrontmostItemContainer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) zOrderedItemsInAppLayout:v2];
  v3 = [v2 leafAppLayoutsFromDisplayItems:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __64__SpringBoardAccessibility__accessibilityFrontmostItemContainer__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) firstObject];
  v3 = [v2 _itemContainerForAppLayoutIfExists:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_accessibilityActiveSceneIdentifier
{
  v2 = [(SpringBoardAccessibility *)self _accessibilityFrontmostItemContainer];
  v3 = [v2 safeValueForKey:@"appLayout"];
  v4 = [v3 safeArrayForKey:@"_items"];

  v5 = [v4 firstObject];
  v6 = [v5 safeStringForKey:@"uniqueIdentifier"];

  return v6;
}

- (BOOL)_accessibilityIsShowingLongLookNotification
{
  v2 = [(SpringBoardAccessibility *)self safeValueForKey:@"notificationDispatcher"];
  v3 = [v2 safeValueForKey:@"bannerDestination"];
  if ([v3 safeBoolForKey:@"isPresentingBannerInLongLook"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 safeValueForKey:@"dashBoardDestination"];
    v4 = [v5 safeBoolForKey:@"isPresentingNotificationInLongLook"];
  }

  return v4;
}

- (BOOL)_accessibilityIsShowingShortcutsUI
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __62__SpringBoardAccessibility__accessibilityIsShowingShortcutsUI__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"remoteTransientOverlaySessionManager"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 hasActiveSessionMatchingPredicate:&__block_literal_global_1181 options:0];
}

uint64_t __62__SpringBoardAccessibility__accessibilityIsShowingShortcutsUI__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 safeStringForKey:@"serviceBundleIdentifier"];
  v3 = [v2 isEqualToString:@"com.apple.ShortcutsUI"];

  return v3;
}

- (id)_accessibilityNotificationSummary:(unint64_t)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = [(SpringBoardAccessibility *)self safeValueForKey:@"_orientationAggregator"];
  v5 = [v4 safeValueForKey:@"interfaceOrientationSources"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        NSClassFromString(&cfstr_Sbtransientove_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v12 = 0;
          v11 = v6;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = [MEMORY[0x29EDBDDC0] sharedServerHelper];
  v12 = [v11 _accessibilityNotificationSummary:a3];
LABEL_11:

  return v12;
}

- (unint64_t)_accessibilityNotificationCount
{
  v2 = [MEMORY[0x29EDBDDC0] sharedServerHelper];
  v3 = [v2 _accessibilityNotificationCount];

  return v3;
}

- (void)_accessibilityHandleSpeakScreenGesture:(id)a3
{
  v14 = a3;
  [v14 locationInView:0];
  v5 = v4;
  v7 = v6;
  if (_AXSSpeakThisEnabled())
  {
    if (([(SpringBoardAccessibility *)self _accessibilityIsSpeakThisTemporarilyDisabled]& 1) == 0)
    {
      v8 = [MEMORY[0x29EDBDFA8] server];
      v9 = [v8 hasActiveOrPendingCallOrFaceTime];

      if ((v9 & 1) == 0)
      {
        v10 = [v14 state];
        switch(v10)
        {
          case 5:
            v13 = @"Speak Screen gesture recognizer failed";
            LOBYTE(v12) = 1;
            _AXLogWithFacility();
            break;
          case 4:
            break;
          case 1:
            v11 = [MEMORY[0x29EDC6CA8] sharedInstance];
            [v11 speakThisWithOptions:12 useAppAtPoint:&__block_literal_global_1189 errorHandler:{v5, v7}];
            goto LABEL_10;
          default:
            goto LABEL_11;
        }

        v11 = [MEMORY[0x29EDC6CA8] sharedInstance];
        [v11 didCancelSpeakThisErrorHandler:0];
LABEL_10:
      }
    }
  }

LABEL_11:
}

void __67__SpringBoardAccessibility__accessibilityHandleSpeakScreenGesture___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = a2;
  v3 = AXLogSpeakScreen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_29C37A000, v3, OS_LOG_TYPE_INFO, "Error handler: %@", &v4, 0xCu);
  }
}

- (void)_accessibilityUpdateSpeakScreenGestureRecognizer
{
  if (AXSpringBoardIsReadyToBeProbed())
  {

    [(SpringBoardAccessibility *)self __accessibilityUpdateSpeakScreenGestureRecognizer];
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)__accessibilityUpdateSpeakScreenGestureRecognizer
{
  if (!AXSpringBoardIsReadyToBeProbed())
  {
    _AXAssert();
  }

  IsSpeakScreenEnabled = UIAccessibilityIsSpeakScreenEnabled();
  v4 = [(SpringBoardAccessibility *)self _accessibilitySpeakScreenGestureRecognizer];

  if (IsSpeakScreenEnabled)
  {
    if (!v4)
    {
      v10 = [(UIScreenEdgePanGestureRecognizer *)[SpeakScreenGestureRecognizer alloc] initWithTarget:self action:sel__accessibilityHandleSpeakScreenGesture_];
      [(UIScreenEdgePanGestureRecognizer *)v10 setMinimumNumberOfTouches:2];
      [(SpeakScreenGestureRecognizer *)v10 setMaximumNumberOfTouches:2];
      [(UIScreenEdgePanGestureRecognizer *)v10 setEdges:1];
      v5 = [MEMORY[0x29EDC7E70] sharedInstance];
      v6 = [MEMORY[0x29EDC1160] mainIdentity];
      [v5 addGestureRecognizer:v10 toDisplayWithIdentity:v6];

      [(SpringBoardAccessibility *)self _accessibilitySetSpeakScreenGestureRecognizer:v10];
    }
  }

  else if (v4)
  {
    v7 = [MEMORY[0x29EDC7E70] sharedInstance];
    v8 = [(SpringBoardAccessibility *)self _accessibilitySpeakScreenGestureRecognizer];
    v9 = [MEMORY[0x29EDC1160] mainIdentity];
    [v7 removeGestureRecognizer:v8 fromDisplayWithIdentity:v9];

    [(SpringBoardAccessibility *)self _accessibilitySetSpeakScreenGestureRecognizer:0];
  }
}

- (BOOL)_axIsKeyUIEventCommandTab:(id)a3
{
  v4 = a3;
  if (!AXDeviceIsPad())
  {
    goto LABEL_13;
  }

  v5 = _UIAccessibilityFullKeyboardAccessEnabled();
  LOBYTE(v6) = 0;
  if (!v4 || !v5)
  {
    goto LABEL_14;
  }

  if (![(SpringBoardAccessibility *)self safeBoolForKey:@"_hasFinishedLaunching"])
  {
LABEL_13:
    LOBYTE(v6) = 0;
    goto LABEL_14;
  }

  v7 = [v4 _modifiedInput];
  if (v7)
  {
    v6 = [v4 _hidEvent];
    if (v6)
    {
      v8 = [(SpringBoardAccessibility *)self axSBCommandTabController];
      v9 = v8;
      LOBYTE(v6) = v8 && [v8 safeBoolForKey:@"isVisible"] && (BKSHIDEventGetSourceFromKeyboardEvent() & 0xFFFFFFFD) == 1 && objc_msgSend(v4, "_isKeyDown") && (objc_msgSend(v7, "isEqualToString:", @"\t") & 1) != 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

LABEL_14:
  return v6;
}

- (id)axSBCommandTabController
{
  v2 = AXWindowScene(@"activeDisplayWindowScene");
  v3 = [v2 safeValueForKey:@"commandTabController"];

  return v3;
}

- (void)_handleKeyUIEvent:(id)a3
{
  v4 = a3;
  if ([(SpringBoardAccessibility *)self _axIsKeyUIEventCommandTab:v4])
  {
    v5 = [(SpringBoardAccessibility *)self axSBCommandTabController];
    v6 = [v5 next];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SpringBoardAccessibility;
    [(SpringBoardAccessibility *)&v7 _handleKeyUIEvent:v4];
  }
}

void __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x29EDCA608];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_29C37A000, v0, OS_LOG_TYPE_DEBUG, "%s un-setting continuity attributes for process: %@", v1, 0x16u);
}

void __75__SpringBoardAccessibility__updateContinuityAttributesForProcess_isActive___block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x29EDCA608];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_29C37A000, v0, OS_LOG_TYPE_DEBUG, "%s setting continuity attributes for process: %@", v1, 0x16u);
}

- (void)processManager:(void *)a1 didAddProcess:.cold.1(void *a1)
{
  v1 = [a1 state];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_29C37A000, v2, v3, "%s process:%@.\n state:%@", v4, v5, v6, v7, 2u);
}

- (void)processManager:(void *)a1 didRemoveProcess:.cold.1(void *a1)
{
  v1 = [a1 state];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_29C37A000, v2, v3, "%s process:%@.\n state:%@", v4, v5, v6, v7, 2u);
}

@end