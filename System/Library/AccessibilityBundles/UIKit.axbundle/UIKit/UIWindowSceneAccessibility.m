@interface UIWindowSceneAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityFocusContainerMoveFocusWithHeading:(unint64_t)a3 toElementMatchingQuery:(id)a4;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)_accessibilityMoveAppFocusForElementMatchingQuery:(id)a3 heading:(unint64_t)a4;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 byGroup:(BOOL)a4;
- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 toElementMatchingQuery:(id)a4;
- (BOOL)_accessibilityResetAndClearNativeFocusSystem;
- (BOOL)_accessibilitySafeMoveInDirection:(unint64_t)a3 byGroup:(BOOL)a4 withSearchInfo:(id)a5;
- (CGRect)accessibilityFrame;
- (id)_accessibilityFBSceneIdentifier;
- (id)_accessibilityFocusSystem;
- (id)_accessibilityLeadingMultitaskingElements;
- (id)_accessibilityNativeFocusElement;
- (id)_accessibilityNativeFocusableElements:(id)a3 withQueryString:(id)a4;
- (id)_accessibilityTrailingMultitaskingElements;
- (id)_axCreateLeadingRemoteElementsIfNecessary;
- (id)_axCreateTrailingRemoteElementsIfNecessary;
- (uint64_t)_accessibilityUpdateNativeFocusImmediately;
- (unsigned)_accessibilityContextId;
- (void)_accessibilityDidFocusOnApplication;
- (void)_accessibilityEnableFocusSystem;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetFocusEnabledInApplication:(BOOL)a3;
- (void)_accessibilitySetLeadingRemoteElements:(id)a3;
- (void)_accessibilitySetTrailingRemoteElements:(id)a3;
- (void)dealloc;
@end

@implementation UIWindowSceneAccessibility

- (void)_accessibilitySetLeadingRemoteElements:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetTrailingRemoteElements:(id)a3
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
  v14 = location;
  v13 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = "@";
  v3 = @"UIWindowScene";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  v9 = "v";
  [location[0] validateClass:v3 hasInstanceMethod:@"_invalidate" withFullSignature:0];
  v4 = @"UIWindow";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_installFocusEventRecognizer" withFullSignature:{v9, 0}];
  v5 = @"_UIFocusEventRecognizer";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"owningView" withFullSignature:{v12, 0}];
  v10 = "B";
  [location[0] validateClass:v5 hasInstanceMethod:@"_didRecognizeFocusMovementRequest:" withFullSignature:{v12, 0}];
  v6 = @"_UIFocusSearchInfo";
  [location[0] validateClass:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"initWithFocusEvaluator:" withFullSignature:{v12, "@?", 0}];
  v8 = @"_UIFocusMovementRequest";
  [location[0] validateClass:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"initWithFocusSystem:" withFullSignature:{v12, 0}];
  v7 = @"UIFocusSystem";
  [location[0] validateClass:v12 hasInstanceMethod:v12 withFullSignature:0];
  [location[0] validateClass:v7 hasInstanceMethod:@"_enableWithoutFocusRestoration" withFullSignature:{v9, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_updateFocusImmediatelyToEnvironment:" withFullSignature:{v10, v12, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"setMovementInfo:" withFullSignature:{v9, v12, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"setSearchInfo:" withFullSignature:{v9, v12, 0}];
  v11 = @"_UIFocusMovementInfo";
  [location[0] validateClass:?];
  [location[0] validateClass:v11 hasInstanceMethod:@"initWithHeading:linearHeading:isInitial:shouldLoadScrollableContainer:looping:groupFilter:" withFullSignature:{v12, "Q", "Q", v10, v10, v10, "q", 0}];
  objc_storeStrong(v14, v13);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = UIWindowSceneAccessibility;
  [(UIWindowSceneAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v2 = [(UIWindowSceneAccessibility *)v7 _axCreateLeadingRemoteElementsIfNecessary];
  v3 = [(UIWindowSceneAccessibility *)v7 _axCreateTrailingRemoteElementsIfNecessary];

  v4 = v3;
}

- (id)_axCreateLeadingRemoteElementsIfNecessary
{
  v28[1] = *MEMORY[0x29EDCA608];
  v26 = self;
  v25[1] = a2;
  if (AXProcessIsSpringBoard() & 1) == 0 && (AXDeviceSupportsMultitasking())
  {
    v25[0] = MEMORY[0x29EDC9748](v26);
    v24 = [v25[0] _FBSScene];
    v11 = MEMORY[0x29EDBA0F8];
    v12 = [v24 identifier];
    v23 = [v11 stringWithFormat:@"%@:%@", @"window-controls", v12];
    MEMORY[0x29EDC9740](v12);
    v13 = MEMORY[0x29EDBD800];
    v16 = MEMORY[0x29EDCA5F8];
    v17 = -1073741824;
    v18 = 0;
    v19 = __71__UIWindowSceneAccessibility__axCreateLeadingRemoteElementsIfNecessary__block_invoke;
    v20 = &unk_29F30CBD0;
    v21 = MEMORY[0x29EDC9748](v23);
    v22 = [v13 remoteElementForBlock:&v16];
    if (!v22)
    {
      v9 = [v24 hostHandle];
      v8 = [v9 auditToken];
      v10 = [v8 pid];
      MEMORY[0x29EDC9740](v8);
      MEMORY[0x29EDC9740](v9);
      v15 = v10;
      v2 = objc_alloc(MEMORY[0x29EDBD800]);
      v3 = [v2 initWithUUID:v23 andRemotePid:v10 andContextId:0];
      v4 = v22;
      v22 = v3;
      *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      [v22 setOnClientSide:{1, v5}];
      [v22 setAccessibilityContainer:v26];
    }

    v28[0] = v22;
    v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:v28 count:1];
    [(UIWindowSceneAccessibility *)v26 _accessibilitySetLeadingRemoteElements:v14];
    v27 = MEMORY[0x29EDC9748](v14);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(v25, 0);
  }

  else
  {
    v27 = 0;
  }

  v6 = v27;

  return v6;
}

uint64_t __71__UIWindowSceneAccessibility__axCreateLeadingRemoteElementsIfNecessary__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] uuid];
  v5 = [v4 isEqualToString:a1[4]];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_axCreateTrailingRemoteElementsIfNecessary
{
  v28[1] = *MEMORY[0x29EDCA608];
  v26 = self;
  v25[1] = a2;
  if (AXProcessIsSpringBoard() & 1) == 0 && (AXDeviceSupportsMultitasking())
  {
    v25[0] = MEMORY[0x29EDC9748](v26);
    v24 = [v25[0] _FBSScene];
    v11 = MEMORY[0x29EDBA0F8];
    v12 = [v24 identifier];
    v23 = [v11 stringWithFormat:@"%@:%@", @"resize-grabber", v12];
    MEMORY[0x29EDC9740](v12);
    v13 = MEMORY[0x29EDBD800];
    v16 = MEMORY[0x29EDCA5F8];
    v17 = -1073741824;
    v18 = 0;
    v19 = __72__UIWindowSceneAccessibility__axCreateTrailingRemoteElementsIfNecessary__block_invoke;
    v20 = &unk_29F30CBD0;
    v21 = MEMORY[0x29EDC9748](v23);
    v22 = [v13 remoteElementForBlock:&v16];
    if (!v22)
    {
      v9 = [v24 hostHandle];
      v8 = [v9 auditToken];
      v10 = [v8 pid];
      MEMORY[0x29EDC9740](v8);
      MEMORY[0x29EDC9740](v9);
      v15 = v10;
      v2 = objc_alloc(MEMORY[0x29EDBD800]);
      v3 = [v2 initWithUUID:v23 andRemotePid:v10 andContextId:0];
      v4 = v22;
      v22 = v3;
      *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      [v22 setOnClientSide:{1, v5}];
      [v22 setAccessibilityContainer:v26];
    }

    v28[0] = v22;
    v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:v28 count:1];
    [(UIWindowSceneAccessibility *)v26 _accessibilitySetTrailingRemoteElements:v14];
    v27 = MEMORY[0x29EDC9748](v14);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(v25, 0);
  }

  else
  {
    v27 = 0;
  }

  v6 = v27;

  return v6;
}

uint64_t __72__UIWindowSceneAccessibility__axCreateTrailingRemoteElementsIfNecessary__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] uuid];
  v5 = [v4 isEqualToString:a1[4]];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)_accessibilityLeadingMultitaskingElements
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [(UIWindowSceneAccessibility *)self _accessibilityLeadingRemoteElements];
  if (!v4[0])
  {
    v4[0] = [(UIWindowSceneAccessibility *)v5 _axCreateLeadingRemoteElementsIfNecessary];
    MEMORY[0x29EDC9740](0);
  }

  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_accessibilityTrailingMultitaskingElements
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [(UIWindowSceneAccessibility *)self _accessibilityTrailingRemoteElements];
  if (!v4[0])
  {
    v4[0] = [(UIWindowSceneAccessibility *)v5 _axCreateTrailingRemoteElementsIfNecessary];
    MEMORY[0x29EDC9740](0);
  }

  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_accessibilityFocusSystem
{
  v3 = [(UIWindowSceneAccessibility *)self _focusSystemSceneComponent];
  v4 = [v3 focusSystem];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityNativeFocusElement
{
  location[2] = self;
  location[1] = a2;
  v6 = [(UIWindowSceneAccessibility *)self _accessibilityFocusSystem];
  location[0] = [v6 focusedItem];
  MEMORY[0x29EDC9740](v6);
  if (objc_opt_respondsToSelector())
  {
    v2 = [location[0] _accessibilityUnderlyingElementForFocusItem];
    v3 = location[0];
    location[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v7 = [location[0] _accessibilityNativeFocusElement];
  if (v7)
  {
    objc_storeStrong(location, v7);
  }

  v5 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (unsigned)_accessibilityContextId
{
  v3 = [(UIWindowSceneAccessibility *)self keyWindow];
  v4 = [v3 _accessibilityContextId];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_accessibilityFBSceneIdentifier
{
  v3 = [(UIWindowSceneAccessibility *)self _FBSScene];
  v4 = [v3 identifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v11 = self;
  v10 = a2;
  v8 = 0;
  v7 = __UIAccessibilitySafeClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v3 = [v6 traitCollection];
  v4 = [v3 userInterfaceIdiom];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v6);
  v9 = v4;
  v5 = 0;
  if (_UIAccessibilityFullKeyboardAccessEnabled())
  {
    v5 = 0;
    if (v9 != 3)
    {
      return v9 != 2;
    }
  }

  return v5;
}

- (void)_accessibilitySetFocusEnabledInApplication:(BOOL)a3
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = AXLogFocusEngine();
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    v3 = [MEMORY[0x29EDBA070] numberWithBool:v8];
    __os_log_helper_16_2_2_8_64_8_64(v11, v3, v10);
    _os_log_debug_impl(&dword_29C4D6000, location, v6, "Setting focus %@ in scene %@", v11, 0x16u);
    MEMORY[0x29EDC9740](v3);
  }

  objc_storeStrong(&location, 0);
  v4 = MEMORY[0x29EDC9748](v10);
  v5 = v8;
  AXPerformSafeBlock();
  objc_storeStrong(&v4, 0);
}

double __73__UIWindowSceneAccessibility__accessibilitySetFocusEnabledInApplication___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _accessibilityFocusSystem];
  [v3 _setEnabled:*(a1 + 40) & 1];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)_accessibilityDidFocusOnApplication
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [(UIWindowSceneAccessibility *)self _accessibilityNativeFocusElement];
  if (!v7[0])
  {
    location = FKALogCommon();
    v5 = 1;
    if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
    {
      log = location;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_29C4D6000, log, type, "Manually poking focus system in AssistiveTouch because no focused item was found.", v4, 2u);
    }

    objc_storeStrong(&location, 0);
    [(UIWindowSceneAccessibility *)v8 _accessibilityEnableFocusSystem];
    [(UIWindowSceneAccessibility *)v8 _accessibilityMoveFocusWithHeading:16];
  }

  objc_storeStrong(v7, 0);
}

- (BOOL)_accessibilitySafeMoveInDirection:(unint64_t)a3 byGroup:(BOOL)a4 withSearchInfo:(id)a5
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v10 = 0;
  v11 = &v10;
  v12 = 0x20000000;
  v13 = 32;
  v14 = 0;
  v7 = MEMORY[0x29EDC9748](v19);
  v9 = v16;
  v8[2] = v17;
  v8[0] = MEMORY[0x29EDC9748](location);
  v8[1] = &v10;
  AXPerformSafeBlock();
  v6 = *(v11 + 24);
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v7, 0);
  _Block_object_dispose(&v10, 8);
  objc_storeStrong(&location, 0);
  return v6 & 1;
}

void __87__UIWindowSceneAccessibility__accessibilitySafeMoveInDirection_byGroup_withSearchInfo___block_invoke(uint64_t a1)
{
  v24[2] = a1;
  v24[1] = a1;
  v11 = [*(a1 + 32) keyWindow];
  v22 = 0;
  v20 = 0;
  if (v11)
  {
    v1 = MEMORY[0x29EDC9748](v11);
  }

  else
  {
    v9 = *MEMORY[0x29EDC8008];
    v23 = [*(a1 + 32) screen];
    v22 = 1;
    v21 = [v9 _keyWindowForScreen:?];
    v20 = 1;
    v1 = MEMORY[0x29EDC9748](v21);
  }

  v24[0] = v1;
  if (v20)
  {
    MEMORY[0x29EDC9740](v21);
  }

  if (v22)
  {
    MEMORY[0x29EDC9740](v23);
  }

  v19 = [v24[0] safeValueForKey:{@"_focusEventRecognizer", MEMORY[0x29EDC9740](v11).n128_f64[0]}];
  v2 = 2;
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = 0;
  }

  v18 = v2;
  v17 = (*(a1 + 64) ^ 1) & 1;
  v15 = 0;
  objc_opt_class();
  v8 = [v19 safeValueForKey:@"_focusMovementSystem"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16 = v13;
  v3 = objc_alloc(NSClassFromString(&cfstr_Uifocusmovemen.isa));
  v12 = [v3 initWithFocusSystem:v16];
  v6 = v12;
  v4 = objc_alloc(NSClassFromString(&cfstr_Uifocusmovemen_0.isa));
  v7 = [v4 initWithHeading:*(a1 + 56) linearHeading:0 isInitial:1 shouldLoadScrollableContainer:v17 & 1 looping:0 groupFilter:v18];
  [v6 setMovementInfo:?];
  *&v5 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  [v12 setSearchInfo:{*(a1 + 40), v5}];
  *(*(*(a1 + 48) + 8) + 24) = [v19 _didRecognizeFocusMovementRequest:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v24, 0);
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 byGroup:(BOOL)a4
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  location = AXLogFocusEngine();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v25];
    v7 = [MEMORY[0x29EDBA070] numberWithBool:v24];
    __os_log_helper_16_2_3_8_64_8_64_8_64(v28, v8, v7, v27);
    _os_log_debug_impl(&dword_29C4D6000, location, v22, "Moving focus with heading: %@, byGroup: %@, in scene: %@", v28, 0x20u);
    MEMORY[0x29EDC9740](v7);
    MEMORY[0x29EDC9740](v8);
  }

  objc_storeStrong(&location, 0);
  v21 = [(UIWindowSceneAccessibility *)v27 _accessibilityNativeFocusElement];
  v20 = [v21 _accessibilityMoveFocusWithHeading:v25];
  if ((v20 & 1) == 0)
  {
    v19 = (v25 & 0x300) != 0;
    v11 = 0;
    v12 = &v11;
    v13 = 838860800;
    v14 = 48;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    AXPerformSafeBlock();
    v10 = MEMORY[0x29EDC9748](v12[5]);
    _Block_object_dispose(&v11, 8);
    objc_storeStrong(&v17, 0);
    v18 = v10;
    v9 = (v25 & 0xF) != 0;
    [v10 setForceFocusToLeaveContainer:(v25 & 0xF) == 0];
    v6 = 1;
    if (!v9)
    {
      v6 = v19;
    }

    [v18 setTreatFocusableItemAsLeaf:v6 & 1];
    v20 = [(UIWindowSceneAccessibility *)v27 _accessibilitySafeMoveInDirection:v25 byGroup:v24 withSearchInfo:v18];
    objc_storeStrong(&v18, 0);
  }

  v5 = v20;
  objc_storeStrong(&v21, 0);
  return v5 & 1;
}

double __73__UIWindowSceneAccessibility__accessibilityMoveFocusWithHeading_byGroup___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(NSClassFromString(&cfstr_Uifocussearchi_0.isa)) initWithFocusEvaluator:0];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (BOOL)_accessibilityFocusContainerMoveFocusWithHeading:(unint64_t)a3 toElementMatchingQuery:(id)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(UIWindowSceneAccessibility *)v9 _accessibilityEnableFocusSystem];
  v5 = [(UIWindowSceneAccessibility *)v9 _accessibilityMoveFocusWithHeading:v7 toElementMatchingQuery:location];
  objc_storeStrong(&location, 0);
  return v5;
}

- (BOOL)_accessibilityMoveFocusWithHeading:(unint64_t)a3 toElementMatchingQuery:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(UIWindowSceneAccessibility *)v12 _accessibilityEnableFocusSystem];
  if ((v10 & 0x300) == 0 || [(UIWindowSceneAccessibility *)v12 _accessibilityResetAndClearNativeFocusSystem])
  {
    v6 = [(UIWindowSceneAccessibility *)v12 _accessibilityNativeFocusElement];
    v7 = [v6 _accessibilityMoveFocusWithHeading:v10 toElementMatchingQuery:location];
    *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v8 = v7;
    if ((v7 & 1) == 0)
    {
      v8 = [(UIWindowSceneAccessibility *)v12 _accessibilityMoveAppFocusForElementMatchingQuery:location heading:v10, v4];
    }

    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&location, 0);
  return v13;
}

- (BOOL)_accessibilityResetAndClearNativeFocusSystem
{
  v23 = *MEMORY[0x29EDCA608];
  v20 = a1;
  if (a1)
  {
    v19 = [v20 _accessibilityFocusSystem];
    v14 = 0;
    v15 = &v14;
    v16 = 0x20000000;
    v17 = 32;
    v18 = 0;
    oslog[3] = MEMORY[0x29EDCA5F8];
    v9 = -1073741824;
    v10 = 0;
    v11 = __74__UIWindowSceneAccessibility__accessibilityResetAndClearNativeFocusSystem__block_invoke;
    v12 = &unk_29F30CC70;
    v13[1] = &v14;
    v13[0] = MEMORY[0x29EDC9748](v19);
    AXPerformSafeBlock();
    oslog[0] = AXLogFocusEngine();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      v3 = NSStringFromBOOL();
      location = MEMORY[0x29EDC9748](v3);
      __os_log_helper_16_2_2_8_64_8_64(v22, location, v20);
      _os_log_debug_impl(&dword_29C4D6000, oslog[0], type, "reset and clear focus system: %@ windowScene: %@", v22, 0x16u);
      MEMORY[0x29EDC9740](v3);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
    v4 = 0;
    v2 = 1;
    if ((v15[3] & 1) == 0)
    {
      v5 = [v19 focusedItem];
      v4 = 1;
      v2 = v5 == 0;
    }

    v21 = v2;
    if (v4)
    {
      MEMORY[0x29EDC9740](v5);
    }

    objc_storeStrong(v13, 0);
    _Block_object_dispose(&v14, 8);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    return 0;
  }

  return v21;
}

- (BOOL)_accessibilityMoveAppFocusForElementMatchingQuery:(id)a3 heading:(unint64_t)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 838860800;
  v12 = 48;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v8[1] = &v9;
  v8[0] = MEMORY[0x29EDC9748](location[0]);
  AXPerformSafeBlock();
  v7 = MEMORY[0x29EDC9748](v10[5]);
  objc_storeStrong(v8, 0);
  _Block_object_dispose(&v9, 8);
  objc_storeStrong(&v15, 0);
  v16 = v7;
  [v7 setForceFocusToLeaveContainer:1];
  [v16 setTreatFocusableItemAsLeaf:0];
  v5 = [(UIWindowSceneAccessibility *)v19 _accessibilitySafeMoveInDirection:v17 byGroup:0 withSearchInfo:v16];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v5;
}

void __88__UIWindowSceneAccessibility__accessibilityMoveAppFocusForElementMatchingQuery_heading___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v4 = objc_alloc(NSClassFromString(&cfstr_Uifocussearchi_0.isa));
  v6 = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __88__UIWindowSceneAccessibility__accessibilityMoveAppFocusForElementMatchingQuery_heading___block_invoke_2;
  v10 = &unk_29F30CC48;
  v11[0] = MEMORY[0x29EDC9748](a1[4]);
  v1 = [v4 initWithFocusEvaluator:?];
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(v11, 0);
}

uint64_t __88__UIWindowSceneAccessibility__accessibilityMoveAppFocusForElementMatchingQuery_heading___block_invoke_2(id *a1, void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = a1;
  memset(__b, 0, sizeof(__b));
  obj = [location[0] _accessibilityAXAttributedUserInputLabelsIncludingFallbacks];
  v13 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v9);
      v5 = [v16 localizedLowercaseString];
      v4 = [a1[4] localizedLowercaseString];
      v6 = [v5 containsString:?];
      MEMORY[0x29EDC9740](v4);
      *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v20 count:{16, v2}];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    v19 = 1;
    v14 = 1;
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v14)
  {
    v19 = 0;
  }

  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (CGRect)accessibilityFrame
{
  v20[2] = self;
  v20[1] = a2;
  v20[0] = MEMORY[0x29EDC9748](self);
  v19 = [v20[0] keyWindow];
  if (v19)
  {
    [v19 accessibilityFrame];
    *&v21 = v2;
    *(&v21 + 1) = v3;
    *&v22 = v4;
    *(&v22 + 1) = v5;
    v18 = 1;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x10000000;
    v14 = 64;
    v15 = &unk_29C6A1FE6;
    v16 = 0u;
    v17 = 0u;
    v16 = *MEMORY[0x29EDB90E0];
    v17 = *(MEMORY[0x29EDB90E0] + 16);
    location = [MEMORY[0x29EDC7DD0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
    [location enumerateObjectsUsingBlock:?];
    v21 = *(v12 + 2);
    v22 = *(v12 + 3);
    v18 = 1;
    objc_storeStrong(&location, 0);
    _Block_object_dispose(&v11, 8);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  v7 = *(&v21 + 1);
  v6 = *&v21;
  v9 = *(&v22 + 1);
  v8 = *&v22;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

void __48__UIWindowSceneAccessibility_accessibilityFrame__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = a3;
  v18 = a4;
  v17[1] = a1;
  v16 = 0;
  objc_opt_class();
  v15 = __UIAccessibilityCastAsClass();
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17[0] = v14;
  [v14 accessibilityFrame];
  if (!CGRectEqualToRect(v21, *MEMORY[0x29EDB90E0]))
  {
    [v17[0] accessibilityFrame];
    *&v12 = v4;
    *(&v12 + 1) = v5;
    *&v13 = v6;
    *(&v13 + 1) = v7;
    v8 = *(a1[4] + 8);
    *(v8 + 32) = v12;
    *(v8 + 48) = v13;
    *v18 = 1;
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(location, 0);
}

double __74__UIWindowSceneAccessibility__accessibilityResetAndClearNativeFocusSystem__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 _contextForUpdateToEnvironment:? allowsOverridingPreferedFocusEnvironments:? allowsDeferral:?];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _updateFocusWithContext:? report:?];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

- (uint64_t)_accessibilityUpdateNativeFocusImmediately
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = a1;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x20000000;
    v14 = 32;
    v15 = 0;
    oslog[3] = MEMORY[0x29EDCA5F8];
    v6 = -1073741824;
    v7 = 0;
    v8 = __72__UIWindowSceneAccessibility__accessibilityUpdateNativeFocusImmediately__block_invoke;
    v9 = &unk_29F30CC70;
    v10[1] = &v11;
    v10[0] = MEMORY[0x29EDC9748](v16);
    AXPerformSafeBlock();
    oslog[0] = AXLogFocusEngine();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      v2 = NSStringFromBOOL();
      location = MEMORY[0x29EDC9748](v2);
      __os_log_helper_16_2_2_8_64_8_64(v18, location, v16);
      _os_log_debug_impl(&dword_29C4D6000, oslog[0], type, "did update native focus system: %@ windowScene: %@", v18, 0x16u);
      MEMORY[0x29EDC9740](v2);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(oslog, 0);
    v17 = v12[3] & 1;
    objc_storeStrong(v10, 0);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

double __72__UIWindowSceneAccessibility__accessibilityUpdateNativeFocusImmediately__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _accessibilityFocusSystem];
  *(*(*(a1 + 40) + 8) + 24) = [v3 _updateFocusImmediatelyToEnvironment:0];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityNativeFocusableElements:(id)a3 withQueryString:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [*MEMORY[0x29EDC8008] _accessibilityNativeFocusableElements:v9 withQueryString:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)_accessibilityEnableFocusSystem
{
  v3 = self;
  v2[1] = a2;
  if ([(UIWindowSceneAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v2[0] = MEMORY[0x29EDC9748](v3);
    AXPerformSafeBlock();
    objc_storeStrong(v2, 0);
  }
}

double __61__UIWindowSceneAccessibility__accessibilityEnableFocusSystem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityFocusSystem];
  [v2 _enableWithoutFocusRestoration];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (void)dealloc
{
  v25 = *MEMORY[0x29EDCA608];
  v22 = self;
  v21 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(UIWindowSceneAccessibility *)v22 _accessibilityLeadingRemoteElements];
  v15 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v12);
      [v20 setRemoteChildrenDelegate:0];
      [v20 unregister];
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  memset(v17, 0, sizeof(v17));
  v8 = [(UIWindowSceneAccessibility *)v22 _accessibilityTrailingRemoteElements];
  v9 = [v8 countByEnumeratingWithState:v17 objects:v23 count:16];
  if (v9)
  {
    v5 = *v17[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*v17[2] != v5)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(v17[1] + 8 * v6);
      [v18 setRemoteChildrenDelegate:{0, v7}];
      [v18 unregister];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [v8 countByEnumeratingWithState:v17 objects:v23 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v16.receiver = v22;
  v16.super_class = UIWindowSceneAccessibility;
  [(UIWindowSceneAccessibility *)&v16 dealloc];
}

@end