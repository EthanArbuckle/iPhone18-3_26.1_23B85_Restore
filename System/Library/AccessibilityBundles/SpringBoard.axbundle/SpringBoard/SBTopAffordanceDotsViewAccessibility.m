@interface SBTopAffordanceDotsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGRect)axBounds;
- (id)_accessibilityRoleDescription;
- (id)_axMainSwitcher;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SBTopAffordanceDotsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBTopAffordanceDotsView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController"];
  [v3 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_deviceApplicationSceneHandle" withType:"SBDeviceApplicationSceneHandle"];
  [v3 validateClass:@"SBDeviceApplicationSceneHandle" isKindOfClass:@"SBSceneHandle"];
  [v3 validateClass:@"SBSceneHandle" hasInstanceMethod:@"sceneIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"continuousExposeStripTongueViewTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"personality" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherPersonality" hasInstanceMethod:@"rootModifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBDefaultImplementationsSwitcherModifier" hasInstanceMethod:@"isContinuousExposeStripVisible" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(SBTopAffordanceDotsViewAccessibility *)self _axMainSwitcher];
  v4 = [v3 _axIsChamoisSwitcherVisible];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = SBTopAffordanceDotsViewAccessibility;
    return [(SBTopAffordanceDotsViewAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBTopAffordanceDotsViewAccessibility;
    return *MEMORY[0x29EDBDBE8] | [(SBTopAffordanceDotsViewAccessibility *)&v6 accessibilityTraits];
  }
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"top.affordance.button");
  v5 = [(SBTopAffordanceDotsViewAccessibility *)self _axApplicationDisplayName];
  v6 = v5;
  v7 = &stru_2A22F9D20;
  if (v5)
  {
    v7 = v5;
  }

  v8 = [v3 stringWithFormat:v4, v7];

  return v8;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(SBTopAffordanceDotsViewAccessibility *)self _axMainSwitcher];
  v3 = [v2 _axIsAppSwitcherPeeking];

  return v3 ^ 1;
}

- (id)accessibilityHint
{
  v3 = [(SBTopAffordanceDotsViewAccessibility *)self _axMainSwitcher];
  v4 = [v3 _axIsChamoisSwitcherVisible];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = SBTopAffordanceDotsViewAccessibility;
    v5 = [(SBTopAffordanceDotsViewAccessibility *)&v7 accessibilityHint];
  }

  else
  {
    v5 = accessibilityLocalizedString(@"top.affordance.button.hint");
  }

  return v5;
}

- (id)accessibilityCustomActions
{
  v3 = [(SBTopAffordanceDotsViewAccessibility *)self _axMainSwitcher];
  v4 = [v3 _axFluidSwitcherViewController];

  v5 = [v4 safeValueForKey:@"personality.rootModifier"];
  v6 = [v5 safeBoolForKey:@"isContinuousExposeStripVisible"];

  if (v6)
  {
    v17.receiver = self;
    v17.super_class = SBTopAffordanceDotsViewAccessibility;
    v7 = [(SBTopAffordanceDotsViewAccessibility *)&v17 accessibilityCustomActions];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9 = accessibilityLocalizedString(@"stage.manager.app.strip.custom.action.label");
    v12 = MEMORY[0x29EDCA5F8];
    v13 = 3221225472;
    v14 = __66__SBTopAffordanceDotsViewAccessibility_accessibilityCustomActions__block_invoke;
    v15 = &unk_29F2FBC38;
    v16 = v4;
    v10 = [v8 initWithName:v9 actionHandler:&v12];

    v7 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v10, v12, v13, v14, v15}];
  }

  return v7;
}

uint64_t __66__SBTopAffordanceDotsViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

void __66__SBTopAffordanceDotsViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) continuousExposeStripTongueViewTapped:0];
  v1 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v1, 0);
}

- (id)_accessibilityRoleDescription
{
  v2 = [(SBTopAffordanceDotsViewAccessibility *)self _accessibilityWindow];
  v3 = [v2 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1];

  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 _accessibilityViewController];

    v6 = [v5 safeValueForKey:@"_deviceApplicationSceneHandle"];
    v7 = [v6 safeStringForKey:@"sceneIdentifier"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __69__SBTopAffordanceDotsViewAccessibility__accessibilityRoleDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Sbmedusadecora_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGRect)axBounds
{
  [(SBTopAffordanceDotsViewAccessibility *)self bounds];

  return CGRectInset(*&v2, -10.0, -10.0);
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

@end