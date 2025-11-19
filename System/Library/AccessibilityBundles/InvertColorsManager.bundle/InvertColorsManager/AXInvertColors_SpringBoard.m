@interface AXInvertColors_SpringBoard
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SpringBoard

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIconView"];
  [v3 validateClass:@"SBFWakeAnimationSettings" hasInstanceMethod:@"sleepColorBrightness" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"isMainSwitcherVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"windowSceneManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWindowSceneManager" hasInstanceMethod:@"embeddedDisplayWindowScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWindowScene" hasInstanceMethod:@"switcherController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBDashBoardCameraPageViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBDashBoardCameraPageViewController" hasInstanceVariable:@"_tintView" withType:"UIView"];
  [v3 validateClass:@"SBDashBoardCameraPageViewController" hasInstanceVariable:@"_maskView" withType:"UIView"];
  [v3 validateClass:@"SBDockView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBDockView" hasInstanceVariable:@"_backgroundView" withType:"UIView"];
  [v3 validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_activateNeighboringAppLayoutRequiringActiveAppLayout:appLayoutEnvironment:inForwardDirection:windowScene:eventLabel:" withFullSignature:{"v", "B", "q", "B", "@", "@", 0}];
  [v3 validateClass:@"SBFolderControllerBackgroundView" hasClassMethod:@"_tintColorForEffect:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"SBFolderControllerBackgroundView" hasInstanceMethod:@"_updateCurrentEffect" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBDeviceApplicationSceneView" isKindOfClass:@"SBSceneView"];
  [v3 validateClass:@"SBSceneView" hasInstanceVariable:@"_backgroundView" withType:"UIView"];
  [v3 validateClass:@"SBSceneView" hasInstanceMethod:@"setBackgroundView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBSceneView" hasInstanceMethod:@"_refresh" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBSwitcherAppSuggestionBannerView" hasInstanceMethod:@"_createIconViewForSuggestion:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBSwitcherAppSuggestionBannerView" hasInstanceVariable:@"_iconView" withType:"UIImageView"];
  [v3 validateClass:@"SBIconBadgeView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBWallpaperPreviewSnapshotCache" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWallpaperPreviewSnapshotCache" hasInstanceMethod:@"invalidateSnapshotsForLocations:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"SBSearchBackdropView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBHomeScreenOverlayViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SBHomeScreenOverlayViewController" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHRootSidebarController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBAppSwitcherPageView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBAppSwitcherPageView" hasInstanceVariable:@"_shadowView" withType:"SBAppSwitcherPageShadowView"];
  [v3 validateClass:@"SBAppSwitcherPageShadowView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBFullscreenZoomView" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [v3 validateClass:@"SBAppSwitcherPageView" hasInstanceVariable:@"_dimmingView" withType:"UIView"];
  [v3 validateClass:@"SBTransientOverlayWindow" isKindOfClass:@"UIWindow"];
  [v3 validateClass:@"UIWindow" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRemoteTransientOverlayViewController" hasInstanceVariable:@"_hostContentAdapter" withType:"SBRemoteTransientOverlayHostContentAdapter"];
  [v3 validateClass:@"_UIRemoteViewController" hasInstanceMethod:@"serviceBundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBRemoteTransientOverlayHostViewController" isKindOfClass:@"_UIRemoteViewController"];
  [v3 validateClass:@"UIWindow" hasInstanceMethod:@"_setDelegateViewController:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBMainDisplaySceneLayoutStatusBarView"];
  [v3 validateClass:@"SBMainDisplaySceneLayoutStatusBarView" hasInstanceMethod:@"_layoutStatusBarForOrientation:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"SBMainDisplaySceneLayoutStatusBarView" hasInstanceVariable:@"_statusBar" withType:"UIStatusBar"];
  [v3 validateClass:@"SBDeviceApplicationSceneViewController"];
  [v3 validateClass:@"SBSceneViewController" hasInstanceMethod:@"_sceneView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBDeviceApplicationSceneViewController" isKindOfClass:@"SBSceneViewController"];
  [v3 validateClass:@"SBDeviceApplicationSceneView"];
  [v3 validateClass:@"SBDeviceApplicationSceneView" isKindOfClass:@"SBApplicationSceneView"];
  [v3 validateClass:@"SBApplicationSceneView" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainWorkspaceApplicationSceneLayoutElementViewController"];
  [v3 validateClass:@"SBMainWorkspaceApplicationSceneLayoutElementViewController" hasInstanceMethod:@"_applicationSceneViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController"];
  [v3 validateClass:@"SBApplication"];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceVariable:@"_switcherControllersByWindowScene" withType:"NSMapTable"];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"switcherWindow" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBar" isKindOfClass:@"UIView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SBRootSceneWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBFluidSwitcherItemContainerHeaderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBAppSwitcherReusableSnapshotViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBIconBadgeViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBUIPasscodeLockViewBaseInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBFloatyFolderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBPowerDownViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBDashBoardWallpaperEffectViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBIconListPageControlInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBSwitcherAppSuggestionBannerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBWallpaperEffectViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBHomeScreenPreviewViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBLockScreenPreviewViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBSearchBackdropViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBStatusBarLegibilityGradientViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBFullscreenZoomViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBHomeScreenBackdropDarkTintViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"_SBWallpaperSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBDockViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SpringBoardInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBDashBoardCameraPageViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBApplicationSceneBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBMainSwitcherControllerCoordinatorInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBAppSwitcherPageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBTransientOverlayWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBFolderControllerBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBHomeScreenOverlayViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBMainSwitcherWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"STUIStatusBarInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end