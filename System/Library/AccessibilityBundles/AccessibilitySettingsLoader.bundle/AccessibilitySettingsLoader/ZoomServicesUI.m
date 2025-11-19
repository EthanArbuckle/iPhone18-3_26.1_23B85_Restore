@interface ZoomServicesUI
+ (BOOL)_shouldUnmapPointsForFluidGestures;
+ (CGPoint)_unMappedZoomPoint:(CGPoint)a3;
+ (void)disableZoomServices;
+ (void)enableZoomServices;
- (CGRect)_keyboardFrameInScreenCoordinates;
- (Class)_accessibilityBundlePrincipalClass;
- (ZoomServicesUI)init;
- (void)_handleAlertWillAppearNotification:(id)a3;
- (void)_handleAppDidEnterBackgroundNotification:(id)a3;
- (void)_handleAppSwitcherWillBeginRevealNotification:(id)a3;
- (void)_handleFirstResponderDidChangeNotification:(id)a3;
- (void)_handleKeyboardDidHideNotification:(id)a3;
- (void)_handleKeyboardWillHideNotification:(id)a3;
- (void)_handleLockButtonWasPressedNotification:(id)a3;
- (void)_handleRegisterZoomConflictNotification:(id)a3;
- (void)_handleZoomFocusDidChangeNotification:(id)a3;
- (void)_installZoomUISafeCategoriesIfNeeded;
- (void)_registerForAppNotifications;
- (void)_unregisterForAppNotifications;
- (void)_updateForCurrentZoomStatus;
- (void)dealloc;
@end

@implementation ZoomServicesUI

+ (void)enableZoomServices
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXProcessIsAXUIServer(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:82 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)disableZoomServices
{
  v2 = _SharedZoomServicesUI;
  _SharedZoomServicesUI = 0;
}

+ (CGPoint)_unMappedZoomPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (CGRectIsEmpty(*zoomFrame))
  {
    v5 = [getZoomServicesClass() sharedInstance];
    v6 = [MEMORY[0x29EDC7C40] mainScreen];
    v7 = [v6 displayIdentity];
    [v5 zoomFrameOnDisplay:{objc_msgSend(v7, "displayID")}];
    *zoomFrame = v8;
    *&zoomFrame[8] = v9;
    *&zoomFrame[16] = v10;
    *&zoomFrame[24] = v11;
  }

  v22.x = x;
  v22.y = y;
  if (CGRectContainsPoint(*zoomFrame, v22))
  {
    v12 = (x - *zoomFrame) / *&zoomFrame[16];
    v13 = (y - *&zoomFrame[8]) / *&zoomFrame[24];
    v14 = [MEMORY[0x29EDC7C40] mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;

    x = v12 * v16;
    y = v13 * v18;
  }

  v19 = x;
  v20 = y;
  result.y = v20;
  result.x = v19;
  return result;
}

+ (BOOL)_shouldUnmapPointsForFluidGestures
{
  if (_AXSZoomTouchEnabled())
  {
    v2 = [getZoomServicesClass() sharedInstance];
    v3 = [MEMORY[0x29EDC7C40] mainScreen];
    v4 = [v3 displayIdentity];
    v5 = [v2 activeZoomModeOnDisplay:{objc_msgSend(v4, "displayID")}];
    if ([v5 isEqualToString:*MEMORY[0x29EDBD620]] && (!soft_AXDeviceHasHomeButton() || soft_AXDeviceIsPad()))
    {
      v6 = !UIAccessibilityIsReduceMotionEnabled();
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

- (ZoomServicesUI)init
{
  v5.receiver = self;
  v5.super_class = ZoomServicesUI;
  v2 = [(ZoomServicesUI *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDBA068] defaultCenter];
    [v3 addObserver:v2 selector:sel__handleZoomEnabledStatusDidChangeNotification_ name:*MEMORY[0x29EDC8558] object:0];

    [(ZoomServicesUI *)v2 _updateForCurrentZoomStatus];
  }

  return v2;
}

- (void)dealloc
{
  [(ZoomServicesUI *)self _unregisterForAppNotifications];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ZoomServicesUI;
  [(ZoomServicesUI *)&v4 dealloc];
}

- (Class)_accessibilityBundlePrincipalClass
{
  v2 = AXSystemRootDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/System/Library/AccessibilityBundles"];
  v4 = [v3 stringByAppendingPathComponent:@"UIKit"];
  v5 = [v4 stringByAppendingPathExtension:@"axbundle"];

  v6 = [MEMORY[0x29EDB9F48] bundleWithPath:v5];
  v7 = [v6 principalClass];

  return v7;
}

- (void)_updateForCurrentZoomStatus
{
  if (_AXSZoomTouchEnabled())
  {
    [(ZoomServicesUI *)self _installZoomUISafeCategoriesIfNeeded];

    [(ZoomServicesUI *)self _registerForAppNotifications];
  }

  else
  {

    [(ZoomServicesUI *)self _unregisterForAppNotifications];
  }
}

- (void)_registerForAppNotifications
{
  if (![(ZoomServicesUI *)self isRegisteredForAppNotifications])
  {
    v3 = [MEMORY[0x29EDBA068] defaultCenter];
    [v3 addObserver:self selector:sel__handleRegisterZoomConflictNotification_ name:*MEMORY[0x29EDC7E90] object:0];
    [v3 addObserver:self selector:sel__handleZoomFocusDidChangeNotification_ name:*MEMORY[0x29EDC7E88] object:0];
    [v3 addObserver:self selector:sel__handleFirstResponderDidChangeNotification_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
    [v3 addObserver:self selector:sel__handleKeyboardWillShowNotification_ name:*MEMORY[0x29EDC81D8] object:0];
    [v3 addObserver:self selector:sel__handleKeyboardWillHideNotification_ name:*MEMORY[0x29EDC81D0] object:0];
    [v3 addObserver:self selector:sel__handleKeyboardDidHideNotification_ name:*MEMORY[0x29EDC8198] object:0];
    [v3 addObserver:self selector:sel__handleAlertWillAppearNotification_ name:@"ZoomUIAleartWillAppearNotification" object:0];
    if (soft_AXProcessIsSpringBoard())
    {
      [v3 addObserver:self selector:sel__handleLockButtonWasPressedNotification_ name:@"SBLockButtonPressedNotification" object:0];
      v4 = sel__handleAppSwitcherWillBeginRevealNotification_;
      v5 = @"SBUIAppSwitcherRevealedNotification";
    }

    else
    {
      [v3 addObserver:self selector:sel__handleAppDidBecomeActiveNotification_ name:*MEMORY[0x29EDC8010] object:0];
      v4 = sel__handleAppDidEnterBackgroundNotification_;
      v5 = *MEMORY[0x29EDC8018];
    }

    [v3 addObserver:self selector:v4 name:v5 object:0];
  }

  [(ZoomServicesUI *)self setRegisteredForAppNotifications:1];
}

- (void)_unregisterForAppNotifications
{
  if ([(ZoomServicesUI *)self isRegisteredForAppNotifications])
  {
    v3 = [MEMORY[0x29EDBA068] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x29EDC7E90] object:0];
    [v3 removeObserver:self name:*MEMORY[0x29EDC7E88] object:0];
    [v3 removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
    [v3 removeObserver:self name:*MEMORY[0x29EDC81D8] object:0];
    [v3 removeObserver:self name:*MEMORY[0x29EDC81D0] object:0];
    [v3 removeObserver:self name:@"ZoomUIAleartWillAppearNotification" object:0];
    if (soft_AXProcessIsSpringBoard())
    {
      [v3 removeObserver:self name:@"SBLockButtonPressedNotification" object:0];
      v4 = @"SBUIAppSwitcherRevealedNotification";
    }

    else
    {
      [v3 removeObserver:self name:*MEMORY[0x29EDC8010] object:0];
      v4 = *MEMORY[0x29EDC8018];
    }

    [v3 removeObserver:self name:v4 object:0];
  }

  [(ZoomServicesUI *)self setRegisteredForAppNotifications:0];
}

- (void)_installZoomUISafeCategoriesIfNeeded
{
  if (_installZoomUISafeCategoriesIfNeeded_onceToken != -1)
  {
    [ZoomServicesUI _installZoomUISafeCategoriesIfNeeded];
  }
}

void __54__ZoomServicesUI__installZoomUISafeCategoriesIfNeeded__block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXValidationManagerClass_softClass;
  v7 = getAXValidationManagerClass_softClass;
  if (!getAXValidationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAXValidationManagerClass_block_invoke;
    v3[3] = &unk_29F29A5F8;
    v3[4] = &v4;
    __getAXValidationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  v2 = [v0 sharedInstance];
  [v2 performValidations:&__block_literal_global_338 withPreValidationHandler:&__block_literal_global_524 postValidationHandler:&__block_literal_global_530 safeCategoryInstallationHandler:&__block_literal_global_533];
}

uint64_t __54__ZoomServicesUI__installZoomUISafeCategoriesIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"UIAlertController"];
  [v2 validateClass:@"_UIAlertControllerPhoneTVMacView" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [v2 validateClass:@"UIKeyShortcutHUDService" hasClassMethod:@"sharedHUDService" withFullSignature:{"@", 0}];
  [v2 validateClass:@"UIKeyShortcutHUDService" hasInstanceMethod:@"dismissOrCancelHUDPresentationIfNeeded" withFullSignature:{"v", 0}];
  [v2 validateClass:@"UIKeyShortcutHUDService" hasInstanceMethod:@"_requestHUDPresentationIfAllowedWithUnpreparedConfiguration:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"UIDragInteraction" hasInstanceMethod:@"_sessionHandedOffDragImage:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"UIDragInteraction" hasInstanceMethod:@"_sessionWillEnd:withOperation:" withFullSignature:{"v", "@", "Q", 0}];
  if (soft_AXProcessIsSpringBoard())
  {
    [v2 validateClass:@"SBDashBoardLockScreenEnvironment" hasInstanceMethod:@"finishUIUnlockFromSource:" withFullSignature:{"v", "i", 0}];
    [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilityActivationAnimationStartDelay" withFullSignature:{"d", 0}];
    [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilityActivationAnimationWillBegin" withFullSignature:{"v", 0}];
    [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilityDeactivationAnimationStartDelay" withFullSignature:{"d", 0}];
    [v2 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilityDeactivationAnimationWillBegin" withFullSignature:{"v", 0}];
    [v2 validateClass:@"SBReachabilitySettings" hasInstanceMethod:@"yOffsetFactor" withFullSignature:{"d", 0}];
    [v2 validateClass:@"SBReachabilitySettings" hasInstanceMethod:@"homeGestureSwipeDownHeight" withFullSignature:{"d", 0}];
    [v2 validateClass:@"SBBacklightController" hasInstanceMethod:@"_undimFromSource:" withFullSignature:{"v", "q", 0}];
    [v2 validateClass:@"UIPanGestureRecognizer" hasInstanceMethod:@"translationInView:" withFullSignature:{"{CGPoint=dd}", "@", 0}];
    [v2 validateClass:@"UIPanGestureRecognizer" hasInstanceMethod:@"locationInView:" withFullSignature:{"{CGPoint=dd}", "@", 0}];
    [v2 validateClass:@"UIPanGestureRecognizer" hasInstanceMethod:@"setTranslation:inView:" withFullSignature:{"v", "{CGPoint=dd}", "@", 0}];
    v3 = objc_opt_class();
    [v2 validateClass:@"UIPanGestureRecognizer" hasInstanceVariable:@"_lastSceneReferenceLocation" withType:soft___ax_verbose_encode_with_type_encoding_group_class(v3)];
    v4 = objc_opt_class();
    [v2 validateClass:@"UIPanGestureRecognizer" hasInstanceVariable:@"_firstSceneReferenceLocation" withType:soft___ax_verbose_encode_with_type_encoding_group_class(v4)];
    [v2 validateClass:@"SBFluidSwitcherScreenEdgePanGestureRecognizer" isKindOfClass:@"UIPanGestureRecognizer"];
    [v2 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"gestureRecognizer:shouldReceiveTouch:" withFullSignature:{"B", "@", "@", 0}];
    [v2 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"activateReachabilityGestureRecognizer" withFullSignature:{"@", 0}];
    [v2 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"reachabilitySettings" withFullSignature:{"@", 0}];
    [v2 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"switcherContentController" withFullSignature:{"@", 0}];
    [v2 validateClass:@"UIScreenEdgePanGestureRecognizer" isKindOfClass:@"UIPanGestureRecognizer"];
    [v2 validateClass:@"SBHomeGesturePanGestureRecognizer" isKindOfClass:@"UIScreenEdgePanGestureRecognizer"];
    [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"handleFluidSwitcherGestureManager:didBeginGesture:" withFullSignature:{"v", "@", "@", 0}];
    [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"handleFluidSwitcherGestureManager:didEndGesture:" withFullSignature:{"v", "@", "@", 0}];
    [v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
    [v2 validateClass:@"SBChainableModifier" hasInstanceMethod:@"enumerateChildModifiersWithBlock:" withFullSignature:{"v", "@?", 0}];
    [v2 validateClass:@"SBHomeGestureSwitcherModifier" isKindOfClass:@"SBChainableModifier"];
    [v2 validateClass:@"SBHomeGestureRootSwitcherModifier" isKindOfClass:@"SBChainableModifier"];
    [v2 validateClass:@"SBFluidSwitcherRootSwitcherModifier" isKindOfClass:@"SBChainableModifier"];
    [v2 validateClass:@"SBSwitcherModifier" isKindOfClass:@"SBChainableModifier"];
    [v2 validateClass:@"SBHomeGestureSwitcherModifier" hasInstanceMethod:@"currentFinalDestination" withFullSignature:{"q", 0}];
    [v2 validateClass:@"SBHomeGestureDockSwitcherModifier" hasInstanceMethod:@"_shouldPresentDockForFinalDestination:" withFullSignature:{"B", "q", 0}];
    [v2 validateClass:@"SBHomeGestureSwitcherModifier" hasInstanceVariable:@"_dockModifier" withType:"SBHomeGestureDockSwitcherModifier"];
    [v2 validateClass:@"UITouch" hasInstanceMethod:@"locationInView:" withFullSignature:{"{CGPoint=dd}", "@", 0}];
    [v2 validateClass:@"UIGestureRecognizer" hasInstanceMethod:@"touchesBegan:withEvent:" withFullSignature:{"v", "@", "@", 0}];
    [v2 validateClass:@"UIGestureRecognizer" hasInstanceMethod:@"touchesEnded:withEvent:" withFullSignature:{"v", "@", "@", 0}];
    [v2 validateClass:@"SBReachabilityGestureRecognizer" isKindOfClass:@"UIGestureRecognizer"];
  }

  else if (soft_AXProcessIsInCallService())
  {
    [v2 validateClass:@"PHSOSViewController" hasInstanceMethod:@"presentMedicalID" withFullSignature:{"v", 0}];
  }

  return 1;
}

uint64_t __54__ZoomServicesUI__installZoomUISafeCategoriesIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Zoom UI"];
  [v2 setOverrideProcessName:@"Zoom UI"];
  [v2 setDebugBuild:0];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getAXPerformValidationChecksSymbolLoc_ptr;
  v10 = getAXPerformValidationChecksSymbolLoc_ptr;
  if (!getAXPerformValidationChecksSymbolLoc_ptr)
  {
    v4 = AccessibilityUtilitiesLibrary();
    v8[3] = dlsym(v4, "AXPerformValidationChecks");
    getAXPerformValidationChecksSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    __54__ZoomServicesUI__installZoomUISafeCategoriesIfNeeded__block_invoke_3_cold_1();
  }

  v5 = v3();

  return v5;
}

void __54__ZoomServicesUI__installZoomUISafeCategoriesIfNeeded__block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 installSafeCategory:@"ZoomUI_UIAlertControllerOverride" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"ZoomUI_UIKeyShortcutHUDServiceOverride" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"ZoomUI_UIDragInteraction" canInteractWithTargetClass:1];
  if (soft_AXProcessIsSpringBoard())
  {
    v2 = [getZoomServicesClass() sharedInstance];
    [v2 registerInterestInZoomAttributes];

    [v4 installSafeCategory:@"ZoomUI_SpringBoardOverride" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"ZoomUI_SBDashBoardLockScreenEnvironmentOverride" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"ZoomUI_SBReachabilitySettingsOverride" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"ZoomUI_SBBacklightController" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"ZoomUI_SBFluidSwitcherScreenEdgePanGestureRecognizer" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"ZoomUI_SBFluidSwitcherViewController" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"ZoomUI_SBFluidSwitcherGestureManager" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"ZoomUI_SBHomeGesturePanGestureRecognizer" canInteractWithTargetClass:1];
    [v4 installSafeCategory:@"ZoomUI_SBReachabilityGestureRecognizer" canInteractWithTargetClass:1];
    v3 = @"ZoomUI_UITouchReachabilityOverride";
  }

  else
  {
    if (!soft_AXProcessIsInCallService())
    {
      goto LABEL_6;
    }

    v3 = @"ZoomUI_PHSOSViewController";
  }

  [v4 installSafeCategory:v3 canInteractWithTargetClass:1];
LABEL_6:
}

- (CGRect)_keyboardFrameInScreenCoordinates
{
  if (soft_AXUIKeyboardIsOnScreen())
  {
    soft_AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = soft_AXUIKeyboardWindow();
    [v10 _convertRectToSceneReferenceSpace:{v3, v5, v7, v9}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x29EDB90D8];
    v14 = *(MEMORY[0x29EDB90D8] + 8);
    v16 = *(MEMORY[0x29EDB90D8] + 16);
    v18 = *(MEMORY[0x29EDB90D8] + 24);
  }

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_handleFirstResponderDidChangeNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 conformsToProtocol:&unk_2A20EA250];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __61__ZoomServicesUI__handleFirstResponderDidChangeNotification___block_invoke;
    v12[3] = &unk_29F29A4B8;
    v14 = v5;
    v13 = v4;
    v6 = MEMORY[0x29C2C7050](v12);
    if (v5)
    {
      v7 = 200000000;
    }

    else
    {
      v7 = 0;
    }

    v8 = dispatch_time(0, v7);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __61__ZoomServicesUI__handleFirstResponderDidChangeNotification___block_invoke_2;
    block[3] = &unk_29F29A4E0;
    v11 = v6;
    v9 = v6;
    dispatch_after(v8, MEMORY[0x29EDCA578], block);
  }
}

void __61__ZoomServicesUI__handleFirstResponderDidChangeNotification___block_invoke(uint64_t a1)
{
  if (soft_AXUIKeyboardIsOnScreen())
  {
    v2 = *MEMORY[0x29EDB90E0];
    v3 = *(MEMORY[0x29EDB90E0] + 8);
    v5 = *(MEMORY[0x29EDB90E0] + 16);
    v4 = *(MEMORY[0x29EDB90E0] + 24);
    if (*(a1 + 40) == 1)
    {
      v6 = *(a1 + 32);
      v7 = [v6 endOfDocument];
      if (v7)
      {
        [v6 caretRectForPosition:v7];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v16 = [*(a1 + 32) window];
        [v16 convertRect:*(a1 + 32) fromView:{v9, v11, v13, v15}];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v25 = [*(a1 + 32) window];
        [v25 convertRect:0 toWindow:{v18, v20, v22, v24}];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v34 = [*(a1 + 32) window];
        v2 = soft_AXUIConvertRectFromScreenToContextSpace(v34, v27, v29, v31, v33);
        v3 = v35;
        v5 = v36;
        v4 = v37;
      }
    }

    v75.origin.x = v2;
    v75.origin.y = v3;
    v75.size.width = v5;
    v75.size.height = v4;
    if (CGRectIsEmpty(v75))
    {
      [*(a1 + 32) bounds];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = [*(a1 + 32) window];
      [v46 convertRect:*(a1 + 32) fromView:{v39, v41, v43, v45}];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v55 = [*(a1 + 32) window];
      [v55 convertRect:0 toWindow:{v48, v50, v52, v54}];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;

      v64 = [*(a1 + 32) window];
      v2 = soft_AXUIConvertRectFromScreenToContextSpace(v64, v57, v59, v61, v63);
      v3 = v65;
      v5 = v66;
      v4 = v67;
    }

    v73 = [getZoomServicesClass() sharedInstance];
    v68 = [*(a1 + 32) window];
    v69 = [v68 _contextId];
    v70 = [*(a1 + 32) window];
    v71 = [v70 screen];
    v72 = [v71 displayIdentity];
    [v73 notifyZoomFocusDidChangeWithType:6 rect:v69 contextId:objc_msgSend(v72 displayId:{"displayID"), v2, v3, v5, v4}];
  }
}

- (void)_handleZoomFocusDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"type"];
  v7 = [v6 integerValue];

  if ((v7 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKey:@"frame"];
    NSRectFromString(v9);

    v10 = [v4 userInfo];
    v11 = [v10 objectForKey:@"window"];

    if (v7)
    {
      v12 = *MEMORY[0x29EDB90D8];
      v13 = *(MEMORY[0x29EDB90D8] + 8);
      v14 = *(MEMORY[0x29EDB90D8] + 16);
      v15 = *(MEMORY[0x29EDB90D8] + 24);
    }

    else
    {
      [(ZoomServicesUI *)self _keyboardFrameInScreenCoordinates];
      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;
    }

    v20 = v4;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v21 = getAXUIRectForZoomFocusChangeNotificationSymbolLoc_ptr;
    v37 = getAXUIRectForZoomFocusChangeNotificationSymbolLoc_ptr;
    if (!getAXUIRectForZoomFocusChangeNotificationSymbolLoc_ptr)
    {
      v22 = AccessibilityUIUtilitiesLibrary();
      v35[3] = dlsym(v22, "AXUIRectForZoomFocusChangeNotification");
      getAXUIRectForZoomFocusChangeNotificationSymbolLoc_ptr = v35[3];
      v21 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (!v21)
    {
      [ZoomServicesUI _handleZoomFocusDidChangeNotification:];
    }

    v23 = v21(v20);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [getZoomServicesClass() sharedInstance];
    v31 = [v11 _contextId];
    v32 = [v11 screen];
    v33 = [v32 displayIdentity];
    [v30 notifyZoomFocusDidChangeWithType:v7 rect:v31 contextId:objc_msgSend(v33 keyboardFrame:"displayID") displayId:{v23, v25, v27, v29, v12, v13, v14, v15}];
  }
}

- (void)_handleRegisterZoomConflictNotification:(id)a3
{
  v5 = [a3 userInfo];
  v3 = [getAXBackBoardServerClass() server];
  [v3 registerGestureConflictWithZoom:v5];

  v4 = [getAXBackBoardServerClass() server];
  [v4 registerGestureConflictWithZoom:v5];
}

void __54__ZoomServicesUI__handleKeyboardWillShowNotification___block_invoke()
{
  if (soft_AXUIKeyboardIsOnScreen())
  {
    v0 = soft_AXUIKeyboardWindow();
    soft_AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside();
    [v0 _convertRectToSceneReferenceSpace:?];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;

    v15 = [getZoomServicesClass() sharedInstance];
    v9 = [MEMORY[0x29EDB9F48] mainBundle];
    v10 = [v9 bundleIdentifier];
    v11 = soft_AXUIKeyboardWindow();
    v12 = [v11 screen];
    v13 = [v12 displayIdentity];
    [v15 notifyZoomKeyboardWillBecomeVisibleWithFrame:v10 inAppWithBundleID:objc_msgSend(v13 displayID:{"displayID"), v2, v4, v6, v8}];
  }

  else
  {
    v14 = ZOOMLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __54__ZoomServicesUI__handleKeyboardWillShowNotification___block_invoke_cold_1(v14);
    }
  }
}

- (void)_handleKeyboardWillHideNotification:(id)a3
{
  v3 = [MEMORY[0x29EDC7AF8] activeKeyboard];

  if (v3)
  {
    v11 = [getZoomServicesClass() sharedInstance];
    v4 = [MEMORY[0x29EDB9F48] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [MEMORY[0x29EDC7AF8] activeKeyboard];
    v7 = [v6 window];
    v8 = [v7 screen];
    v9 = [v8 displayIdentity];
    [v11 notifyZoomKeyboardWillHideInAppWithBundleID:v5 displayID:{objc_msgSend(v9, "displayID")}];
  }

  else
  {
    v10 = ZOOMLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ZoomServicesUI _handleKeyboardWillHideNotification:v10];
    }
  }
}

- (void)_handleKeyboardDidHideNotification:(id)a3
{
  v3 = [MEMORY[0x29EDC7AF8] activeKeyboard];

  if (v3)
  {
    v11 = [getZoomServicesClass() sharedInstance];
    v4 = [MEMORY[0x29EDB9F48] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [MEMORY[0x29EDC7AF8] activeKeyboard];
    v7 = [v6 window];
    v8 = [v7 screen];
    v9 = [v8 displayIdentity];
    [v11 notifyZoomKeyboardDidHideInAppWithBundleID:v5 displayID:{objc_msgSend(v9, "displayID")}];
  }

  else
  {
    v10 = ZOOMLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ZoomServicesUI _handleKeyboardDidHideNotification:v10];
    }
  }
}

- (void)_handleAlertWillAppearNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"frame"];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v3 userInfo];

  v15 = [v14 objectForKey:@"contextId"];
  v16 = [v15 unsignedIntValue];

  v17 = [getZoomServicesClass() sharedInstance];
  [v17 notifyZoomFocusDidChangeWithType:7 rect:v16 contextId:0 displayId:{v7, v9, v11, v13}];
}

- (void)_handleLockButtonWasPressedNotification:(id)a3
{
  v3 = [getZoomServicesClass() sharedInstance];
  [v3 notifyZoomLockButtonWasPressed];
}

- (void)_handleAppSwitcherWillBeginRevealNotification:(id)a3
{
  v3 = [getZoomServicesClass() sharedInstance];
  [v3 notifyZoomAppSwitcherRevealAnimationWillBegin];
}

void __56__ZoomServicesUI__handleAppDidBecomeActiveNotification___block_invoke()
{
  if (soft_AXUIKeyboardIsOnScreen())
  {
    soft_AXUIKeyboardScreenFrameExcludingInputAccessoryIfFirstResponderInside();
    v1 = v0;
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v8 = soft_AXUIKeyboardWindow();
    [v8 _convertRectToSceneReferenceSpace:{v1, v3, v5, v7}];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x29EDB90D8];
    v12 = *(MEMORY[0x29EDB90D8] + 8);
    v14 = *(MEMORY[0x29EDB90D8] + 16);
    v16 = *(MEMORY[0x29EDB90D8] + 24);
  }

  v19 = [getZoomServicesClass() sharedInstance];
  v17 = [MEMORY[0x29EDB9F48] mainBundle];
  v18 = [v17 bundleIdentifier];
  [v19 notifyZoomAppDidBecomeActive:v18 keyboardFrameIfVisible:{v10, v12, v14, v16}];
}

- (void)_handleAppDidEnterBackgroundNotification:(id)a3
{
  v5 = [getZoomServicesClass() sharedInstance];
  v3 = [MEMORY[0x29EDB9F48] mainBundle];
  v4 = [v3 bundleIdentifier];
  [v5 notifyZoomAppDidEnterBackground:v4];
}

void __54__ZoomServicesUI__installZoomUISafeCategoriesIfNeeded__block_invoke_3_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"BOOL soft_AXPerformValidationChecks(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:71 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_handleZoomFocusDidChangeNotification:.cold.1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"CGRect soft_AXUIRectForZoomFocusChangeNotification(NSNotification *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"AXSettingsLoaderSoftLinkages.h" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

@end