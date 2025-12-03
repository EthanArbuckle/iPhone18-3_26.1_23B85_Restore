@interface UIInputSwitcherSegmentedTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation UIInputSwitcherSegmentedTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIInputSwitcherSegmentedTableCell" hasInstanceMethod:@"segmentControl" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityElements
{
  v3 = [(UIInputSwitcherSegmentedTableCellAccessibility *)self safeValueForKey:@"segmentControl"];
  _accessibilitySortedElementsWithin = [v3 _accessibilitySortedElementsWithin];
  MEMORY[0x29EDC9740](v3);

  return _accessibilitySortedElementsWithin;
}

@end