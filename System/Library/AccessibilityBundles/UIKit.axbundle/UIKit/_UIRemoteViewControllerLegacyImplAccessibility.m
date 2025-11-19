@interface _UIRemoteViewControllerLegacyImplAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axShouldTakeBackFocus;
- (id)_accessibilityResponderElement;
- (id)disconnect;
- (void)__handleFocusMovementAction:(id)a3;
- (void)__setViewServiceIsDisplayingPopover:(BOOL)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityLoadAccessibilityInformation:(double)a3 retryTime:;
- (void)_accessibilityLoadAccessibilityInformation:(void *)a1;
- (void)_accessibilityRemoteView:(id)a3 pid:(int)a4 machPort:(unsigned int)a5;
- (void)_awakeWithConnectionInfo:(id)a3;
- (void)_axRemoteViewLoadRequest:(id)a3;
- (void)_axSetMachPortRetrievalTimer:(id)a3;
- (void)_axTakeBakeFocusWithHeading:(id)a3;
@end

@implementation _UIRemoteViewControllerLegacyImplAccessibility

- (void)_axSetMachPortRetrievalTimer:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v12 = location;
  v11 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"_UIRemoteViewControllerLegacyImpl";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v3 = "_UITextEffectsRemoteView";
  [location[0] validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceVariable:@"_textEffectsAboveStatusBarRemoteView" withType:?];
  [location[0] validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceVariable:@"_fullScreenTextEffectsRemoteView" withType:"_UITextEffectsRemoteView"];
  [location[0] validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceVariable:@"_remoteKeyboardRemoteView" withType:"_UITextEffectsRemoteView"];
  [location[0] validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceVariable:@"_sizeTrackingView" withType:"_UISizeTrackingView"];
  v7 = "@";
  [location[0] validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceVariable:@"_viewControllerOperatorProxy" withType:?];
  v10 = "v";
  [location[0] validateClass:@"_UIRemoteViewControllerLegacyImpl" hasInstanceMethod:@"_initializeAccessibilityPortInformation" withFullSignature:0];
  v8 = "B";
  [location[0] validateClass:v4 hasInstanceMethod:@"__setViewServiceIsDisplayingPopover:" withFullSignature:{v10, "B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"__handleFocusMovementAction:" withFullSignature:{v10, v7, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_setWantsKeyboardEnvironmentEventDeferring:" withFullSignature:{v10, v8, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"disconnect" withFullSignature:{v7, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"serviceProcessIdentifier" withFullSignature:{"i", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_awakeWithConnectionInfo:" withFullSignature:{v10, v7, 0}];
  v5 = @"_UIRemoteViewControllerImpl";
  [location[0] validateClass:v4 conformsToProtocol:?];
  [location[0] validateProtocol:v5 hasRequiredInstanceMethod:@"_owningRemoteViewController"];
  v6 = @"UIViewController";
  [location[0] validateClass:@"_UIRemoteViewController" isKindOfClass:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"navigationController" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasClassMethod:@"_isViewSizeFullScreen:inWindow:" withFullSignature:{v8, v7, v7, 0}];
  [location[0] validateClass:@"_UIRemoteViewAccessibility" hasInstanceMethod:@"_accessibilityUnregisterRemoteView" withFullSignature:{v10, 0}];
  [location[0] validateClass:@"UIScreen" hasInstanceMethod:@"_focusSystem" withFullSignature:{v7, 0}];
  v9 = @"UIFocusSystem";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v9 hasInstanceMethod:@"_setEnabled:" withFullSignature:{v10, v8, 0}];
  objc_storeStrong(v12, v11);
}

- (id)_accessibilityResponderElement
{
  v35 = *MEMORY[0x29EDCA608];
  v32 = self;
  v31[1] = a2;
  v31[0] = [MEMORY[0x29EDB8DE8] array];
  v15 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v32 safeValueForKey:@"_sizeTrackingView"];
  v14 = [v15 subviews];
  [v31[0] axSafelyAddObjectsFromArray:?];
  MEMORY[0x29EDC9740](v14);
  v16 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v32 safeValueForKey:@"_remoteKeyboardRemoteView", MEMORY[0x29EDC9740](v15).n128_f64[0]];
  [v31[0] axSafelyAddObject:?];
  v17 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v32 safeValueForKey:@"_fullScreenTextEffectsRemoteView", MEMORY[0x29EDC9740](v16).n128_f64[0]];
  [v31[0] axSafelyAddObject:?];
  v18 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v32 safeValueForKey:@"_textEffectsAboveStatusBarRemoteView", MEMORY[0x29EDC9740](v17).n128_f64[0]];
  [v31[0] axSafelyAddObject:?];
  MEMORY[0x29EDC9740](v18);
  v30 = 0;
  v28 = 0;
  objc_opt_class();
  v19 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v32 safeValueForKey:@"_owningRemoteViewController"];
  v27 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v19);
  v26 = MEMORY[0x29EDC9748](v27);
  objc_storeStrong(&v27, 0);
  v29 = v26;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v31[0]);
  v13 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(__b[1] + 8 * v10);
      v23 = [v25 _accessibilityResponderElement];
      if (v23)
      {
        v33 = MEMORY[0x29EDC9748](v23);
        v22 = 1;
      }

      else
      {
        if (([v29 isFirstResponder] & 1) != 0 && !v30)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = [v25 accessibilityElements];
            v2 = [v7 firstObject];
            v3 = v30;
            v30 = v2;
            MEMORY[0x29EDC9740](v3);
            MEMORY[0x29EDC9740](v7);
          }
        }

        v22 = 0;
      }

      objc_storeStrong(&v23, 0);
      if (v22)
      {
        break;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
        if (!v11)
        {
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
LABEL_15:
    v22 = 0;
  }

  *&v4 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  if (!v22)
  {
    v20.receiver = v32;
    v20.super_class = _UIRemoteViewControllerLegacyImplAccessibility;
    v21 = [(_UIRemoteViewControllerLegacyImplAccessibility *)&v20 _accessibilityResponderElement];
    if (v21)
    {
      v33 = MEMORY[0x29EDC9748](v21);
    }

    else
    {
      v33 = MEMORY[0x29EDC9748](v30);
    }

    v22 = 1;
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(v31, 0);
  v5 = v33;

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIRemoteViewControllerLegacyImplAccessibility;
  [(_UIRemoteViewControllerLegacyImplAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UIRemoteViewControllerLegacyImplAccessibility *)v4 _accessibilityLoadAccessibilityInformation:?];
}

- (void)_accessibilityLoadAccessibilityInformation:(void *)a1
{
  if (a1)
  {
    [(_UIRemoteViewControllerLegacyImplAccessibility *)a1 _accessibilityLoadAccessibilityInformation:0.1 retryTime:?];
  }
}

- (void)_axRemoteViewLoadRequest:(id)a3
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = AXLogRemoteElement();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v6, v5);
    _os_log_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_INFO, "%@: will load remote view on request", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(_UIRemoteViewControllerLegacyImplAccessibility *)v5 _accessibilityLoadAccessibilityInformation:?];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation:(double)a3 retryTime:
{
  v76 = *MEMORY[0x29EDCA608];
  v71 = a1;
  v70 = a2;
  v69 = a3;
  if (a1)
  {
    if (([v71 _accessibilityBoolValueForKey:@"AXDidListenForRemoteViewLoad"] & 1) == 0)
    {
      v27 = [MEMORY[0x29EDBA068] defaultCenter];
      [v27 addObserver:v71 selector:sel__axRemoteViewLoadRequest_ name:@"AXRequestRemoteViewLoad" object:0];
      [v71 _accessibilitySetBoolValue:1 forKey:{@"AXDidListenForRemoteViewLoad", MEMORY[0x29EDC9740](v27).n128_f64[0]}];
    }

    if (_AXSApplicationAccessibilityEnabled())
    {
      v25 = [v71 safeValueForKey:@"_serviceAccessibilityServerPort"];
      v26 = [v25 intValue];
      *&v3 = MEMORY[0x29EDC9740](v25).n128_u64[0];
      v66 = v26;
      if (v26)
      {
        v53 = 0;
        v54 = &v53;
        v55 = 0x20000000;
        v56 = 32;
        v14 = [v71 safeValueForKey:{@"serviceProcessIdentifier", v3}];
        v15 = [v14 intValue];
        MEMORY[0x29EDC9740](v14);
        v57 = v15;
        if (!*(v54 + 6))
        {
          v47[0] = 0;
          v47[1] = v47;
          v48 = 838860800;
          v49 = 48;
          v50 = __Block_byref_object_copy__19;
          v51 = __Block_byref_object_dispose__19;
          v52 = 0;
          v41 = MEMORY[0x29EDCA5F8];
          v42 = -1073741824;
          v43 = 0;
          v44 = __103___UIRemoteViewControllerLegacyImplAccessibility__accessibilityLoadAccessibilityInformation_retryTime___block_invoke_416;
          v45 = &unk_29F30CC70;
          v46[1] = v47;
          v46[0] = MEMORY[0x29EDC9748](v71);
          AXPerformSafeBlock();
          v34[1] = MEMORY[0x29EDCA5F8];
          v35 = -1073741824;
          v36 = 0;
          v37 = __103___UIRemoteViewControllerLegacyImplAccessibility__accessibilityLoadAccessibilityInformation_retryTime___block_invoke_2;
          v38 = &unk_29F30DA28;
          v39 = v47;
          v40 = &v53;
          AXPerformSafeBlock();
          objc_storeStrong(v46, 0);
          _Block_object_dispose(v47, 8);
          objc_storeStrong(&v52, 0);
        }

        v34[0] = AXLogRemoteElement();
        v33 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v34[0], OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_3_8_64_4_0_4_0(v73, v71, v66, *(v54 + 6));
          _os_log_impl(&dword_29C4D6000, v34[0], v33, "%@: loading ax info - mach port %d, remote pid %d", v73, 0x18u);
        }

        objc_storeStrong(v34, 0);
        memset(__b, 0, sizeof(__b));
        v13 = [v71 safeValueForKey:@"_sizeTrackingView"];
        obj = [v13 subviews];
        v11 = [obj countByEnumeratingWithState:__b objects:v72 count:{16, MEMORY[0x29EDC9740](v13).n128_f64[0]}];
        if (v11)
        {
          v8 = *__b[2];
          v9 = 0;
          v10 = v11;
          while (1)
          {
            v7 = v9;
            if (*__b[2] != v8)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(__b[1] + 8 * v9);
            [v71 _accessibilityRemoteView:v32 pid:*(v54 + 6) machPort:v66];
            ++v9;
            if (v7 + 1 >= v10)
            {
              v9 = 0;
              v10 = [obj countByEnumeratingWithState:__b objects:v72 count:16];
              if (!v10)
              {
                break;
              }
            }
          }
        }

        *&v6 = MEMORY[0x29EDC9740](obj).n128_u64[0];
        v30 = [v71 safeValueForKey:{@"_remoteKeyboardRemoteView", v6}];
        [v71 _accessibilityRemoteView:v30 pid:*(v54 + 6) machPort:v66];
        v29 = [v71 safeValueForKey:@"_fullScreenTextEffectsRemoteView"];
        [v71 _accessibilityRemoteView:v29 pid:*(v54 + 6) machPort:v66];
        v28 = [v71 safeValueForKey:@"_textEffectsAboveStatusBarRemoteView"];
        [v71 _accessibilityRemoteView:v28 pid:*(v54 + 6) machPort:v66];
        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        _Block_object_dispose(&v53, 8);
      }

      else
      {
        v4 = [v71 safeValueForKey:{@"_initializeAccessibilityPortInformation", v3}];
        v24 = [v71 _axMachPortRetrievalTimer];
        MEMORY[0x29EDC9740](v24);
        if (!v24)
        {
          v23 = objc_alloc(MEMORY[0x29EDBD6A0]);
          v5 = MEMORY[0x29EDCA578];
          v21 = MEMORY[0x29EDCA578];
          v22 = [v23 initWithTargetSerialQueue:?];
          [v71 _axSetMachPortRetrievalTimer:v22];
          MEMORY[0x29EDC9740](v22);
          v20 = [v71 _axMachPortRetrievalTimer];
          [v20 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
          MEMORY[0x29EDC9740](v20);
        }

        v65[1] = COERCE_OS_LOG_T(5.0);
        v18 = [v71 _axMachPortRetrievalTimer];
        v19 = [v18 isPending];
        MEMORY[0x29EDC9740](v18);
        if ((v19 & 1) == 0)
        {
          v65[0] = AXLogRemoteElement();
          v64 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v65[0], OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_2_8_64_8_0(v74, v71, *&v69);
            _os_log_impl(&dword_29C4D6000, v65[0], v64, "%@: could not get mach_port - will try again in %f", v74, 0x16u);
          }

          objc_storeStrong(v65, 0);
          v17 = [v71 _axMachPortRetrievalTimer];
          v16 = v69;
          v58 = MEMORY[0x29EDCA5F8];
          v59 = -1073741824;
          v60 = 0;
          v61 = __103___UIRemoteViewControllerLegacyImplAccessibility__accessibilityLoadAccessibilityInformation_retryTime___block_invoke;
          v62 = &unk_29F30C690;
          v63[0] = MEMORY[0x29EDC9748](v71);
          v63[1] = *&v69;
          [v17 afterDelay:&v58 processBlock:v16];
          MEMORY[0x29EDC9740](v17);
          objc_storeStrong(v63, 0);
        }
      }
    }

    else
    {
      oslog = AXLogRemoteElement();
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v75, v71);
        _os_log_impl(&dword_29C4D6000, oslog, type, "%@: not processing because AX is off", v75, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }
}

- (void)_accessibilityRemoteView:(id)a3 pid:(int)a4 machPort:(unsigned int)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsSafeCategory();
    [_UIRemoteViewAccessibility _accessibilitySetRemoteMachPort:v5];
    MEMORY[0x29EDC9740](v5);
    objc_opt_class();
    v6 = __UIAccessibilityCastAsSafeCategory();
    [_UIRemoteViewAccessibility _accessibilitySetRemoteViewPid:v6];
    MEMORY[0x29EDC9740](v6);
    objc_opt_class();
    v7 = __UIAccessibilityCastAsSafeCategory();
    [(_UIRemoteViewAccessibility *)v7 _accessibilitySetRemoteElementIfNecessary];
    MEMORY[0x29EDC9740](v7);
  }

  objc_storeStrong(location, 0);
}

- (void)_awakeWithConnectionInfo:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = _UIRemoteViewControllerLegacyImplAccessibility;
  [(_UIRemoteViewControllerLegacyImplAccessibility *)&v3 _awakeWithConnectionInfo:location[0]];
  [(_UIRemoteViewControllerLegacyImplAccessibility *)v5 _accessibilityLoadAccessibilityInformation:?];
  objc_storeStrong(location, 0);
}

- (void)__setViewServiceIsDisplayingPopover:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = _UIRemoteViewControllerLegacyImplAccessibility;
  [(_UIRemoteViewControllerLegacyImplAccessibility *)&v9 __setViewServiceIsDisplayingPopover:a3];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __86___UIRemoteViewControllerLegacyImplAccessibility___setViewServiceIsDisplayingPopover___block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](v12);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v8, 0);
}

- (id)disconnect
{
  v11 = self;
  v10[1] = a2;
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __60___UIRemoteViewControllerLegacyImplAccessibility_disconnect__block_invoke;
  v9 = &unk_29F30C7C8;
  v10[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  v4.receiver = v11;
  v4.super_class = _UIRemoteViewControllerLegacyImplAccessibility;
  v3 = [(_UIRemoteViewControllerLegacyImplAccessibility *)&v4 disconnect];
  objc_storeStrong(v10, 0);

  return v3;
}

- (void)__handleFocusMovementAction:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17.receiver = v19;
  v17.super_class = _UIRemoteViewControllerLegacyImplAccessibility;
  [(_UIRemoteViewControllerLegacyImplAccessibility *)&v17 __handleFocusMovementAction:location[0]];
  v15 = 0;
  objc_opt_class();
  v10 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v19 safeValueForKey:@"_owningRemoteViewController"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v10);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16 = v13;
  v8 = [v13 view];
  v9 = [v8 _accessibilityIsFKARunningForFocusItem];
  MEMORY[0x29EDC9740](v8);
  if ((v9 & 1) != 0 && location[0] && [(_UIRemoteViewControllerLegacyImplAccessibility *)v19 _axShouldTakeBackFocus])
  {
    v4 = MEMORY[0x29EDC7AA0];
    v5 = [v16 view];
    v12 = [v4 focusSystemForEnvironment:?];
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    -[_UIRemoteViewControllerLegacyImplAccessibility _axSetWasFocusEnabled:](v19, "_axSetWasFocusEnabled:", [v12 safeBoolForKey:{@"_isEnabled", v3}]);
    v11 = MEMORY[0x29EDC9748](v12);
    AXPerformSafeBlock();
    v6 = v19;
    v7 = [location[0] focusMovementInfo];
    [(_UIRemoteViewControllerLegacyImplAccessibility *)v6 _axTakeBakeFocusWithHeading:?];
    MEMORY[0x29EDC9740](v7);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_axShouldTakeBackFocus
{
  v13 = a1;
  if (a1)
  {
    v11 = 0;
    objc_opt_class();
    v5 = [v13 safeValueForKey:@"_owningRemoteViewController"];
    v10 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v5);
    v9 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    v12 = v9;
    v8 = [v9 view];
    v2 = MEMORY[0x29EDC7DA8];
    v3 = [v8 window];
    v6 = 0;
    v4 = 1;
    if ([v2 _isViewSizeFullScreen:v8 inWindow:?])
    {
      v7 = [v12 navigationController];
      v6 = 1;
      v4 = v7 != 0;
    }

    v14 = v4;
    if (v6)
    {
      MEMORY[0x29EDC9740](v7);
    }

    MEMORY[0x29EDC9740](v3);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    return 0;
  }

  return v14;
}

- (void)_axTakeBakeFocusWithHeading:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v31 safeValueForKey:@"_sizeTrackingView"];
  _UIAXAssignFocusToItem();
  MEMORY[0x29EDC9740](v10);
  v27[1] = MEMORY[0x29EDCA5F8];
  v27[2] = 3221225472;
  v27[3] = __78___UIRemoteViewControllerLegacyImplAccessibility__axTakeBakeFocusWithHeading___block_invoke;
  v27[4] = &unk_29F30C888;
  v28 = MEMORY[0x29EDC9748](v31);
  v29 = MEMORY[0x29EDC9748](location[0]);
  AXPerformSafeBlock();
  v26 = 0;
  objc_opt_class();
  v11 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v31 safeValueForKey:@"_owningRemoteViewController"];
  v25 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v11);
  v24 = MEMORY[0x29EDC9748](v25);
  objc_storeStrong(&v25, 0);
  v27[0] = v24;
  v7 = [v24 view];
  v6 = [v7 window];
  v5 = [v6 windowScene];
  v4 = [v5 focusSystem];
  v9 = [v4 focusedItem];
  v8 = [(_UIRemoteViewControllerLegacyImplAccessibility *)v31 safeValueForKey:@"_sizeTrackingView"];
  MEMORY[0x29EDC9740](v8);
  MEMORY[0x29EDC9740](v9);
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v9 == v8)
  {
    v23 = 0;
    if ([location[0] heading] == 16)
    {
      v23 = 256;
    }

    else if ([location[0] heading] == 32)
    {
      v23 = 512;
    }

    if (v23)
    {
      v17[1] = MEMORY[0x29EDCA5F8];
      v18 = -1073741824;
      v19 = 0;
      v20 = __78___UIRemoteViewControllerLegacyImplAccessibility__axTakeBakeFocusWithHeading___block_invoke_2;
      v21 = &unk_29F30C690;
      v22[0] = MEMORY[0x29EDC9748](location[0]);
      v22[1] = v23;
      AXPerformSafeBlock();
      [(_UIRemoteViewControllerLegacyImplAccessibility *)v31 _axTakeBakeFocusWithHeading:location[0]];
      objc_storeStrong(v22, 0);
    }

    else if (![(_UIRemoteViewControllerLegacyImplAccessibility *)v31 _axGetWasFocusEnabled])
    {
      v12[1] = MEMORY[0x29EDCA5F8];
      v13 = -1073741824;
      v14 = 0;
      v15 = __78___UIRemoteViewControllerLegacyImplAccessibility__axTakeBakeFocusWithHeading___block_invoke_3;
      v16 = &unk_29F30C7C8;
      v17[0] = MEMORY[0x29EDC9748](v27[0]);
      AXPerformSafeBlock();
      objc_storeStrong(v17, 0);
    }
  }

  else
  {
    v12[0] = MEMORY[0x29EDC9748](v31);
    AXPerformSafeBlock();
    objc_storeStrong(v12, 0);
  }

  objc_storeStrong(v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

@end