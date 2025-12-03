@interface SAUIElementViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadLayoutInformation;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SAUIElementViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SAUIElementViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SAUIElementViewController" hasInstanceMethod:@"_elementView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SAUILayoutSpecifyingElementViewController" hasInstanceMethod:@"layoutMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SAUIElementView" hasInstanceMethod:@"elementViewProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SAUIElementViewProviding" hasRequiredInstanceMethod:@"minimalView"];
}

- (void)_accessibilityLoadLayoutInformation
{
  v13 = 0;
  objc_opt_class();
  v3 = [(SAUIElementViewControllerAccessibility *)self safeUIViewForKey:@"_elementView"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  v5 = [v4 safeValueForKey:@"elementViewProvider"];
  v6 = [v5 safeUIViewForKey:@"minimalView"];
  v7 = [(SAUIElementViewControllerAccessibility *)self safeIntForKey:@"layoutMode"];
  if (v6)
  {
    v8 = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = @"minimal.view";
  }

  else
  {
    v9 = @"regular.view";
  }

  [v4 setAccessibilityIdentifier:v9];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __77__SAUIElementViewControllerAccessibility__accessibilityLoadLayoutInformation__block_invoke;
  v11[3] = &unk_29F306578;
  v12 = v4;
  v10 = v4;
  dispatch_async(MEMORY[0x29EDCA578], v11);
}

void __82__SAUIElementViewControllerAccessibility__axShiftFocusToElementViewForPowerAlerts__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) safeUIViewForKey:@"_elementView"];
  v3 = __UIAccessibilityCastAsSafeCategory();

  v4 = [v3 safeValueForKey:@"elementViewProvider"];
  MEMORY[0x29ED3A9D0](@"SBPowerAlertElement");
  if (objc_opt_isKindOfClass())
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v3);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SAUIElementViewControllerAccessibility;
  [(SAUIElementViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(SAUIElementViewControllerAccessibility *)self _accessibilityLoadLayoutInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SAUIElementViewControllerAccessibility;
  [(SAUIElementViewControllerAccessibility *)&v3 viewDidLoad];
  [(SAUIElementViewControllerAccessibility *)self _axShiftFocusToElementViewForPowerAlerts];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = SAUIElementViewControllerAccessibility;
  [(SAUIElementViewControllerAccessibility *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(SAUIElementViewControllerAccessibility *)self _axShiftFocusToElementViewForPowerAlerts];
}

@end