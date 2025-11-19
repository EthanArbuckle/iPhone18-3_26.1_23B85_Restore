@interface _SBTopAffordanceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityMultitaskingElements;
- (id)_accessibilityWindowControlsView;
- (id)_axContainerApplicationLabel;
- (id)_axMoveWindowElement;
- (id)accessibilityElements;
- (int)_accessibilitySceneApplicationPid;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axCreateRemoteElementIfNecessary;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation _SBTopAffordanceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBTopAffordanceViewController" hasInstanceMethod:@"sceneHandle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSceneHandle" hasInstanceMethod:@"sceneIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBTopAffordanceViewController" hasInstanceVariable:@"_windowControlsViewController" withType:"SWKWindowControlsViewController"];
  [v3 validateClass:@"SWKWindowControlsViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SBApplicationSceneHandle" hasInstanceMethod:@"application" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplication" hasInstanceMethod:@"processState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
  [v3 validateClass:@"SBReusableSnapshotItemContainer"];
  [v3 validateClass:@"_UIContextMenuContainerView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = _SBTopAffordanceViewAccessibility;
  [(_SBTopAffordanceViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(_SBTopAffordanceViewAccessibility *)self _axCreateRemoteElementIfNecessary];
}

- (id)accessibilityElements
{
  if ([(_SBTopAffordanceViewAccessibility *)self _axShouldUseRemoteElement]&& !_AXSAutomationEnabled())
  {
    v3 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _SBTopAffordanceViewAccessibility;
    v3 = [(_SBTopAffordanceViewAccessibility *)&v5 accessibilityElements];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SBTopAffordanceViewAccessibility;
  [(_SBTopAffordanceViewAccessibility *)&v3 layoutSubviews];
  [(_SBTopAffordanceViewAccessibility *)self _axCreateRemoteElementIfNecessary];
}

- (void)dealloc
{
  v3 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityRemoteElement];
  [v3 unregister];

  [(_SBTopAffordanceViewAccessibility *)self _accessibilitySetRemoteElement:0];
  v4.receiver = self;
  v4.super_class = _SBTopAffordanceViewAccessibility;
  [(_SBTopAffordanceViewAccessibility *)&v4 dealloc];
}

- (void)_axCreateRemoteElementIfNecessary
{
  if ([(_SBTopAffordanceViewAccessibility *)self _axShouldUseRemoteElement])
  {
    v3 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityViewController];
    v4 = [v3 safeValueForKey:@"sceneHandle"];

    v5 = [v4 safeStringForKey:@"sceneIdentifier"];
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:%@", @"window-controls", v5];
    v7 = MEMORY[0x29EDBD800];
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __70___SBTopAffordanceViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke;
    v21[3] = &unk_29F2FBA68;
    v8 = v6;
    v22 = v8;
    v9 = [v7 remoteElementForBlock:v21];
    v10 = v9;
    if (v9 && ([v9 accessibilityContainer], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == self))
    {
      v12 = v10;
    }

    else
    {
      [v10 unregister];
      v12 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:v8 andRemotePid:-[_SBTopAffordanceViewAccessibility _accessibilitySceneApplicationPid](self andContextId:{"_accessibilitySceneApplicationPid"), 0}];

      [v12 setRemoteChildrenDelegate:self];
      [v12 setAccessibilityContainer:self];
      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x29EDCA5F8];
      v18[1] = 3221225472;
      v18[2] = __70___SBTopAffordanceViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke_2;
      v18[3] = &unk_29F2FBA90;
      objc_copyWeak(&v19, &location);
      [v12 setPidRetrieval:v18];
      [(_SBTopAffordanceViewAccessibility *)self _accessibilitySetRemoteElement:v12];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    v13 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityWindowControlsView];
    [v13 setAccessibilityContainer:v12];
    objc_initWeak(&location, v13);
    objc_initWeak(&from, self);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __70___SBTopAffordanceViewAccessibility__axCreateRemoteElementIfNecessary__block_invoke_3;
    v14[3] = &unk_29F2FBAB8;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, &from);
    [v13 _setAccessibilityLabelBlock:v14];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (id)_accessibilityMultitaskingElements
{
  v10[2] = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v4 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityWindowControlsView];
  v5 = v4;
  if (v4)
  {
    v10[0] = v4;
    v6 = [(_SBTopAffordanceViewAccessibility *)self _axMoveWindowElement];
    v10[1] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:2];
    [v3 axSafelyAddObjectsFromArray:v7];
  }

  v8 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityContextMenuContainerView];
  [v3 axSafelyAddObject:v8];

  return v3;
}

- (id)_accessibilityWindowControlsView
{
  objc_opt_class();
  v3 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityViewController];
  v4 = [v3 safeValueForKey:@"_windowControlsViewController"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 view];
  if ([v6 _accessibilityViewIsVisible])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (int)_accessibilitySceneApplicationPid
{
  v2 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityViewController];
  v3 = [v2 safeValueForKey:@"sceneHandle"];
  v4 = [v3 safeValueForKey:@"application"];
  v5 = [v4 safeValueForKey:@"processState"];
  v6 = [v5 safeIntForKey:@"pid"];

  return v6;
}

- (id)_axMoveWindowElement
{
  v18[1] = *MEMORY[0x29EDCA608];
  v3 = [(_SBTopAffordanceViewAccessibility *)self __axMoveWindowElement];

  if (!v3)
  {
    LOBYTE(location) = 0;
    objc_opt_class();
    v4 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbreusablesnap_0.isa)];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __57___SBTopAffordanceViewAccessibility__axMoveWindowElement__block_invoke;
    v17[3] = &unk_29F2FBB00;
    v17[4] = self;
    [v6 setAccessibilityLabelBlock:v17];
    v7 = accessibilityLocalizedString(@"app.move.window.hint");
    [v6 setAccessibilityHint:v7];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __57___SBTopAffordanceViewAccessibility__axMoveWindowElement__block_invoke_2;
    v14[3] = &unk_29F2FBB28;
    objc_copyWeak(&v15, &location);
    v14[4] = self;
    [v6 _setAccessibilityFrameBlock:v14];
    v18[0] = *MEMORY[0x29EDBD608];
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v18 count:1];
    [v6 _iosAccessibilitySetValue:v8 forAttribute:12015];

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __57___SBTopAffordanceViewAccessibility__axMoveWindowElement__block_invoke_3;
    v12[3] = &unk_29F2FBB50;
    v9 = v5;
    v13 = v9;
    [v6 _setAccessibilityCustomContentBlock:v12];
    [(_SBTopAffordanceViewAccessibility *)self __axSetMoveWindowElement:v6];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v10 = [(_SBTopAffordanceViewAccessibility *)self __axMoveWindowElement];

  return v10;
}

- (id)_axContainerApplicationLabel
{
  v2 = [(_SBTopAffordanceViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbreusablesnap_0.isa)];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end