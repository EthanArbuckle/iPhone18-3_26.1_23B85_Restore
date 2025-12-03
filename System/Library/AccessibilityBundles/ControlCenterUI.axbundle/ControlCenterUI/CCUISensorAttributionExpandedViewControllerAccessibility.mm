@interface CCUISensorAttributionExpandedViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMoveToPrivacyHeaderView;
- (void)viewDidLoad;
@end

@implementation CCUISensorAttributionExpandedViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUISensorAttributionExpandedViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CCUISensorAttributionExpandedViewController" hasInstanceMethod:@"setExpanded:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"CCUISensorAttributionExpandedViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUISensorAttributionExpandedViewController" hasSwiftField:@"stackView" withSwiftType:"UIStackView"];
  [validationsCopy validateClass:@"CCUISensorAttributionPrivacyHeaderView"];
  [validationsCopy validateClass:@"BSUIScrollView"];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUISensorAttributionExpandedViewControllerAccessibility;
  [(CCUISensorAttributionExpandedViewControllerAccessibility *)&v3 viewDidLoad];
  [(CCUISensorAttributionExpandedViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityMoveToPrivacyHeaderView
{
  objc_opt_class();
  v3 = [(CCUISensorAttributionExpandedViewControllerAccessibility *)self safeSwiftValueForKey:@"stackView"];
  v4 = __UIAccessibilityCastAsClass();

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  arrangedSubviews = [v4 arrangedSubviews];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __97__CCUISensorAttributionExpandedViewControllerAccessibility__accessibilityMoveToPrivacyHeaderView__block_invoke;
  v6[3] = &unk_29F2B6DF8;
  v6[4] = &v7;
  [arrangedSubviews enumerateObjectsUsingBlock:v6];

  if (-[CCUISensorAttributionExpandedViewControllerAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"isExpanded") && [v8[5] _accessibilityViewIsVisible])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v8[5]);
  }

  _Block_object_dispose(&v7, 8);
}

void __97__CCUISensorAttributionExpandedViewControllerAccessibility__accessibilityMoveToPrivacyHeaderView__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  MEMORY[0x29C2D22C0](@"CCUISensorAttributionPrivacyHeaderView");
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = CCUISensorAttributionExpandedViewControllerAccessibility;
  [(CCUISensorAttributionExpandedViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  view = [v3 view];
  v5 = [view _accessibilityDescendantOfType:MEMORY[0x29C2D22C0](@"BSUIScrollView")];

  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __102__CCUISensorAttributionExpandedViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F2B6D90;
  objc_copyWeak(&v7, &location);
  [v5 _setAccessibilityViewIsModalBlock:v6];
  AXPerformBlockOnMainThreadAfterDelay();
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __102__CCUISensorAttributionExpandedViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isExpanded"];

  return v2;
}

@end