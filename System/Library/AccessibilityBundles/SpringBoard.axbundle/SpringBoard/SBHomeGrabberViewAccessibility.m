@interface SBHomeGrabberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation SBHomeGrabberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHomeGrabberView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBHomeGrabberView" hasInstanceVariable:@"_touchState" withType:"q"];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7FA0];
  v3 = [(SBHomeGrabberViewAccessibility *)self safeIntegerForKey:@"_touchState"];
  v4 = *MEMORY[0x29EDC7FA8];
  if (v3 != 1)
  {
    v4 = 0;
  }

  return v4 | v2;
}

@end