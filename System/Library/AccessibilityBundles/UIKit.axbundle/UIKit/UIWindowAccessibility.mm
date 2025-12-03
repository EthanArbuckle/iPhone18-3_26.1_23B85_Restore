@interface UIWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsInCarPlay;
- (BOOL)_accessibilityIsSecure;
- (BOOL)_accessibilityIsUserInteractionEnabled;
- (BOOL)_accessibilitySceneContainsOnlySecureWindows;
- (BOOL)_axShouldPostScreenChangeOnOrderFront:(BOOL)front;
- (BOOL)_prefersFocusContainment;
- (BOOL)accessibilityElementsHidden;
- (CGPoint)warpPoint:(CGPoint)point;
- (UIWindowAccessibility)initWithFrame:(CGRect)frame;
- (UIWindowAccessibility)initWithWindowScene:(id)scene;
- (id)_accessibilityAllRemoteElements;
- (id)_accessibilityFirstResponderCoalesceTimer;
- (id)_accessibilityGetRemoteElement;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityMLRemoteElement;
- (id)_accessibilityRemoteElement;
- (id)_accessibilityUserTestingParent;
- (id)_accessibilityWindowSections;
- (id)_targetWindowForPathIndex:(int64_t)index atPoint:(CGPoint)point scenePointZ:(double)z forEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)accessibilityContainer;
- (id)accessibilityRemoteSubstituteChildren:(id)children;
- (int)_accessibilityRemotePid;
- (uint64_t)_accessibilityShouldUseRemoteElement;
- (unsigned)_accessibilityContextId;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityRegisterRemoteElement:(BOOL)element;
- (void)_accessibilitySetAllRemoteElements:(id)elements;
- (void)_accessibilitySetFirstResponderCoalesceTimer:(uint64_t)timer;
- (void)_accessibilitySetRemoteElement:(uint64_t)element;
- (void)_axCheckForExistingRemoteElements;
- (void)_axListenForRemoteElement;
- (void)_axRemoteElementRegistered:(id)registered;
- (void)_axUpdateForRemoteElement:(void *)element;
- (void)_orderFrontWithoutMakingKey;
- (void)_setBoundContext:(id)context;
- (void)_setFirstResponder:(id)responder;
- (void)dealloc;
- (void)makeKeyAndVisible;
@end

@implementation UIWindowAccessibility

- (id)_accessibilityAllRemoteElements
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIWindow___accessibilityAllRemoteElements);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetAllRemoteElements:(id)elements
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elements);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v14 = location;
  v13 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v9 = @"UIWindow";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v12 = "@";
  v11 = "B";
  [location[0] validateClass:@"UIWindow" hasInstanceMethod:@"_initWithFrame: debugName: scene: attached:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "@", "B", 0}];
  [location[0] validateClass:v9 hasInstanceMethod:@"initWithWindowScene:" withFullSignature:{v12, 0}];
  v3 = "q";
  [location[0] validateClass:v9 hasInstanceMethod:@"_windowInterfaceOrientation" withFullSignature:0];
  [location[0] validateClass:@"_UISnapshotWindow"];
  [location[0] validateClass:v9 hasInstanceMethod:@"_shouldCreateContextAsSecure" withFullSignature:{v11, 0}];
  v8 = "v";
  [location[0] validateClass:v9 hasInstanceMethod:@"_setBoundContext:" withFullSignature:{v12, 0}];
  [location[0] validateClass:v9 hasInstanceMethod:@"_targetWindowForPathIndex:atPoint:scenePointZ:forEvent:windowServerHitTestWindow:" withFullSignature:{v3, "{CGPoint=dd}", "d", v12, v12, 0}];
  [location[0] validateClass:v9 hasInstanceMethod:@"_isSecure" withFullSignature:{v11, 0}];
  v4 = @"RBSProcessIdentity";
  [location[0] validateClass:?];
  [location[0] validateClass:v4 hasClassMethod:@"identityOfCurrentProcess" withFullSignature:{v12, 0}];
  [location[0] validateClass:@"_UIKeyboardWindowScene"];
  v7 = @"UIScene";
  [location[0] validateClass:@"UIWindowScene" isKindOfClass:?];
  [location[0] validateClass:v7 hasClassMethod:@"_scenesIncludingInternal:" withFullSignature:{v12, v11, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_FBSScene" withFullSignature:{v12, 0}];
  v5 = @"FBSScene";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"identifier" withFullSignature:{v12, 0}];
  [location[0] validateClass:@"FBSProcess" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
  v6 = @"UILayoutContainerView";
  v10 = @"UIView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UISplitViewControllerPanelImplView" isKindOfClass:v6];
  [location[0] validateClass:v7 hasInstanceMethod:@"_focusSystemSceneComponent" withFullSignature:{v12, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_sceneComponentForKey:" withFullSignature:{v12, 0}];
  [location[0] validateClass:@"_UIFocusSystemSceneComponent" hasInstanceMethod:@"_focusBehaviorDidChange:" withFullSignature:{v8, v12, 0}];
  [location[0] validateClass:@"FBSSceneDefinition" hasProperty:@"identity" withType:v12];
  [location[0] validateClass:@"FBSSceneIdentity" hasProperty:@"workspaceIdentifier" withType:v12];
  [location[0] validateClass:v9 hasInstanceMethod:@"makeKeyAndVisible" withFullSignature:{v8, 0}];
  [location[0] validateClass:v9 isKindOfClass:v10];
  [location[0] validateClass:v10 hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{v11, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_isEligibleForFocusOcclusion" withFullSignature:{v11, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_prefersFocusContainment" withFullSignature:{v11, 0}];
  [location[0] validateClass:@"UIApplicationAccessibility" hasInstanceMethod:@"_accessibilityUIAppFocusedOnContinuityDisplay" withFullSignature:{v12, 0}];
  objc_storeStrong(v14, v13);
}

- (UIWindowAccessibility)initWithWindowScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = UIWindowAccessibility;
  selfCopy = [(UIWindowAccessibility *)&v6 initWithWindowScene:location[0]];
  v7 = MEMORY[0x29EDC9748](selfCopy);
  [(UIWindowAccessibility *)selfCopy _axListenForRemoteElement];
  v5 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)_axListenForRemoteElement
{
  selfCopy = self;
  if (self)
  {
    location = MEMORY[0x29EDC9748](@"_axRegisteredForRemoteElement");
    if (([selfCopy _accessibilityBoolValueForKey:location] & 1) == 0)
    {
      [selfCopy _axCheckForExistingRemoteElements];
      defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
      [defaultCenter addObserver:selfCopy selector:sel__axRemoteElementRegistered_ name:@"ax_remote_element_registered" object:0];
      [selfCopy _accessibilitySetBoolValue:1 forKey:{location, MEMORY[0x29EDC9740](defaultCenter).n128_f64[0]}];
    }

    objc_storeStrong(&location, 0);
  }
}

- (UIWindowAccessibility)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v6[1] = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = UIWindowAccessibility;
  v7 = [(UIWindowAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6[0] = MEMORY[0x29EDC9748](v7);
  [(UIWindowAccessibility *)v7 _axListenForRemoteElement];
  v4 = MEMORY[0x29EDC9748](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v24 = [(UIWindowAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v16 = 0;
  v11 = 0;
  if ((v24 & 1) == 0)
  {
    v18 = MEMORY[0x29EDCA5F8];
    v19 = -1073741824;
    v20 = 0;
    v21 = __57__UIWindowAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v22 = &unk_29F30CEB0;
    v23 = MEMORY[0x29EDC9748](selfCopy);
    v17 = &v23;
    v16 = 1;
    v11 = (__57__UIWindowAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v11)
  {
    [(UIWindowAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
    v15 = [(UIWindowAccessibility *)selfCopy accessibilityHitTest:location[0] withEvent:testCopy];
    [(UIWindowAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v28 = MEMORY[0x29EDC9748](v15);
    v14 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v14 = 0;
  }

  if (v16)
  {
    objc_storeStrong(v17, 0);
  }

  if (!v14)
  {
    windowScene = [(UIWindowAccessibility *)selfCopy windowScene];
    *&v4 = MEMORY[0x29EDC9740](windowScene).n128_u64[0];
    if (windowScene)
    {
      [(UIWindowAccessibility *)selfCopy alpha];
      if (v5 <= 0.0 || ([(UIWindowAccessibility *)selfCopy isHidden]& 1) != 0)
      {
        v28 = 0;
        v14 = 1;
      }

      else
      {
        [(UIWindowAccessibility *)selfCopy warpPoint:testCopy];
        v13.x = v6;
        v13.y = v7;
        testCopy = v13;
        v12.receiver = selfCopy;
        v12.super_class = UIWindowAccessibility;
        v28 = [(UIWindowAccessibility *)&v12 _accessibilityHitTest:location[0] withEvent:v6, v7];
        v14 = 1;
      }
    }

    else
    {
      v28 = 0;
      v14 = 1;
    }
  }

  objc_storeStrong(location, 0);
  v8 = v28;

  return v8;
}

BOOL __57__UIWindowAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &kAXWindowFocusSystemSceneComponentKey_block_invoke_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_54);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != kAXWindowFocusSystemSceneComponentKey_block_invoke_BaseImplementation;
}

void __57__UIWindowAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    kAXWindowFocusSystemSceneComponentKey_block_invoke_BaseImplementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_accessibilityRemoteElement
{
  v6 = 0;
  v4 = 0;
  if (([(UIWindowAccessibility *)self _accessibilityShouldUseRemoteElement]& 1) != 0)
  {
    _accessibilityAllRemoteElements = [(UIWindowAccessibility *)self _accessibilityAllRemoteElements];
    v6 = 1;
    lastObject = [_accessibilityAllRemoteElements lastObject];
    v4 = 1;
    v2 = MEMORY[0x29EDC9748](lastObject);
  }

  else
  {
    v2 = MEMORY[0x29EDC9748](0);
  }

  v9 = v2;
  if (v4)
  {
    MEMORY[0x29EDC9740](lastObject);
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](_accessibilityAllRemoteElements);
  }

  return v9;
}

- (uint64_t)_accessibilityShouldUseRemoteElement
{
  selfCopy = self;
  if (self)
  {
    v9 = MEMORY[0x29EDC9748](selfCopy);
    windowScene = [v9 windowScene];
    v6 = 0;
    objc_opt_class();
    v2 = [windowScene safeValueForKey:@"_FBSScene"];
    v5 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v2);
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v7 = v4;
    v3 = [v4 safeStringForKey:@"identifier"];
    if ([v3 containsString:*MEMORY[0x29EDBD600]])
    {
      v11 = [v7 accessibilitySceneIsCallServiceBanner] & 1;
    }

    else
    {
      v11 = 1;
    }

    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&windowScene, 0);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)_accessibilityUserTestingParent
{
  _accessibilityRemoteElement = [(UIWindowAccessibility *)self _accessibilityRemoteElement];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityRemoteElement).n128_u64[0];
  if (_accessibilityRemoteElement)
  {
    _accessibilityRemoteElement2 = [(UIWindowAccessibility *)self _accessibilityRemoteElement];
  }

  else
  {
    _accessibilityRemoteElement2 = MEMORY[0x29EDC9748](*MEMORY[0x29EDC8008]);
  }

  return _accessibilityRemoteElement2;
}

- (id)accessibilityContainer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIWindowAccessibility *)self _accessibilityRemoteElement];
  if (location[0])
  {
    accessibilityContainer = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = UIWindowAccessibility;
    accessibilityContainer = [(UIWindowAccessibility *)&v4 accessibilityContainer];
  }

  v5 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityContainer;

  return v2;
}

- (id)_accessibilityWindowSections
{
  selfCopy = self;
  v83[1] = a2;
  v82 = 0;
  objc_opt_class();
  v34 = [(UIWindowAccessibility *)selfCopy safeValueForKey:@"rootViewController"];
  v81 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v34);
  v80 = MEMORY[0x29EDC9748](v81);
  objc_storeStrong(&v81, 0);
  v83[0] = v80;
  v79 = objc_opt_new();
  v78 = objc_opt_new();
  [v78 axSafelyAddObject:v83[0]];
  while ([v78 count])
  {
    ax_dequeueObject = [v78 ax_dequeueObject];
    presentedViewController = [ax_dequeueObject presentedViewController];
    *&v2 = MEMORY[0x29EDC9740](presentedViewController).n128_u64[0];
    if (presentedViewController)
    {
      v31 = v78;
      presentedViewController2 = [ax_dequeueObject presentedViewController];
      [v31 ax_enqueueObject:?];
      MEMORY[0x29EDC9740](presentedViewController2);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = 0;
        objc_opt_class();
        v74 = __UIAccessibilityCastAsClass();
        if (v75)
        {
          abort();
        }

        v73 = MEMORY[0x29EDC9748](v74);
        objc_storeStrong(&v74, 0);
        v76 = v73;
        viewControllers = [v73 viewControllers];
        v67 = MEMORY[0x29EDCA5F8];
        v68 = -1073741824;
        v69 = 0;
        v70 = __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke;
        v71 = &unk_29F30E390;
        v72 = MEMORY[0x29EDC9748](v78);
        [viewControllers enumerateObjectsUsingBlock:&v67];
        MEMORY[0x29EDC9740](viewControllers);
        objc_storeStrong(&v72, 0);
        objc_storeStrong(&v76, 0);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v65 = 0;
          objc_opt_class();
          v64 = __UIAccessibilityCastAsClass();
          if (v65)
          {
            abort();
          }

          v63 = MEMORY[0x29EDC9748](v64);
          objc_storeStrong(&v64, 0);
          v66 = v63;
          toolbar = [v63 toolbar];
          _accessibilityViewIsVisible = [toolbar _accessibilityViewIsVisible];
          v3 = MEMORY[0x29EDC9740](toolbar).n128_u64[0];
          if (_accessibilityViewIsVisible)
          {
            v26 = v79;
            toolbar2 = [v66 toolbar];
            [v26 axSafelyAddObject:?];
            v3 = MEMORY[0x29EDC9740](toolbar2).n128_u64[0];
          }

          navigationBar = [v66 navigationBar];
          _accessibilityViewIsVisible2 = [navigationBar _accessibilityViewIsVisible];
          *&v4 = MEMORY[0x29EDC9740](navigationBar).n128_u64[0];
          if (_accessibilityViewIsVisible2)
          {
            defaultVoiceOverOptionsHonoringGroups = [MEMORY[0x29EDC7328] defaultVoiceOverOptionsHonoringGroups];
            leafNodePredicate = [defaultVoiceOverOptionsHonoringGroups leafNodePredicate];
            v54 = MEMORY[0x29EDCA5F8];
            v55 = -1073741824;
            v56 = 0;
            v57 = __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke_2;
            v58 = &unk_29F30E3B8;
            v59 = MEMORY[0x29EDC9748](v66);
            v60 = MEMORY[0x29EDC9748](leafNodePredicate);
            [defaultVoiceOverOptionsHonoringGroups setLeafNodePredicate:&v54];
            navigationBar2 = [v66 navigationBar];
            v53 = [navigationBar2 _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptionsHonoringGroups];
            MEMORY[0x29EDC9740](navigationBar2);
            v23 = v53;
            v47 = MEMORY[0x29EDCA5F8];
            v48 = -1073741824;
            v49 = 0;
            v50 = __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke_3;
            v51 = &unk_29F30D218;
            v52 = MEMORY[0x29EDC9748](v79);
            [v23 enumerateObjectsWithOptions:2 usingBlock:&v47];
            objc_storeStrong(&v52, 0);
            objc_storeStrong(&v53, 0);
            objc_storeStrong(&v60, 0);
            objc_storeStrong(&v59, 0);
            objc_storeStrong(&leafNodePredicate, 0);
            objc_storeStrong(&defaultVoiceOverOptionsHonoringGroups, 0);
          }

          v20 = v78;
          topViewController = [v66 topViewController];
          [v20 ax_enqueueObject:?];
          MEMORY[0x29EDC9740](topViewController);
          objc_storeStrong(&v66, 0);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = 0;
            objc_opt_class();
            v44 = __UIAccessibilityCastAsClass();
            if (v45)
            {
              abort();
            }

            v43 = MEMORY[0x29EDC9748](v44);
            objc_storeStrong(&v44, 0);
            v46 = v43;
            tabBar = [v43 tabBar];
            _accessibilityViewIsVisible3 = [tabBar _accessibilityViewIsVisible];
            v5 = MEMORY[0x29EDC9740](tabBar).n128_u64[0];
            if (_accessibilityViewIsVisible3)
            {
              v16 = v79;
              tabBar2 = [v46 tabBar];
              [v16 axSafelyAddObject:?];
              v5 = MEMORY[0x29EDC9740](tabBar2).n128_u64[0];
            }

            v14 = v78;
            selectedViewController = [v46 selectedViewController];
            [v14 ax_enqueueObject:?];
            MEMORY[0x29EDC9740](selectedViewController);
            objc_storeStrong(&v46, 0);
          }

          else
          {
            options = [MEMORY[0x29EDC7328] options];
            [options setLeafNodePredicate:&__block_literal_global_441];
            view = [ax_dequeueObject view];
            v41 = [view _accessibilityLeafDescendantsWithOptions:options];
            *&v6 = MEMORY[0x29EDC9740](view).n128_u64[0];
            v7 = [v41 ax_filteredArrayUsingBlock:{&__block_literal_global_444_1, v6}];
            v8 = v41;
            v41 = v7;
            MEMORY[0x29EDC9740](v8);
            v13 = v41;
            v35 = MEMORY[0x29EDCA5F8];
            v36 = -1073741824;
            v37 = 0;
            v38 = __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke_6;
            v39 = &unk_29F30D218;
            v40 = MEMORY[0x29EDC9748](v79);
            [v13 enumerateObjectsUsingBlock:&v35];
            objc_storeStrong(&v40, 0);
            objc_storeStrong(&v41, 0);
            objc_storeStrong(&options, 0);
          }
        }
      }
    }

    objc_storeStrong(&ax_dequeueObject, 0);
  }

  reverseObjectEnumerator = [v79 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  MEMORY[0x29EDC9740](reverseObjectEnumerator);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(v83, 0);

  return allObjects;
}

void __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] ax_enqueueObject:location[0]];
  objc_storeStrong(location, 0);
}

uint64_t __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0];
  v5 = [*(a1 + 32) navigationBar];
  v6 = 0;
  if (v4 != v5)
  {
    v6 = (*(*(a1 + 40) + 16))();
  }

  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

void __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] accessibilityTraits];
  if ((v2 & *MEMORY[0x29EDC7F80]) == 0)
  {
    [a1[4] axSafelyAddObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

BOOL __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke_4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] accessibilityContainerType] == 4;
  objc_storeStrong(location, 0);
  return v3;
}

uint64_t __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke_5(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityParentView];
  v4 = [v3 _accessibilityViewIsVisible];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(location, 0);
  return v4;
}

void __53__UIWindowAccessibility__accessibilityWindowSections__block_invoke_6(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] axSafelyAddObject:location[0]];
  objc_storeStrong(location, 0);
}

- (int)_accessibilityRemotePid
{
  accessibilityContainer = [(UIWindowAccessibility *)self accessibilityContainer];
  remotePid = [accessibilityContainer remotePid];
  MEMORY[0x29EDC9740](accessibilityContainer);
  return remotePid;
}

- (void)dealloc
{
  v16 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v13 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(UIWindowAccessibility *)selfCopy _accessibilityAllRemoteElements];
  v9 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      [v12 setRemoteChildrenDelegate:0];
      [v12 unregister];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:@"ax_remote_element_registered" object:0];
  *&v2 = MEMORY[0x29EDC9740](defaultCenter).n128_u64[0];
  v10.receiver = selfCopy;
  v10.super_class = UIWindowAccessibility;
  [(UIWindowAccessibility *)&v10 dealloc];
}

- (id)accessibilityRemoteSubstituteChildren:(id)children
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, children);
  if (-[UIWindowAccessibility accessibilityElementsHidden](selfCopy, "accessibilityElementsHidden") || ([location[0] remotePid] & 0x80000000) != 0)
  {
    v22 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
    v19 = 1;
  }

  else
  {
    v18 = 0;
    if ([location[0] isAccessibilityOpaqueElementProvider] & 1) != 0 && (objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilityWantsOpaqueElementProviders"))
    {
      _accessibilitySortedElementsWithin = [(UIWindowAccessibility *)selfCopy _accessibilitySortedElementsWithin];
      v7 = v18;
      v18 = _accessibilitySortedElementsWithin;
      v5 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    }

    else
    {
      subviews = [(UIWindowAccessibility *)selfCopy subviews];
      v4 = v18;
      v18 = subviews;
      v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    }

    v14 = MEMORY[0x29EDB8D80];
    _accessibilityAdditionalRemoteSubstituteChildren = [(UIWindowAccessibility *)selfCopy _accessibilityAdditionalRemoteSubstituteChildren];
    v8 = [v14 axArrayWithPossiblyNilArrays:{2, _accessibilityAdditionalRemoteSubstituteChildren, v18}];
    v9 = v18;
    v18 = v8;
    MEMORY[0x29EDC9740](v9);
    *&v10 = MEMORY[0x29EDC9740](_accessibilityAdditionalRemoteSubstituteChildren).n128_u64[0];
    reverseObjectEnumerator = [v18 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    *&v11 = MEMORY[0x29EDC9740](reverseObjectEnumerator).n128_u64[0];
    v22 = [MEMORY[0x29EDC7DA0] _subviewsReplacedByModalViewSubviewsIfNecessary:{allObjects, v11}];
    v19 = 1;
    objc_storeStrong(&allObjects, 0);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(location, 0);
  v12 = v22;

  return v12;
}

- (void)_axRemoteElementRegistered:(id)registered
{
  v16 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, registered);
  v11 = 0;
  objc_opt_class();
  userInfo = [location[0] userInfo];
  v10 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](userInfo);
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v12 = [v9 objectForKey:@"element"];
  *&v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (!v12)
  {
    _AXAssert();
  }

  contextId = [v12 contextId];
  if (v12 && contextId == [(UIWindowAccessibility *)selfCopy _accessibilityContextId]&& contextId)
  {
    [(UIWindowAccessibility *)selfCopy _axUpdateForRemoteElement:v12];
  }

  else
  {
    oslog = AXLogRemoteElement();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v5 = selfCopy;
      _accessibilityContextId = [(UIWindowAccessibility *)selfCopy _accessibilityContextId];
      __os_log_helper_16_2_3_8_64_4_0_8_64(v15, v5, _accessibilityContextId, v12);
      _os_log_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_INFO, "This remote element does not belong to me: %@ (contextId: %u). Remote element: %@ ", v15, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_axUpdateForRemoteElement:(void *)element
{
  v8 = *MEMORY[0x29EDCA608];
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    _accessibilityAllRemoteElements = [(UIWindowAccessibility *)elementCopy _accessibilityAllRemoteElements];
    if (!_accessibilityAllRemoteElements)
    {
      _accessibilityAllRemoteElements = [MEMORY[0x29EDB8DE8] array];
      [elementCopy _accessibilitySetAllRemoteElements:{_accessibilityAllRemoteElements, MEMORY[0x29EDC9740](0).n128_f64[0]}];
    }

    if (([_accessibilityAllRemoteElements containsObject:location] & 1) == 0)
    {
      [location setRemoteChildrenDelegate:elementCopy];
      [_accessibilityAllRemoteElements addObject:location];
      oslog = AXLogRemoteElement();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_64_8_64(v7, elementCopy, location);
        _os_log_impl(&dword_29C4D6000, oslog, OS_LOG_TYPE_INFO, "Added remote element to me: %@, remoteElement: %@", v7, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&_accessibilityAllRemoteElements, 0);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (void)_axCheckForExistingRemoteElements
{
  v17 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v14 = a2;
  _accessibilityContextId = [(UIWindowAccessibility *)self _accessibilityContextId];
  if (_accessibilityContextId)
  {
    memset(__b, 0, sizeof(__b));
    obj = [MEMORY[0x29EDBD800] remoteElementsForContextId:_accessibilityContextId];
    v10 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(__b[1] + 8 * v7);
        accessibilityContainer = [v12 accessibilityContainer];
        NSClassFromString(&cfstr_Wkcontentview.isa);
        isKindOfClass = objc_opt_isKindOfClass();
        *&v2 = MEMORY[0x29EDC9740](accessibilityContainer).n128_u64[0];
        if ((isKindOfClass & 1) == 0)
        {
          [(UIWindowAccessibility *)selfCopy _axUpdateForRemoteElement:v12];
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v16 count:{16, v2}];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
  }
}

- (BOOL)_accessibilityIsInCarPlay
{
  traitCollection = [(UIWindowAccessibility *)self traitCollection];
  v4 = [traitCollection userInterfaceIdiom] == 3;
  MEMORY[0x29EDC9740](traitCollection);
  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIWindowAccessibility;
  [(UIWindowAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UIWindowAccessibility *)selfCopy _axListenForRemoteElement];
  [(UIWindowAccessibility *)selfCopy _accessibilityRegisterRemoteElement:1];
}

- (id)_accessibilityFirstResponderCoalesceTimer
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIWindow___accessibilityFirstResponderCoalesceTimer);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetFirstResponderCoalesceTimer:(uint64_t)timer
{
  timerCopy = timer;
  location = 0;
  objc_storeStrong(&location, a2);
  if (timerCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (void)_setFirstResponder:(id)responder
{
  v28 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, responder);
  v24.receiver = selfCopy;
  v24.super_class = UIWindowAccessibility;
  [(UIWindowAccessibility *)&v24 _setFirstResponder:location[0]];
  if ([location[0] accessibilityElementsHidden])
  {
    v23 = AXLogCommon();
    v22 = 1;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      log = v23;
      type = v22;
      v3 = objc_opt_class();
      v21 = MEMORY[0x29EDC9748](v3);
      __os_log_helper_16_2_1_8_64(v27, v21);
      _os_log_impl(&dword_29C4D6000, log, type, "Accessibility ignoring responder change for hidden element: %@", v27, 0xCu);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v23, 0);
    v20 = 1;
  }

  else
  {
    if (location[0])
    {
      _accessibilityFirstResponderCoalesceTimer = [(UIWindowAccessibility *)selfCopy _accessibilityFirstResponderCoalesceTimer];
      MEMORY[0x29EDC9740](_accessibilityFirstResponderCoalesceTimer);
      if (!_accessibilityFirstResponderCoalesceTimer)
      {
        v8 = selfCopy;
        v7 = objc_alloc(MEMORY[0x29EDBD6A0]);
        v6 = MEMORY[0x29EDCA578];
        v4 = MEMORY[0x29EDCA578];
        v10 = v6;
        v9 = [v7 initWithTargetSerialQueue:?];
        [(UIWindowAccessibility *)v8 _accessibilitySetFirstResponderCoalesceTimer:v9];
        MEMORY[0x29EDC9740](v9);
        MEMORY[0x29EDC9740](v10);
      }

      _accessibilityFirstResponderCoalesceTimer2 = [(UIWindowAccessibility *)selfCopy _accessibilityFirstResponderCoalesceTimer];
      v14 = MEMORY[0x29EDCA5F8];
      v15 = -1073741824;
      v16 = 0;
      v17 = __44__UIWindowAccessibility__setFirstResponder___block_invoke;
      v18 = &unk_29F30C7C8;
      v19 = MEMORY[0x29EDC9748](location[0]);
      [_accessibilityFirstResponderCoalesceTimer2 afterDelay:&v14 processBlock:0.1];
      MEMORY[0x29EDC9740](_accessibilityFirstResponderCoalesceTimer2);
      objc_storeStrong(&v19, 0);
    }

    v20 = 0;
  }

  objc_storeStrong(location, 0);
}

void __44__UIWindowAccessibility__setFirstResponder___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x29EDC9748](a1[4]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(location, 0);
  }

  _UIAccessibilitySetAssociatedElementContextForNextNotification();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7448], 0);
  objc_storeStrong(location, 0);
}

- (CGPoint)warpPoint:(CGPoint)point
{
  pointCopy = point;
  selfCopy = self;
  v8 = a2;
  if (axShouldDisableHitpointWarping())
  {
    v11 = pointCopy;
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = UIWindowAccessibility;
    [(UIWindowAccessibility *)&v7 warpPoint:pointCopy];
    v11.x = v3;
    v11.y = v4;
  }

  y = v11.y;
  x = v11.x;
  result.y = y;
  result.x = x;
  return result;
}

- (id)_targetWindowForPathIndex:(int64_t)index atPoint:(CGPoint)point scenePointZ:(double)z forEvent:(id)event windowServerHitTestWindow:(id)window
{
  pointCopy = point;
  selfCopy = self;
  v27 = a2;
  indexCopy = index;
  zCopy = z;
  location = 0;
  objc_storeStrong(&location, event);
  v23 = 0;
  objc_storeStrong(&v23, window);
  v22 = 0;
  v20 = 0;
  objc_opt_class();
  v19 = __UIAccessibilityCastAsClass();
  v18 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  _hidEvent = [v18 _hidEvent];
  MEMORY[0x29EDC9740](v18);
  v21 = _hidEvent;
  if (_hidEvent && IOHIDEventGetSenderID() == 0x8000000817319380)
  {
    v17 = 0;
    objc_opt_class();
    v16 = __UIAccessibilityCastAsClass();
    v15 = MEMORY[0x29EDC9748](v16);
    objc_storeStrong(&v16, 0);
    v7 = v22;
    v22 = v15;
    MEMORY[0x29EDC9740](v7);
  }

  if (!v22)
  {
    v14.receiver = selfCopy;
    v14.super_class = UIWindowAccessibility;
    zCopy = [(UIWindowAccessibility *)&v14 _targetWindowForPathIndex:indexCopy atPoint:location scenePointZ:v23 forEvent:pointCopy.x windowServerHitTestWindow:pointCopy.y, zCopy];
    v9 = v22;
    v22 = zCopy;
    MEMORY[0x29EDC9740](v9);
  }

  v11 = MEMORY[0x29EDC9748](v22);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);

  return v11;
}

- (void)_orderFrontWithoutMakingKey
{
  selfCopy = self;
  v8 = a2;
  windowScene = [(UIWindowAccessibility *)self windowScene];
  keyWindow = [windowScene keyWindow];
  v5 = keyWindow == selfCopy;
  MEMORY[0x29EDC9740](keyWindow);
  *&v3 = MEMORY[0x29EDC9740](windowScene).n128_u64[0];
  v7 = v5;
  v6.receiver = selfCopy;
  v6.super_class = UIWindowAccessibility;
  [(UIWindowAccessibility *)&v6 _orderFrontWithoutMakingKey];
  if ([(UIWindowAccessibility *)selfCopy _axShouldPostScreenChangeOnOrderFront:v7])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

- (BOOL)_axShouldPostScreenChangeOnOrderFront:(BOOL)front
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  [(UIWindowAccessibility *)self windowLevel];
  isKindOfClass = 1;
  if (v3 != 15000001.0)
  {
    NSClassFromString(&cfstr_Uisnapshotwind.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (isKindOfClass)
  {
    return 0;
  }

  if (front)
  {
    return 0;
  }

  if (([(UIWindowAccessibility *)self safeBoolForKey:@"isEnabled"]& 1) == 0)
  {
    return 0;
  }

  NSClassFromString(&cfstr_Sbhudwindow.isa);
  return (objc_opt_isKindOfClass() & 1) == 0;
}

- (unsigned)_accessibilityContextId
{
  selfCopy = self;
  v7 = a2;
  v6 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  _contextId = [v4 _contextId];
  MEMORY[0x29EDC9740](v4);
  return _contextId;
}

- (BOOL)_accessibilityIsUserInteractionEnabled
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = MEMORY[0x29EDC9748](self);
  isUserInteractionEnabled = [v4[0] isUserInteractionEnabled];
  objc_storeStrong(v4, 0);
  return isUserInteractionEnabled;
}

- (BOOL)accessibilityElementsHidden
{
  v15 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v11 = a2;
  v9.receiver = self;
  v9.super_class = UIWindowAccessibility;
  accessibilityElementsHidden = [(UIWindowAccessibility *)&v9 accessibilityElementsHidden];
  if ((accessibilityElementsHidden & 1) == 0)
  {
    isDevicePasscodeLocked = _isDevicePasscodeLocked();
    v3 = 1;
    if (AXRequestingClient() != 16)
    {
      v3 = AXDoesRequestingClientDeserveAutomation() != 0;
    }

    v7 = v3;
    if (isDevicePasscodeLocked & 1) != 0 && v7 && ([*MEMORY[0x29EDC8008] safeBoolForKey:@"_accessibilityUIAppFocusedOnContinuityDisplay"])
    {
      oslog = AXLogCommon();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v14, selfCopy);
        _os_log_impl(&dword_29C4D6000, oslog, type, "App is active in Oneness session, not hiding window : %@", v14, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      isDevicePasscodeLocked = 0;
    }

    if ([(UIWindowAccessibility *)selfCopy _accessibilityIsInCarPlay])
    {
      isDevicePasscodeLocked = 0;
    }

    if ((isDevicePasscodeLocked & 1) != 0 && ([(UIWindowAccessibility *)selfCopy safeBoolForKey:@"_shouldCreateContextAsSecure"]& 1) == 0)
    {
      v4 = AXLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v13, selfCopy);
        _os_log_impl(&dword_29C4D6000, v4, OS_LOG_TYPE_DEFAULT, "Hiding this window since not secure: %@", v13, 0xCu);
      }

      objc_storeStrong(&v4, 0);
      accessibilityElementsHidden = 1;
    }
  }

  return accessibilityElementsHidden & 1;
}

- (BOOL)_accessibilitySceneContainsOnlySecureWindows
{
  v18 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v15 = a2;
  v14 = 1;
  v13 = MEMORY[0x29EDC9748](self);
  location = [v13 windowScene];
  memset(__b, 0, sizeof(__b));
  obj = [location windows];
  v9 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      if (([v11 isHidden] & 1) == 0 && (objc_msgSend(v11, "_accessibilityIsSecure") & 1) == 0)
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v7)
        {
          goto LABEL_10;
        }
      }
    }

    v14 = 0;
  }

LABEL_10:
  MEMORY[0x29EDC9740](obj);
  v3 = v14;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v13, 0);
  return v3 & 1;
}

- (BOOL)_accessibilityIsSecure
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIWindowAccessibility *)self _windowHostingScene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _accessibilityIsSecure = 1;
    if (([(UIWindowAccessibility *)selfCopy safeBoolForKey:@"_isSecure"]& 1) == 0)
    {
      _accessibilityIsSecure = [location[0] _accessibilityIsSecure];
    }

    v6 = _accessibilityIsSecure & 1;
  }

  else
  {
    v6 = [(UIWindowAccessibility *)selfCopy safeBoolForKey:@"_isSecure"]& 1;
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (id)_accessibilityGetRemoteElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIWindowAccessibility___accessibilityGetRemoteElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilitySetRemoteElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_accessibilityMLRemoteElement
{
  selfCopy = self;
  if (self)
  {
    _accessibilityGetRemoteElement = [(UIWindowAccessibility *)selfCopy _accessibilityGetRemoteElement];
    if (!_accessibilityGetRemoteElement)
    {
      v7 = MEMORY[0x29EDB8ED8];
      uuid = CFUUIDCreate(*MEMORY[0x29EDB8ED8]);
      v13 = CFUUIDCreateString(*v7, uuid);
      v1 = v13;
      location = v13;
      if (uuid)
      {
        CFRelease(uuid);
        uuid = 0;
      }

      v2 = [objc_alloc(MEMORY[0x29EDBD808]) initWithUUID:location andContextId:0];
      v3 = _accessibilityGetRemoteElement;
      _accessibilityGetRemoteElement = v2;
      *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
      if (_accessibilityGetRemoteElement)
      {
        [_accessibilityGetRemoteElement setOnClientSide:{1, v4}];
        [_accessibilityGetRemoteElement setRemoteChildrenDelegate:selfCopy];
        [_accessibilityGetRemoteElement setAccessibilityContainer:selfCopy];
      }

      [(UIWindowAccessibility *)selfCopy _accessibilitySetRemoteElement:_accessibilityGetRemoteElement];
      objc_storeStrong(&location, 0);
    }

    v12 = MEMORY[0x29EDC9748](_accessibilityGetRemoteElement);
    objc_storeStrong(&_accessibilityGetRemoteElement, 0);
  }

  else
  {
    v12 = 0;
  }

  v5 = v12;

  return v5;
}

- (void)_setBoundContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  [(UIWindowAccessibility *)selfCopy _accessibilityRegisterRemoteElement:0];
  v3.receiver = selfCopy;
  v3.super_class = UIWindowAccessibility;
  [(UIWindowAccessibility *)&v3 _setBoundContext:location[0]];
  [(UIWindowAccessibility *)selfCopy _accessibilityRegisterRemoteElement:1];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityRegisterRemoteElement:(BOOL)element
{
  v34[4] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v31 = a2;
  elementCopy = element;
  if ((AXProcessIsSystemApplication() & 1) == 0)
  {
    v29 = MEMORY[0x29EDC9748](selfCopy);
    _contextId = [v29 _contextId];
    if (_contextId)
    {
      windowScene = [v29 windowScene];
      v26 = [windowScene safeValueForKey:@"_FBSScene"];
      location = [v26 safeStringForKey:@"identifier"];
      v11 = [v26 safeValueForKey:@"identity"];
      v24 = [v11 safeStringForKey:@"workspaceIdentifier"];
      MEMORY[0x29EDC9740](v11);
      v21 = 0;
      RemoteViewForIdentityAndSceneIdentifier = 0;
      if (AXShouldCreateRemoteViewForEachLayer(v24))
      {
        v22 = [NSClassFromString(&cfstr_Rbsprocessiden.isa) safeValueForKey:@"identityOfCurrentProcess"];
        v21 = 1;
        RemoteViewForIdentityAndSceneIdentifier = AXShouldCreateRemoteViewForIdentityAndSceneIdentifier(v22, location, v24);
      }

      if (v21)
      {
        MEMORY[0x29EDC9740](v22);
      }

      v23 = RemoteViewForIdentityAndSceneIdentifier & 1;
      NSClassFromString(&cfstr_Uikeyboardwind.isa);
      if (objc_opt_isKindOfClass() & 1) == 0 && (v23)
      {
        v9 = [v26 safeValueForKey:@"hostProcess"];
        v10 = [v9 safeIntForKey:@"pid"];
        MEMORY[0x29EDC9740](v9);
        v20 = v10;
        if (!location)
        {
          objc_storeStrong(&location, &stru_2A2358AA8);
        }

        v19 = AXRemoteElementConcatSceneUUIDAndContextId();
        v4 = MEMORY[0x29EDBD800];
        v33[0] = @"ax-pid";
        v8 = [MEMORY[0x29EDBA070] numberWithInt:v20];
        v34[0] = v8;
        v33[1] = @"ax-context";
        v7 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:_contextId];
        v34[1] = v7;
        v33[2] = @"ax-uuid";
        v34[2] = v19;
        v33[3] = @"ax-register";
        v6 = [MEMORY[0x29EDBA070] numberWithBool:elementCopy];
        v34[3] = v6;
        v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
        [v4 registerRemoteElement:? remotePort:?];
        MEMORY[0x29EDC9740](v5);
        MEMORY[0x29EDC9740](v6);
        MEMORY[0x29EDC9740](v7);
        MEMORY[0x29EDC9740](v8);
        if (!elementCopy)
        {
          _accessibilityAllRemoteElements = [(UIWindowAccessibility *)selfCopy _accessibilityAllRemoteElements];
          v13 = MEMORY[0x29EDCA5F8];
          v14 = -1073741824;
          v15 = 0;
          v16 = __61__UIWindowAccessibility__accessibilityRegisterRemoteElement___block_invoke;
          v17 = &unk_29F30E3E0;
          v18 = MEMORY[0x29EDC9748](v19);
          [_accessibilityAllRemoteElements ax_removeObjectsFromArrayUsingBlock:&v13];
          MEMORY[0x29EDC9740](_accessibilityAllRemoteElements);
          objc_storeStrong(&v18, 0);
        }

        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&v24, 0);
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&windowScene, 0);
    }

    objc_storeStrong(&v29, 0);
  }
}

uint64_t __61__UIWindowAccessibility__accessibilityRegisterRemoteElement___block_invoke(void *a1, void *a2)
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

- (void)makeKeyAndVisible
{
  selfCopy = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = UIWindowAccessibility;
  [(UIWindowAccessibility *)&v10 makeKeyAndVisible];
  v3 = objc_opt_new();
  isClarityBoardEnabled = [v3 isClarityBoardEnabled];
  MEMORY[0x29EDC9740](v3);
  if (isClarityBoardEnabled)
  {
    if (NSClassFromString(&cfstr_Srsecurewindow.isa))
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = 0;
        objc_opt_class();
        v6 = __UIAccessibilityCastAsClass();
        v5 = MEMORY[0x29EDC9748](v6);
        objc_storeStrong(&v6, 0);
        v8 = v5;
        clearColor = [MEMORY[0x29EDC7A00] clearColor];
        [v5 setBackgroundColor:?];
        MEMORY[0x29EDC9740](clearColor);
        objc_storeStrong(&v8, 0);
      }
    }
  }
}

- (BOOL)_prefersFocusContainment
{
  selfCopy = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = UIWindowAccessibility;
  _prefersFocusContainment = [(UIWindowAccessibility *)&v4 _prefersFocusContainment];
  if (_prefersFocusContainment)
  {
    return _prefersFocusContainment & 1;
  }

  shouldGroupAccessibilityChildren = 1;
  if (([(UIWindowAccessibility *)selfCopy _accessibilityIsTouchContainer]& 1) == 0)
  {
    shouldGroupAccessibilityChildren = [(UIWindowAccessibility *)selfCopy shouldGroupAccessibilityChildren];
  }

  return shouldGroupAccessibilityChildren & 1;
}

@end