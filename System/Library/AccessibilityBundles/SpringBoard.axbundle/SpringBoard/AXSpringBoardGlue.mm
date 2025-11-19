@interface AXSpringBoardGlue
+ (BOOL)_showingBuddyLockScreen;
+ (BOOL)canPerformAppSwitch;
+ (BOOL)isBuddyRunning;
+ (int)applicationOrientation;
+ (void)accessibilityInitializeBundle;
+ (void)handleOrientationChange;
+ (void)removeVoiceOverInfoPanel:(double)a3;
+ (void)resetCanShowAXInfoPanel;
+ (void)toggleVoiceOverInfoPanel;
- (BOOL)_axIsAppLibraryOrTodayViewPresent;
- (BOOL)_axIsCoverSheetTodayViewControllerPresent;
- (BOOL)isDimmed;
- (BOOL)isUILocked;
- (int)lastLockSource;
@end

@implementation AXSpringBoardGlue

+ (void)resetCanShowAXInfoPanel
{
  if ((CanShowAXInfoPanel & 1) == 0)
  {
    CanShowAXInfoPanel = 1;
    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    [v4 addObserver:a1 selector:sel_toggleVoiceOverInfoPanel name:*MEMORY[0x29EDC8000] object:0];

    [a1 toggleVoiceOverInfoPanel];
  }
}

+ (void)removeVoiceOverInfoPanel:(double)a3
{
  [__axClient sendAsynchronousMessage:MEMORY[0x29EDB8EA0] withIdentifier:10001 targetAccessQueue:0 completion:{0, a3}];
  v3 = __axClient;
  __axClient = 0;
}

+ (BOOL)isBuddyRunning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 runningAppProcesses];

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __35__AXSpringBoardGlue_isBuddyRunning__block_invoke;
  v5[3] = &unk_29F2FB920;
  v5[4] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];
  LOBYTE(v2) = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v2;
}

void __35__AXSpringBoardGlue_isBuddyRunning__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 safeValueForKey:@"bundleIdentifier"];
  v7 = [v6 isEqualToString:*MEMORY[0x29EDBD660]];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (BOOL)_showingBuddyLockScreen
{
  v2 = [NSClassFromString(&cfstr_Sbapplicationc.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v3 = [v2 safeValueForKey:@"setupApplication"];
  v4 = [v3 safeValueForKey:@"processState"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeValueForKey:@"taskState"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v5 safeValueForKey:@"visibility"];
  v9 = [v8 unsignedIntegerValue];

  v11 = v9 == 2 && v7 == 2;
  return v11;
}

+ (BOOL)canPerformAppSwitch
{
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = AXSwitcherController(@"activeDisplayWindowScene", v2);

  v4 = [v3 safeValueForKey:@"gestureManager"];
  v5 = [v4 safeValueForKey:@"zStackParticipant"];
  v6 = [v5 safeBoolForKey:@"ownsHomeGesture"];

  return v6;
}

+ (void)toggleVoiceOverInfoPanel
{
  v19 = *MEMORY[0x29EDCA608];
  if (CanShowAXInfoPanel == 1)
  {
    v3 = [a1 isBuddyRunning];
    v4 = [a1 _isSessionLoginSession];
    v5 = [a1 _showingBuddyLockScreen];
    if (UIAccessibilityIsVoiceOverRunning() && (((v3 | v5) | v4) & 1) != 0)
    {
      if (!__axClient)
      {
        v6 = [objc_alloc(MEMORY[0x29EDBDDD0]) initWithIdentifier:@"AXSpringBoardBundle" serviceBundleName:@"VoiceOver"];
        v7 = __axClient;
        __axClient = v6;
      }

      v8 = VOTLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x29EDBA070] numberWithBool:v3];
        v10 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
        v11 = [MEMORY[0x29EDBA070] numberWithBool:v4 & 1];
        *buf = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_29C37A000, v8, OS_LOG_TYPE_DEFAULT, "Will show vot-enabled banner. buddyIsRunnig=%@ showingBuddyScreen=%@ sessionIsLoginSession=%@", buf, 0x20u);
      }

      [__axClient sendAsynchronousMessage:MEMORY[0x29EDB8EA0] withIdentifier:10000 targetAccessQueue:0 completion:0];
    }

    else
    {
      [a1 removeVoiceOverInfoPanel:0.5];
      if ((((v3 | v5) | v4) & 1) == 0)
      {
        CanShowAXInfoPanel = 0;
        v12 = [MEMORY[0x29EDBA068] defaultCenter];
        [v12 removeObserver:a1 name:*MEMORY[0x29EDC8000] object:0];
      }
    }
  }

  else if (__axClient)
  {

    [a1 removeVoiceOverInfoPanel:0.5];
  }
}

+ (void)handleOrientationChange
{
  UIAccessibilityPostNotification(0x3F3u, 0);
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  v2 = [MEMORY[0x29EDBA060] notificationWithName:@"SBAXStatusBarOrientationChange" object:0];
  [v3 postNotification:v2];
}

+ (int)applicationOrientation
{
  v2 = [*MEMORY[0x29EDC8008] activeInterfaceOrientation];
  if ((v2 - 1) >= 4)
  {
    LODWORD(v2) = 0;
  }

  return v2;
}

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, _frontBoardCategoriesDidInstall, *MEMORY[0x29EDBD6F0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [v4 performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_1062 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_1071];

    v5 = [MEMORY[0x29EDBD6E8] sharedInstance];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __50__AXSpringBoardGlue_accessibilityInitializeBundle__block_invoke_4;
    v15[3] = &__block_descriptor_40_e29_v16__0__AXValidationManager_8l;
    v15[4] = a1;
    [v5 installSafeCategories:v15 afterDelay:@"SpringBoard Framework (Delay)" validationTargetName:@"SB" overrideProcessName:0.5];

    v6 = [objc_allocWithZone(a1) init];
    v7 = _Failover;
    _Failover = v6;

    v8 = [MEMORY[0x29EDBD690] sharedInstance];
    [v8 addHandler:&__block_literal_global_1472 forBundleName:@"NowPlayingArtLockScreen.lockbundle"];

    v9 = [MEMORY[0x29EDBA068] defaultCenter];
    [v9 addObserver:a1 selector:sel_toggleVoiceOverInfoPanel name:*MEMORY[0x29EDC8000] object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _appTransitionOccurred, @"com.apple.mobile.SubstantialTransition", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v11, 0, _StackshotTaken, *MEMORY[0x29EDBFBC8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    if (_AXSFullKeyboardAccessEnabled())
    {
      v12 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
      v13 = [v12 windowScene];
      v14 = [v13 focusSystem];

      [v14 requestFocusUpdateToEnvironment:v14];
    }
  }
}

uint64_t __50__AXSpringBoardGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SBAlertItemWindow"];
  [v2 validateClass:@"SBMainWorkspace"];
  [v2 validateClass:@"SBMainWorkspace" hasClassMethod:@"_instanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"transientOverlayPresentationManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBTransientOverlayPresentationManager" hasInstanceMethod:@"topmostPresentedViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAmbientPresentationController" hasInstanceMethod:@"isPresented" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"ambientPresentationController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBInCallTransientOverlayViewController"];
  [v2 validateClass:@"SBSpotlightTransientOverlayViewController"];
  [v2 validateClass:@"SBRemoteTransientOverlayViewController"];
  [v2 validateClass:@"SBRemoteTransientOverlayHostContentAdapter" hasInstanceVariable:@"_hostRemoteViewController" withType:"SBRemoteTransientOverlayHostViewController"];
  [v2 validateClass:@"SBRemoteTransientOverlayHostViewController" isKindOfClass:@"_UIRemoteViewController"];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"overlayLibraryViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"isTodayOverlayPresented" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"coverSheetTodayViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"isModalAppLibrarySupported" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"modalLibraryController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBModalLibraryController" hasProperty:@"libraryViewController" withType:"@"];
  [v2 validateClass:@"SBTransientOverlayWindow"];
  [v2 validateClass:@"SBAppSwitcherModel"];
  [v2 validateClass:@"SBHCalendarApplicationIcon"];
  [v2 validateClass:@"SBConferenceManager"];
  [v2 validateClass:@"SBFolder"];
  [v2 validateClass:@"SBFolderIcon"];
  [v2 validateClass:@"SBHUDController"];
  [v2 validateClass:@"SBIcon"];
  [v2 validateClass:@"SBIconController"];
  [v2 validateClass:@"SBApplicationController"];
  [v2 validateClass:@"SBIconListModel"];
  [v2 validateClass:@"SBIconModel"];
  [v2 validateClass:@"SBIconScrollView"];
  [v2 validateClass:@"SBMediaController"];
  [v2 validateClass:@"SBPlatformController"];
  [v2 validateClass:@"SBScreenshotManager"];
  [v2 validateClass:@"SBTelephonyManager"];
  [v2 validateClass:@"SBUIController"];
  [v2 validateClass:@"SPDaemonQueryToken"];
  [v2 validateClass:@"SSDownload"];
  [v2 validateClass:@"SSDownloadStatus"];
  [v2 validateClass:@"SpringBoard"];
  [v2 validateClass:@"UITableViewCellAccessibilityElement"];
  [v2 validateClass:@"SBPIPContainerViewController"];
  [v2 validateClass:@"SBAlertItemWindow"];
  [v2 validateClass:@"SBAssistantController"];
  [v2 validateClass:@"SBHomeScreenController"];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator"];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"windowSceneManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"switcherControllerForWindowScene:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBWindowSceneManager" hasInstanceMethod:@"activeDisplayWindowScene" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"switcherViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAssistantController" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"iconManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"homeScreenOverlayController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"_currentFolderController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"_rootFolderController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"isContinuityDisplayWindowScene" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"isMainDisplayWindowScene" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"homeScreenController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceVariable:@"_appInfo" withType:"SBApplicationInfo"];
  [v2 validateClass:@"SBApplicationIcon" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLayoutState" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_appLayoutContainingDisplayItem:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"floatingAppLayout" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAppLayoutAccessibility" hasInstanceMethod:@"_axDisplayName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinatorAccessibility" hasInstanceMethod:@"_axFluidSwitcherViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinatorAccessibility" hasInstanceMethod:@"_axIsAppSwitcherPeekingSlideOver" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinatorAccessibility" hasInstanceMethod:@"_axIsAppSwitcherPeekingSplitView" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBHIconManager" hasInstanceMethod:@"isMainDisplayLibraryViewVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBApplicationController"];
  [v2 validateClass:@"SBApplicationController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBDockSuggestionsIconListView"];
  [v2 validateClass:@"SBFloatingDockController"];
  [v2 validateClass:@"SBFloatingDockController" hasInstanceVariable:@"_viewController" withType:"SBFloatingDockRootViewController"];
  [v2 validateClass:@"SBFloatingDockRootViewController"];
  [v2 validateClass:@"SBFloatingDockRootViewController" hasInstanceMethod:@"floatingDockViewController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFloatingDockSuggestionsViewController"];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"isMedusaCapable" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBFloatingDockSuggestionsViewController" hasInstanceMethod:@"listView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"_currentFolderController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"iconManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"areAnyIconViewContextMenusShowing" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"rootFolder" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBHomeScreenController" hasInstanceMethod:@"iconDragManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFloatingDockSuggestionsViewController" conformsToProtocol:@"SBFloatingDockSuggestionsViewProviding"];
  [v2 validateProtocol:@"SBFloatingDockSuggestionsViewProviding" hasRequiredInstanceMethod:@"floatingDockViewController"];
  [v2 validateClass:@"SBLayoutState"];
  [v2 validateClass:@"SBLayoutState" hasInstanceMethod:@"elementWithRole:" withFullSignature:{"@", "q", 0}];
  [v2 validateClass:@"SBLayoutElement"];
  [v2 validateClass:@"SBLayoutElement" hasInstanceMethod:@"layoutAttributes" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"SBMainDisplayLayoutState"];
  [v2 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"spaceConfiguration" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBPlatformController"];
  [v2 validateClass:@"SBPlatformController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBPlatformController" hasInstanceMethod:@"medusaCapabilities" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAssistantController" hasClassMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBAssistantController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAssistantController" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBBluetoothController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBConferenceManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMediaController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBModelessSyncController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBPlatformController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasClassMethod:@"sharedTelephonyManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasClassMethod:@"sharedTelephonyManagerCreatingIfNecessary:" withFullSignature:{"@", "B", 0}];
  [v2 validateClass:@"SBUIController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationController" hasInstanceMethod:@"setupApplication" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"processState" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"visibility" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"taskState" withFullSignature:{"q", 0}];
  [v2 validateClass:@"BBBulletin" hasInstanceMethod:@"sectionID" withFullSignature:{"@", 0}];
  [v2 validateClass:@"BBBulletin" hasInstanceMethod:@"unlockActionLabel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAlertItemsController" hasInstanceMethod:@"activateAlertItem:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBAlertItemsController" hasInstanceMethod:@"deactivateAlertItem:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBBluetoothController" hasInstanceMethod:@"batteryLevel" withFullSignature:{"i", 0}];
  [v2 validateClass:@"SBFolder" hasInstanceMethod:@"allIcons" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFolder" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBIcon" hasInstanceMethod:@"isFolderIcon" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBFolderController" hasInstanceMethod:@"_cancelCloseFolderTimer" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBFolderController" hasInstanceMethod:@"_closeFolderTimerFired" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"iconModel" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFolderController" hasInstanceMethod:@"_setCloseFolderTimerIfNecessary" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBIconListModel" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMediaController" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBMediaController" hasInstanceMethod:@"togglePlayPauseForEventSource:" withFullSignature:{"B", "q", 0}];
  [v2 validateClass:@"SBModelessSyncController" hasInstanceMethod:@"isSyncing" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBPlatformController" hasInstanceMethod:@"isInternalInstall" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasInstanceMethod:@"incomingCallExists" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasInstanceMethod:@"outgoingCallExists" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBUIController" hasInstanceMethod:@"batteryCapacity" withFullSignature:{"f", 0}];
  [v2 validateClass:@"SBUIController" hasInstanceMethod:@"batteryCapacityAsPercentage" withFullSignature:{"i", 0}];
  [v2 validateClass:@"SBAssistantController" hasInstanceMethod:@"currentSession" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAssistantSession" hasInstanceMethod:@"presentationContext" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBAssistantSessionPresentationContext" hasInstanceMethod:@"hasVisionModality" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBAssistantSessionPresentationContext" hasInstanceMethod:@"hasTextModality" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBUIController" hasInstanceMethod:@"headsetBatteryCapacity" withFullSignature:{"C", 0}];
  [v2 validateClass:@"SBUIController" hasInstanceMethod:@"updateBatteryState:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"SSDownload" hasInstanceMethod:@"metadata" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SSDownload" hasInstanceMethod:@"status" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SSDownloadMetadata" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SSDownloadStatus" hasInstanceMethod:@"isFailed" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SSDownloadStatus" hasInstanceMethod:@"isPausable" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SSDownloadStatus" hasInstanceMethod:@"isPaused" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilityDeactivationAnimationWillBegin" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilityTopDisplay" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"activeInterfaceOrientation" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"isLocked" withFullSignature:{"B", 0}];
  [v2 validateClass:@"UITableViewCellAccessibilityElement" hasInstanceMethod:@"accessibilityScrollToVisibleWithChild:" withFullSignature:{"B", "@", 0}];
  [v2 validateClass:@"UIWindow" hasInstanceMethod:@"_updateToInterfaceOrientation: duration: force:" withFullSignature:{"v", "q", "d", "B", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isUILocked" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"_setUILocked:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"SBAppToAppWorkspaceTransaction" hasInstanceMethod:@"_setupAnimation" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBDeleteNonAppIconAlertItem" hasInstanceMethod:@"configure: requirePasscodeForActions:" withFullSignature:{"v", "B", "B", 0}];
  [v2 validateClass:@"SBIconModel" hasInstanceMethod:@"applicationIconForBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"SBIconModel" hasInstanceMethod:@"isIconVisible:" withFullSignature:{"B", "@", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_takeScreenshotWithPresentationMode:" withFullSignature:{"v", "Q", 0}];
  [v2 validateClass:@"SBBacklightController" hasInstanceMethod:@"turnOnScreenFullyWithBacklightSource:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_updateRingerState:reason:" withFullSignature:{"v", "i", "@", 0}];
  [v2 validateClass:@"SBBacklightController" hasInstanceMethod:@"setBacklightState:source:animated:completion:" withFullSignature:{"v", "q", "q", "B", "@?", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_legacy_noteInterfaceOrientationChanged: duration: updateMirroredDisplays: force: logMessage:" withFullSignature:{"v", "q", "d", "B", "B", "@", 0}];
  [v2 validateClass:@"SSDownload" hasInstanceMethod:@"metadata" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenViewControllerBase" hasInstanceMethod:@"setInScreenOffMode:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"SBIcon" hasInstanceMethod:@"badgeNumberOrString" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBUIPasscodeLockViewWithKeypad" hasInstanceMethod:@"resetForFailedPasscode" withFullSignature:{"v", 0}];
  [v2 validateClass:@"BBBulletin" hasInstanceMethod:@"bulletinID" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIView" hasInstanceMethod:@"_accessibilityHitTestSubviews" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationIcon" isKindOfClass:@"SBIcon"];
  [v2 validateClass:@"SBBookmarkIcon" isKindOfClass:@"SBIcon"];
  [v2 validateClass:@"SBFolderIcon" isKindOfClass:@"SBIcon"];
  [v2 validateClass:@"SBApplication" hasInstanceVariable:@"_bundleIdentifier" withType:"NSString"];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceVariable:@"_lockScreenEnvironment" withType:"<SBLockScreenEnvironment>"];
  [v2 validateProtocol:@"SBLockScreenEnvironment" hasRequiredInstanceMethod:@"rootViewController"];
  [v2 validateProtocol:@"SBLockScreenEnvironment" hasRequiredInstanceMethod:@"callController"];
  [v2 validateClass:@"SBIcon" hasInstanceMethod:@"badgeNumberOrString" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBIconController" hasInstanceVariable:@"_iconModel" withType:"SBIconModel"];
  [v2 validateClass:@"SBIconController" hasInstanceMethod:@"_currentFolderController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFolderController" hasInstanceMethod:@"iconListViews" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFolderController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBFolderView" hasInstanceVariable:@"_scrollView" withType:"SBIconScrollView"];
  [v2 validateClass:@"SBFolderIcon" hasInstanceVariable:@"_folder" withType:"SBFolder"];
  [v2 validateClass:@"SBFolderController" hasInstanceVariable:@"_closeFolderTimer" withType:"NSTimer"];
  [v2 validateClass:@"_UIScreenEdgePanRecognizerEdgeSettings" hasInstanceMethod:@"hysteresis" withFullSignature:{"d", 0}];
  [v2 validateClass:@"_UIScreenEdgePanRecognizerEdgeSettings" hasInstanceMethod:@"edgeRegionSize" withFullSignature:{"d", 0}];
  [v2 validateClass:@"UIPanGestureRecognizer" hasInstanceMethod:@"_removeHysteresisFromTranslation" withFullSignature:{"v", 0}];
  [v2 validateClass:@"UITouch" hasInstanceMethod:@"_edgeType" withFullSignature:{"q", 0}];
  [v2 validateClass:@"UITouch" hasInstanceMethod:@"_edgeAim" withFullSignature:{"Q", 0}];
  [v2 validateClass:@"UIPanGestureRecognizer" hasInstanceMethod:@"setFailsPastMaxTouches:" withFullSignature:{"v", "B", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"floatingDockController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isUILocked" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBAssistantController"];
  [v2 validateClass:@"SBAssistantController" hasClassMethod:@"isVisible" withFullSignature:{"B", 0}];
  [v2 validateProtocol:@"SBHTodayViewControlling" hasRequiredInstanceMethod:@"listView"];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"gestureManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"zStackParticipant" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBFZStackParticipant" hasInstanceMethod:@"ownsHomeGesture" withFullSignature:{"B", 0}];
  [v2 validateClass:@"NCNotificationListHeaderTitleView"];
  [v2 validateClass:@"SBCoverSheetWindow"];
  [v2 validateClass:@"SBPIPController"];
  [v2 validateClass:@"SBMainScreenActiveInterfaceOrientationWindow"];
  [v2 validateClass:@"SBHomeScreenWindow"];
  [v2 validateClass:@"SBVoiceControlViewController"];
  [v2 validateClass:@"SBTelephonyManager" hasInstanceMethod:@"disconnectCallAndActivateHeld" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasInstanceMethod:@"disconnectIncomingCall" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SBTelephonyManager" hasInstanceMethod:@"updateSpringBoard" withFullSignature:{"v", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilityObjectWithinProximity" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"sensorActivityDataProvider" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSensorActivityAttribution" hasInstanceMethod:@"sensor" withFullSignature:{"q", 0}];
  [v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_activeDisplaySwitcherController" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentLayoutState" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWindowSceneStatusBarManager"];
  [v2 validateClass:@"SBWindowSceneStatusBarManager" hasInstanceMethod:@"statusBar" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationController" hasInstanceVariable:@"_appProtectionCoordinator" withType:"SBAppProtectionCoordinator"];
  [v2 validateClass:@"SBAppProtectionCoordinator" hasInstanceMethod:@"bundleIdentifiersToAssistants" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBApplicationAppProtectionAssistant" hasInstanceMethod:@"shouldShield" withFullSignature:{"B", 0}];
  [v2 validateClass:@"SBMenuBarViewController" isKindOfClass:@"UIViewController"];
  [v2 validateClass:@"SBMenuBarViewController" hasInstanceVariable:@"_windowControlsPlaceholderView" withType:"UIView"];
  [v2 validateClass:@"SWKWindowControlsViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"windowScene" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"menuBarManager" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SBMenuBarManager" hasInstanceMethod:@"menuBarViewController" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __50__AXSpringBoardGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"SpringBoard Framework AX"];
  [v2 setOverrideProcessName:@"SpringBoardFramework"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __50__AXSpringBoardGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SBWorkspaceAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUILabelAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIAlertViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIApplicationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIImageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAlertItemsControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDeleteNonAppIconAlertItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUISegmentedControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBBookmarkIconAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUITableViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMainSwitcherControllerCoordinatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSwitcherViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBControlCenterWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBTelephonyManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHUDControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBBacklightControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBElasticHUDViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDisplayBrightnessControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUITableViewCellAccessibilityElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIControlAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBScreenshotManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAppToAppWorkspaceTransactionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBLockScreenManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAppSwitcherPageViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBWallpaperControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBElasticSliderViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIAnimationControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBControlCenterControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAssistantControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDashBoardSetupViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIdleTimerPolicyAggregatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBProximitySensorManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIconControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDashBoardLockScreenEnvironmentAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAppLayoutAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFluidSwitcherContentViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFluidSwitcherTitledButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFluidSwitcherButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDisplayItemAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFluidSwitcherItemContainerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFluidSwitcherViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSwitcherShelfViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBPowerDownViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBRestartManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBLogoutProgressViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBPasscodeEntryTransientOverlayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBRootSceneWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSwitcherAppSuggestionBannerViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSwitcherAppSuggestionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMainScreenActiveInterfaceOrientationWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBPIPContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBPIPControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBPictureInPictureWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBCommandTabViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBCommandTabControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"BBBulletinAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIViewControllerWrapperViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUITextEffectsRemoteViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMainSwitcherWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAssistantWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHomeScreenWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBCoverSheetWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMedusaDecoratedDeviceApplicationSceneViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFloatingDockControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDashBoardSetupViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAppViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHomeGrabberViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBCoverSheetPresentationManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMoveFloatingApplicationGestureWorkspaceTransactionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMoveGestureFloatingSwitcherModifierAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBUIRemoteKeyboardWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAlertItemWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBNotificationBannerDestinationAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSeparatorViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSlideOverTongueViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAppSwitcherScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBKeyboardFocusCoordinatorAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBRemoteTransientOverlayHostViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBTransientOverlayWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBIsolatedSceneOrientationFollowingWrapperViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSyncControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFloatingDockWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFluidSwitcherTouchPassThroughScrollViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBNCSoundControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"STUIStatusBarAccessibility__SpringBoardFramework__SystemStatusUI" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHomeScreenOverlayControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHomeScreenOverlayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBRecordingIndicatorViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDeviceApplicationSceneViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAppClipOverlayViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDeviceApplicationSceneClassicAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBTopAffordanceViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBInCallPresentationSessionAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSwitcherShelfViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBTopAffordanceDotsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBCursiveTextViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_SBWallpaperSecureWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_UIFocusSystemSceneComponentAccessibility__SpringBoardFramework__UIKit" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBWindowSceneAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSystemApertureWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSystemApertureStatusBarPillElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBDynamicFlashlightActivityElementViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBRingerAlertElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBPowerAlertElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFlashlightActivityElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFocusEnablementIndicatorSystemApertureActivityElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSystemActionSimpleAccessibilityPreviewElementAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSystemApertureViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBContinuousExposeWindowDragDestinationSwitcherModifierAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBContinuousExposeWindowDragContainerSwitcherModifierAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBAppResizeGrabberViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSystemApertureTelemetryEmitterAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBStatusBarWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBBannerWindowAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBActivityAmbientViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSystemActionCoachingHUDViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSystemActionCoachingControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBSwitcherControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFloatingDockRemoteContentManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMenuBarViewControllerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMenuBarManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"_SBTopAffordanceViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBReusableSnapshotItemContainerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBFluidSwitcherGestureManagerAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMenuBarMainMenuViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBHomePeekWindowingModifierAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SBMenuBarWindowAccessibility" canInteractWithTargetClass:1];
}

uint64_t __50__AXSpringBoardGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  [a2 installSafeCategory:@"SBApplicationAccessibility" canInteractWithTargetClass:1];
  CanShowAXInfoPanel = 1;
  result = AXProcessIsSpringBoard();
  if (result)
  {
    return AXPerformBlockOnMainThreadAfterDelay();
  }

  return result;
}

uint64_t __50__AXSpringBoardGlue_accessibilityInitializeBundle__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) isBuddyRunning];
  v3 = [*(a1 + 32) _showingBuddyLockScreen];
  if ((v2 & 1) != 0 || v3)
  {
    _AXSForcePreferenceUpdate();
  }

  return AXPerformBlockOnMainThreadAfterDelay();
}

void __50__AXSpringBoardGlue_accessibilityInitializeBundle__block_invoke_7()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 installSafeCategories:&__block_literal_global_1474 afterDelay:@"NowPlayingLockScreen" validationTargetName:@"NowPlayingLockScreen" overrideProcessName:0.5];
}

- (BOOL)isDimmed
{
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 isSystemSleeping];

  return v3;
}

- (BOOL)isUILocked
{
  v2 = AXSpringBoardGlueSBLockScreenControllerInstance_class;
  if (!AXSpringBoardGlueSBLockScreenControllerInstance_class)
  {
    v2 = NSClassFromString(&cfstr_Sblockscreenma.isa);
    AXSpringBoardGlueSBLockScreenControllerInstance_class = v2;
  }

  v3 = [(objc_class *)v2 safeValueForKey:@"sharedInstanceIfExists"];
  v4 = [v3 safeBoolForKey:@"isUILocked"];

  return v4;
}

- (int)lastLockSource
{
  v2 = AXSpringBoardFrameworkGlueSBLockScreenControllerInstance();
  v3 = [v2 safeIntForKey:@"_axLastLockSource"];

  return v3;
}

- (BOOL)_axIsAppLibraryOrTodayViewPresent
{
  v3 = AXSBHIconManagerFromSharedIconController();
  if ([v3 safeBoolForKey:@"isMainDisplayLibraryViewVisible"])
  {
    v4 = 1;
  }

  else
  {
    v5 = AXSBIconControllerSharedInstance();
    v4 = ([v5 safeBoolForKey:@"isTodayOverlayPresented"] & 1) != 0 || -[AXSpringBoardGlue _axIsCoverSheetTodayViewControllerPresent](self, "_axIsCoverSheetTodayViewControllerPresent");
  }

  return v4;
}

- (BOOL)_axIsCoverSheetTodayViewControllerPresent
{
  v2 = AXSBIconControllerSharedInstance();
  v3 = [v2 safeValueForKey:@"coverSheetTodayViewController"];

  v4 = [v3 _appearState] == 2 || objc_msgSend(v3, "_appearState") == 1;
  return v4;
}

@end