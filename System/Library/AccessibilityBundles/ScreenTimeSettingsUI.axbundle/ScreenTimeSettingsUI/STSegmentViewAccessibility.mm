@interface STSegmentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation STSegmentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STSegmentView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STSegmentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(STSegmentViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(STSegmentViewAccessibility *)self safeUIViewForKey:@"detailLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end