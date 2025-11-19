@interface EKUIDividedGridViewTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
@end

@implementation EKUIDividedGridViewTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKUIDividedGridViewTableViewCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)canBecomeFocused
{
  if (([(EKUIDividedGridViewTableViewCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = EKUIDividedGridViewTableViewCellAccessibility;
  return [(EKUIDividedGridViewTableViewCellAccessibility *)&v4 canBecomeFocused];
}

@end