@interface UIInputSwitcherSegmentedTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation UIInputSwitcherSegmentedTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIInputSwitcherSegmentedTableCell" hasInstanceMethod:@"segmentControl" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityElements
{
  v3 = [(UIInputSwitcherSegmentedTableCellAccessibility *)self safeValueForKey:@"segmentControl"];
  v4 = [v3 _accessibilitySortedElementsWithin];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end