@interface MessageViewStatusIndicatorManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateImageViews;
@end

@implementation MessageViewStatusIndicatorManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MessageViewStatusIndicatorManager" hasInstanceMethod:@"updateImageViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MessageViewStatusIndicatorManager" hasInstanceMethod:@"statusIndicatorImageViews" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = MessageViewStatusIndicatorManagerAccessibility;
  [(MessageViewStatusIndicatorManagerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(MessageViewStatusIndicatorManagerAccessibility *)self safeValueForKey:@"statusIndicatorImageViews"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 enumerateObjectsUsingBlock:&__block_literal_global_12];
}

void __92__MessageViewStatusIndicatorManagerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIsAccessibilityElement:1];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
}

- (void)updateImageViews
{
  v3.receiver = self;
  v3.super_class = MessageViewStatusIndicatorManagerAccessibility;
  [(MessageViewStatusIndicatorManagerAccessibility *)&v3 updateImageViews];
  [(MessageViewStatusIndicatorManagerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end