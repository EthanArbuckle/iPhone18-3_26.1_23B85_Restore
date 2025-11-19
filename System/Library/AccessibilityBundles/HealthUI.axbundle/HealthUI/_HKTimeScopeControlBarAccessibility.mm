@interface _HKTimeScopeControlBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _HKTimeScopeControlBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HKTimeScopeControl"];
  [v3 validateClass:@"_HKTimeScopeControlBar" isKindOfClass:@"HKTimeScopeControl"];
  [v3 validateClass:@"HKTimeScopeControl" hasInstanceMethod:@"_timeScopeForIndex:" withFullSignature:{"q", 0}];
  [v3 validateClass:@"_HKTimeScopeControlBar" hasInstanceVariable:@"_segments" withType:"UISegmentedControl"];
  [v3 validateClass:@"UISegmentedControl" hasInstanceVariable:@"_segments" withType:"NSMutableArray"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = _HKTimeScopeControlBarAccessibility;
  [(_HKTimeScopeControlBarAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(_HKTimeScopeControlBarAccessibility *)self safeValueForKey:@"_segments"];
  v4 = [v3 safeArrayForKey:@"_segments"];
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = v4;
      AXPerformSafeBlock();

      ++v5;
    }

    while (v5 < [v6 count]);
  }
}

@end