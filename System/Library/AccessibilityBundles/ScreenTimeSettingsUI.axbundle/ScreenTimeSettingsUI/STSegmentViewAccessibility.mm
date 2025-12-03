@interface STSegmentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation STSegmentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STSegmentView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STSegmentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(STSegmentViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(STSegmentViewAccessibility *)self safeUIViewForKey:@"detailLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end