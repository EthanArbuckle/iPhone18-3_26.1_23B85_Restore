@interface SBAppSwitcherPageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsNotFirstElement;
- (BOOL)_accessibilityScrollToVisible;
- (CGRect)_accessibilityVisibleFrame;
- (id)_accessibilityAdditionalHitTestElements;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_accessibilityPrimaryApplication;
- (id)_accessibilityResizeGrabber;
- (id)_accessibilityScrollStatus;
- (id)accessibilityElements;
- (id)accessibilityRemoteSubstituteChildren:(id)children;
- (id)accessibilityValue;
- (int)_accessibilitySceneApplicationPid;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axCreateRemoteElementIfNecessary;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SBAppSwitcherPageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBAppSwitcherPageView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBAppSwitcherPageView" hasInstanceVariable:@"_hitTestBlocker" withType:"UIView"];
  [validationsCopy validateClass:@"SBAppSwitcherPageView" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppSwitcherPageView" hasInstanceVariable:@"_bottomRightResizeGrabberPillView" withType:"SBAppResizeGrabberView"];
  [validationsCopy validateClass:@"SBAppSwitcherPageView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"allItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDisplayItem" hasInstanceMethod:@"uniqueIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBApplication" hasInstanceMethod:@"processState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBAppSwitcherPageViewAccessibility;
  [(SBAppSwitcherPageViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBAppSwitcherPageViewAccessibility *)self _axCreateRemoteElementIfNecessary];
}

- (id)accessibilityElements
{
  if ([(SBAppSwitcherPageViewAccessibility *)self _axShouldUseRemoteElement]&& !_AXSAutomationEnabled())
  {
    accessibilityElements = MEMORY[0x29EDB8E90];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBAppSwitcherPageViewAccessibility;
    accessibilityElements = [(SBAppSwitcherPageViewAccessibility *)&v5 accessibilityElements];
  }

  return accessibilityElements;
}

- (id)_accessibilityAdditionalHitTestElements
{
  if ([(SBAppSwitcherPageViewAccessibility *)self _axShouldUseRemoteElement])
  {
    v8 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    subviews = [v3 subviews];
    _accessibilityAdditionalHitTestElements = [subviews axFilterObjectsUsingBlock:&__block_literal_global_4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBAppSwitcherPageViewAccessibility;
    _accessibilityAdditionalHitTestElements = [(SBAppSwitcherPageViewAccessibility *)&v7 _accessibilityAdditionalHitTestElements];
  }

  return _accessibilityAdditionalHitTestElements;
}

- (id)accessibilityRemoteSubstituteChildren:(id)children
{
  v7[1] = *MEMORY[0x29EDCA608];
  _accessibilityResizeGrabber = [(SBAppSwitcherPageViewAccessibility *)self _accessibilityResizeGrabber];
  v4 = _accessibilityResizeGrabber;
  if (_accessibilityResizeGrabber)
  {
    v7[0] = _accessibilityResizeGrabber;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x29EDB8E90];
  }

  return v5;
}

- (BOOL)_accessibilityIsNotFirstElement
{
  v2 = [(SBAppSwitcherPageViewAccessibility *)self _accessibilityValueForKey:@"AXBundleIdentifier"];
  v3 = [v2 isEqualToString:*MEMORY[0x29EDBD640]];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(SBAppSwitcherPageViewAccessibility *)self _accessibilityValueForKey:@"AXBundleIdentifier"];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  server = [MEMORY[0x29EDBDFA8] server];
  runningAppProcesses = [server runningAppProcesses];

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __56__SBAppSwitcherPageViewAccessibility_accessibilityValue__block_invoke;
  v12[3] = &unk_29F2FBE00;
  v6 = v3;
  v13 = v6;
  v14 = &v15;
  [runningAppProcesses enumerateObjectsUsingBlock:v12];
  v11.receiver = self;
  v11.super_class = SBAppSwitcherPageViewAccessibility;
  accessibilityValue = [(SBAppSwitcherPageViewAccessibility *)&v11 accessibilityValue];
  if (*(v16 + 24) == 1 && ([v6 isEqualToString:*MEMORY[0x29EDBD670]] & 1) == 0)
  {
    v10 = accessibilityLocalizedString(@"app.running.status");
    v8 = __UIAXStringForVariables();

    accessibilityValue = v8;
  }

  _Block_object_dispose(&v15, 8);

  return accessibilityValue;
}

void __56__SBAppSwitcherPageViewAccessibility_accessibilityValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 safeValueForKey:@"bundleIdentifier"];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_accessibilityScrollStatus
{
  v2 = [(SBAppSwitcherPageViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbappswitcheri.isa)];
  v3 = [v2 safeValueForKey:@"delegate"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"currentPage"];
  [v5 unsignedIntegerValue];

  objc_opt_class();
  v6 = [v4 safeValueForKey:@"_items"];
  v7 = __UIAccessibilityCastAsClass();

  [v7 count];
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"app.switcher.location");
  v10 = AXFormatInteger();
  v11 = AXFormatInteger();
  v12 = [v8 stringWithFormat:v9, v10, v11];

  return v12;
}

- (BOOL)_accessibilityScrollToVisible
{
  v4.receiver = self;
  v4.super_class = SBAppSwitcherPageViewAccessibility;
  _accessibilityScrollToVisible = [(SBAppSwitcherPageViewAccessibility *)&v4 _accessibilityScrollToVisible];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
  return _accessibilityScrollToVisible;
}

- (CGRect)_accessibilityVisibleFrame
{
  [(SBAppSwitcherPageViewAccessibility *)self accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  window = [(SBAppSwitcherPageViewAccessibility *)self window];
  [window bounds];
  v27.origin.x = v12;
  v27.origin.y = v13;
  v27.size.width = v14;
  v27.size.height = v15;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v25 = CGRectIntersection(v24, v27);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBAppSwitcherPageViewAccessibility;
  [(SBAppSwitcherPageViewAccessibility *)&v3 layoutSubviews];
  [(SBAppSwitcherPageViewAccessibility *)self _axCreateRemoteElementIfNecessary];
}

- (void)dealloc
{
  _accessibilityRemoteElement = [(SBAppSwitcherPageViewAccessibility *)self _accessibilityRemoteElement];
  [_accessibilityRemoteElement unregister];

  [(SBAppSwitcherPageViewAccessibility *)self _accessibilitySetRemoteElement:0];
  v4.receiver = self;
  v4.super_class = SBAppSwitcherPageViewAccessibility;
  [(SBAppSwitcherPageViewAccessibility *)&v4 dealloc];
}

- (void)_axCreateRemoteElementIfNecessary
{
  if ([(SBAppSwitcherPageViewAccessibility *)self _axShouldUseRemoteElement])
  {
    _accessibilityPrimaryApplication = [(SBAppSwitcherPageViewAccessibility *)self _accessibilityPrimaryApplication];
    v4 = [_accessibilityPrimaryApplication safeStringForKey:@"uniqueIdentifier"];

    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%@", @"resize-grabber", v4];
    v6 = MEMORY[0x29EDBD800];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __71__SBAppSwitcherPageViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke;
    v16[3] = &unk_29F2FBA68;
    v7 = v5;
    v17 = v7;
    v8 = [v6 remoteElementForBlock:v16];
    v9 = v8;
    if (v8 && ([v8 accessibilityContainer], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == self))
    {
      v11 = v9;
    }

    else
    {
      [v9 unregister];
      v11 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:v7 andRemotePid:-[SBAppSwitcherPageViewAccessibility _accessibilitySceneApplicationPid](self andContextId:{"_accessibilitySceneApplicationPid"), 0}];

      [v11 setRemoteChildrenDelegate:self];
      [v11 setAccessibilityContainer:self];
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3221225472;
      v13[2] = __71__SBAppSwitcherPageViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke_2;
      v13[3] = &unk_29F2FBA90;
      objc_copyWeak(&v14, &location);
      [v11 setPidRetrieval:v13];
      [(SBAppSwitcherPageViewAccessibility *)self _accessibilitySetRemoteElement:v11];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    _accessibilityResizeGrabber = [(SBAppSwitcherPageViewAccessibility *)self _accessibilityResizeGrabber];
    [_accessibilityResizeGrabber setAccessibilityContainer:v11];
  }
}

uint64_t __71__SBAppSwitcherPageViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __71__SBAppSwitcherPageViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilitySceneApplicationPid];

  return v2;
}

- (id)_accessibilityResizeGrabber
{
  v2 = [(SBAppSwitcherPageViewAccessibility *)self safeValueForKey:@"_bottomRightResizeGrabberPillView"];
  if ([v2 _accessibilityViewIsVisible])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int)_accessibilitySceneApplicationPid
{
  _accessibilityPrimaryApplication = [(SBAppSwitcherPageViewAccessibility *)self _accessibilityPrimaryApplication];
  v3 = [_accessibilityPrimaryApplication safeStringForKey:@"bundleIdentifier"];

  v4 = AXSBApplicationControllerSharedInstance();
  v5 = [v4 applicationWithBundleIdentifier:v3];
  v6 = [v5 safeValueForKey:@"processState"];
  v7 = [v6 safeIntForKey:@"pid"];

  return v7;
}

- (id)_accessibilityPrimaryApplication
{
  v2 = [(SBAppSwitcherPageViewAccessibility *)self safeValueForKey:@"delegate"];
  v3 = [v2 safeValueForKey:@"appLayout"];
  v4 = [v3 safeArrayForKey:@"allItems"];
  firstObject = [v4 firstObject];

  return firstObject;
}

@end