@interface _TVInfoTableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation _TVInfoTableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVInfoTableView" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVInfoTableView" hasInstanceMethod:@"infoViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVInfoTableView" hasInstanceMethod:@"footerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVProductBannerView"];
  [v3 validateClass:@"_TVProductBannerView" hasInstanceMethod:@"stackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVProductStackView"];
  [v3 validateClass:@"_TVProductStackView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(_TVInfoTableViewAccessibility *)self safeValueForKey:@"headerView"];
  [v3 axSafelyAddObject:v4];

  v5 = [(_TVInfoTableViewAccessibility *)self safeValueForKey:@"infoViews"];
  [v3 axSafelyAddObjectsFromArray:v5];

  v6 = [(_TVInfoTableViewAccessibility *)self safeValueForKey:@"footerView"];
  [v3 axSafelyAddObject:v6];

  return v3;
}

@end