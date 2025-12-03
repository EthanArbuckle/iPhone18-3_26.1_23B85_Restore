@interface AXInvertColors_SpringBoard
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SpringBoard

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconView"];
  [validationsCopy validateClass:@"SBFWakeAnimationSettings" hasInstanceMethod:@"sleepColorBrightness" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBSwitcherController" hasInstanceMethod:@"isMainSwitcherVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SpringBoard" hasInstanceMethod:@"windowSceneManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWindowSceneManager" hasInstanceMethod:@"embeddedDisplayWindowScene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWindowScene" hasInstanceMethod:@"switcherController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDashBoardCameraPageViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBDashBoardCameraPageViewController" hasInstanceVariable:@"_tintView" withType:"UIView"];
  [validationsCopy validateClass:@"SBDashBoardCameraPageViewController" hasInstanceVariable:@"_maskView" withType:"UIView"];
  [validationsCopy validateClass:@"SBDockView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBDockView" hasInstanceVariable:@"_backgroundView" withType:"UIView"];
  [validationsCopy validateClass:@"MTMaterialView" hasInstanceMethod:@"_materialLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_activateNeighboringAppLayoutRequiringActiveAppLayout:appLayoutEnvironment:inForwardDirection:windowScene:eventLabel:" withFullSignature:{"v", "B", "q", "B", "@", "@", 0}];
  [validationsCopy validateClass:@"SBFolderControllerBackgroundView" hasClassMethod:@"_tintColorForEffect:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"SBFolderControllerBackgroundView" hasInstanceMethod:@"_updateCurrentEffect" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneView" isKindOfClass:@"SBSceneView"];
  [validationsCopy validateClass:@"SBSceneView" hasInstanceVariable:@"_backgroundView" withType:"UIView"];
  [validationsCopy validateClass:@"SBSceneView" hasInstanceMethod:@"setBackgroundView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBSceneView" hasInstanceMethod:@"_refresh" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBSwitcherAppSuggestionBannerView" hasInstanceMethod:@"_createIconViewForSuggestion:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBSwitcherAppSuggestionBannerView" hasInstanceVariable:@"_iconView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SBIconBadgeView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBWallpaperPreviewSnapshotCache" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWallpaperPreviewSnapshotCache" hasInstanceMethod:@"invalidateSnapshotsForLocations:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"SBSearchBackdropView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBHomeScreenOverlayViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBHomeScreenOverlayViewController" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHRootSidebarController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBAppSwitcherPageView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBAppSwitcherPageView" hasInstanceVariable:@"_shadowView" withType:"SBAppSwitcherPageShadowView"];
  [validationsCopy validateClass:@"SBAppSwitcherPageShadowView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBFullscreenZoomView" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [validationsCopy validateClass:@"SBAppSwitcherPageView" hasInstanceVariable:@"_dimmingView" withType:"UIView"];
  [validationsCopy validateClass:@"SBTransientOverlayWindow" isKindOfClass:@"UIWindow"];
  [validationsCopy validateClass:@"UIWindow" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBRemoteTransientOverlayViewController" hasInstanceVariable:@"_hostContentAdapter" withType:"SBRemoteTransientOverlayHostContentAdapter"];
  [validationsCopy validateClass:@"_UIRemoteViewController" hasInstanceMethod:@"serviceBundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBRemoteTransientOverlayHostViewController" isKindOfClass:@"_UIRemoteViewController"];
  [validationsCopy validateClass:@"UIWindow" hasInstanceMethod:@"_setDelegateViewController:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBMainDisplaySceneLayoutStatusBarView"];
  [validationsCopy validateClass:@"SBMainDisplaySceneLayoutStatusBarView" hasInstanceMethod:@"_layoutStatusBarForOrientation:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"SBMainDisplaySceneLayoutStatusBarView" hasInstanceVariable:@"_statusBar" withType:"UIStatusBar"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneViewController"];
  [validationsCopy validateClass:@"SBSceneViewController" hasInstanceMethod:@"_sceneView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneViewController" isKindOfClass:@"SBSceneViewController"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneView"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneView" isKindOfClass:@"SBApplicationSceneView"];
  [validationsCopy validateClass:@"SBApplicationSceneView" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMainWorkspaceApplicationSceneLayoutElementViewController"];
  [validationsCopy validateClass:@"SBMainWorkspaceApplicationSceneLayoutElementViewController" hasInstanceMethod:@"_applicationSceneViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController"];
  [validationsCopy validateClass:@"SBApplication"];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceVariable:@"_switcherControllersByWindowScene" withType:"NSMapTable"];
  [validationsCopy validateClass:@"SBSwitcherController" hasInstanceMethod:@"switcherWindow" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" isKindOfClass:@"UIView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SBRootSceneWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBFluidSwitcherItemContainerHeaderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBAppSwitcherReusableSnapshotViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBIconBadgeViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBUIPasscodeLockViewBaseInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBFloatyFolderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBPowerDownViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBDashBoardWallpaperEffectViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBIconListPageControlInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBSwitcherAppSuggestionBannerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBWallpaperEffectViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBHomeScreenPreviewViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBLockScreenPreviewViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBSearchBackdropViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBStatusBarLegibilityGradientViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBFullscreenZoomViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBHomeScreenBackdropDarkTintViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"_SBWallpaperSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBMainDisplaySceneLayoutStatusBarViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBDockViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SpringBoardInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBDashBoardCameraPageViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBApplicationSceneBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBMainSwitcherControllerCoordinatorInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBAppSwitcherPageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBTransientOverlayWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBFolderControllerBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBHomeScreenOverlayViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBMainSwitcherWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"STUIStatusBarInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end