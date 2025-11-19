@interface CAMSemanticStyleStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMSemanticStyleStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMSemanticStyleStatusIndicator" hasInstanceMethod:@"semanticStyle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMSemanticStyle" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(CAMSemanticStyleStatusIndicatorAccessibility *)self safeValueForKey:@"semanticStyle"];
  v3 = [v2 safeStringForKey:@"displayName"];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMSemanticStyleStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMSemanticStyleStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end