@interface InteractiveTimelineDateIndicatorAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation InteractiveTimelineDateIndicatorAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = InteractiveTimelineDateIndicatorAccessibility;
  [(InteractiveTimelineDateIndicatorAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(InteractiveTimelineDateIndicatorAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  [v3 setIsAccessibilityElement:0];
}

uint64_t __91__InteractiveTimelineDateIndicatorAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end