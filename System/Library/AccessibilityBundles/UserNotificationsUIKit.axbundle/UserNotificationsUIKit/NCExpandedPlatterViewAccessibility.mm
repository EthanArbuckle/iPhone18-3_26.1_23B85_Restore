@interface NCExpandedPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NCExpandedPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFTouchPassThroughView"];
  [validationsCopy validateClass:@"NCExpandedPlatterView" hasInstanceVariable:@"_notificationContentView" withType:"NCNotificationSeamlessContentView"];
  [validationsCopy validateClass:@"NCExpandedPlatterView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"NCExpandedPlatterViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"NCExpandedPlatterViewControllerDelegate" hasOptionalInstanceMethod:@"expandedPlatterViewController:requestsDismissalWithReason:userInfo:"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = NCExpandedPlatterViewAccessibility;
  [(NCExpandedPlatterViewAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v3 = [(NCExpandedPlatterViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  [v3 setAccessibilityViewIsModal:1];
  v4 = [(NCExpandedPlatterViewAccessibility *)self safeValueForKey:@"_notificationContentView"];
  if (v4)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v16.receiver = self;
    v16.super_class = NCExpandedPlatterViewAccessibility;
    accessibilityCustomActions = [(NCExpandedPlatterViewAccessibility *)&v16 accessibilityCustomActions];
    [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

    objc_initWeak(&location, self);
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = accessibilityLocalizedString(@"dismiss");
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3221225472;
    v12 = __80__NCExpandedPlatterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v13 = &unk_29F316FB0;
    objc_copyWeak(&v14, &location);
    v9 = [v7 initWithName:v8 actionHandler:&v10];

    [array axSafelyAddObject:{v9, v10, v11, v12, v13}];
    [v4 setAccessibilityCustomActions:array];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

uint64_t __80__NCExpandedPlatterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Sbftouchpassth.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __80__NCExpandedPlatterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __80__NCExpandedPlatterViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = __UIAccessibilityCastAsClass();

  v4 = [MEMORY[0x29EDC7DA8] viewControllerForView:v3];
  v5 = [v4 safeValueForKey:@"_delegate"];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 expandedPlatterViewController:v6 requestsDismissalWithReason:@"dismissalReasonHomeAction" userInfo:0];
}

@end