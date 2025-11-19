@interface EKUIDividedGridViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
@end

@implementation EKUIDividedGridViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKUIDividedGridViewCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)canBecomeFocused
{
  if (([(EKUIDividedGridViewCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = EKUIDividedGridViewCellAccessibility;
  return [(EKUIDividedGridViewCellAccessibility *)&v4 canBecomeFocused];
}

@end