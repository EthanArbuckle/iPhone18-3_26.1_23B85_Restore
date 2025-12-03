@interface PKLinkedAppIconViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
- (void)linkedApplicationDidChangeState:(id)state;
@end

@implementation PKLinkedAppIconViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKLinkedAppIconView" hasInstanceVariable:@"_iconButton" withType:"WLEasyToHitCustomButton"];
  [validationsCopy validateClass:@"PKLinkedAppIconView" hasInstanceMethod:@"linkedApplication" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKLinkedAppIconView" hasInstanceMethod:@"linkedApplicationDidChangeState:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PKLinkedApplication" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PKLinkedAppIconViewAccessibility;
  [(PKLinkedAppIconViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKLinkedAppIconViewAccessibility *)self safeValueForKey:@"_iconButton"];
  v4 = [(PKLinkedAppIconViewAccessibility *)self safeValueForKey:@"linkedApplication"];
  v5 = __UIAccessibilitySafeClass();

  objc_opt_class();
  v6 = [v5 safeValueForKey:@"displayName"];
  v7 = __UIAccessibilityCastAsClass();

  [v3 setAccessibilityLabel:v7];
  v8 = accessibilityLocalizedString(@"passbook.app.hint.open");
  [v3 setAccessibilityHint:v8];
}

- (void)linkedApplicationDidChangeState:(id)state
{
  stateCopy = state;
  [(PKLinkedAppIconViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v5.receiver = self;
  v5.super_class = PKLinkedAppIconViewAccessibility;
  [(PKLinkedAppIconViewAccessibility *)&v5 linkedApplicationDidChangeState:stateCopy];
}

- (void)didMoveToWindow
{
  [(PKLinkedAppIconViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3.receiver = self;
  v3.super_class = PKLinkedAppIconViewAccessibility;
  [(PKLinkedAppIconViewAccessibility *)&v3 didMoveToWindow];
}

@end