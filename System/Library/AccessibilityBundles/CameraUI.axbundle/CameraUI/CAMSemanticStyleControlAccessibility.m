@interface CAMSemanticStyleControlAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CAMSemanticStyleControlAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CAMSemanticStyleControlAccessibility;
  [(CAMSemanticStyleControlAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CAMSemanticStyleControlAccessibility *)self safeValueForKey:@"_resetButton"];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_5];
}

@end