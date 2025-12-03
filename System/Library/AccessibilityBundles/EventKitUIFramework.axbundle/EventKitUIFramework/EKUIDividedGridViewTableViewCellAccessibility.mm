@interface EKUIDividedGridViewTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
@end

@implementation EKUIDividedGridViewTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKUIDividedGridViewTableViewCell" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
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