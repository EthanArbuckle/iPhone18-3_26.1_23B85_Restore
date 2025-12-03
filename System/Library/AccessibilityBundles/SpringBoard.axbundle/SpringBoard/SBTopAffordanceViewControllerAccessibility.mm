@interface SBTopAffordanceViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axMainSwitcher;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupView;
- (void)loadView;
@end

@implementation SBTopAffordanceViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBTopAffordanceViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBTopAffordanceViewController" hasInstanceMethod:@"dotsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSwitcherController" hasProperty:@"contentViewController" withType:"@"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleShelves" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSwitcherShelfViewController" hasInstanceVariable:@"_contentViewController" withType:"SBFluidSwitcherViewController"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBTopAffordanceViewControllerAccessibility;
  [(SBTopAffordanceViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBTopAffordanceViewControllerAccessibility *)self _axMarkupView];
}

- (void)_axMarkupView
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];

  [view _setAccessibilityCustomActionsBlock:&__block_literal_global_16];
}

id __59__SBTopAffordanceViewControllerAccessibility__axMarkupView__block_invoke()
{
  v7[1] = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDBDFA8] server];
  v1 = [v0 isShelfSwitcherVisible];

  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x29EDC78E0]);
    v3 = accessibilityLocalizedString(@"top.affordance.button.dismiss.shelf");
    v4 = [v2 initWithName:v3 actionHandler:&__block_literal_global_328];

    v7[0] = v4;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __59__SBTopAffordanceViewControllerAccessibility__axMarkupView__block_invoke_2()
{
  v0 = [MEMORY[0x29EDBDFA8] server];
  [v0 dismissShelfSwitcher];

  return 1;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SBTopAffordanceViewControllerAccessibility;
  [(SBTopAffordanceViewControllerAccessibility *)&v3 loadView];
  [(SBTopAffordanceViewControllerAccessibility *)self _axMarkupView];
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

@end