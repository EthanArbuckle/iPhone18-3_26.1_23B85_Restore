@interface NTKExtraLargeTimeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
@end

@implementation NTKExtraLargeTimeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKExtraLargeTimeView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
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