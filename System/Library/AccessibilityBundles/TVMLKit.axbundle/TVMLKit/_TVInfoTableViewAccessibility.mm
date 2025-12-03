@interface _TVInfoTableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation _TVInfoTableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVInfoTableView" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVInfoTableView" hasInstanceMethod:@"infoViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVInfoTableView" hasInstanceMethod:@"footerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVProductBannerView"];
  [validationsCopy validateClass:@"_TVProductBannerView" hasInstanceMethod:@"stackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVProductStackView"];
  [validationsCopy validateClass:@"_TVProductStackView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(_TVInfoTableViewAccessibility *)self safeValueForKey:@"headerView"];
  [array axSafelyAddObject:v4];

  v5 = [(_TVInfoTableViewAccessibility *)self safeValueForKey:@"infoViews"];
  [array axSafelyAddObjectsFromArray:v5];

  v6 = [(_TVInfoTableViewAccessibility *)self safeValueForKey:@"footerView"];
  [array axSafelyAddObject:v6];

  return array;
}

@end