@interface NTKExtraLargeTimeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
@end

@implementation NTKExtraLargeTimeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKExtraLargeTimeView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)canBecomeFocused
{
  if (([(NTKExtraLargeTimeViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = NTKExtraLargeTimeViewAccessibility;
  return [(NTKExtraLargeTimeViewAccessibility *)&v4 canBecomeFocused];
}

@end