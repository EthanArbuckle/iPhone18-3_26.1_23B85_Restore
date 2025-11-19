@interface _TVInfoCellViewAccessibility
- (id)accessibilityLabel;
@end

@implementation _TVInfoCellViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(_TVInfoCellViewAccessibility *)self safeValueForKey:@"dataViews"];
  v3 = __UIAccessibilitySafeClass();

  v4 = MEMORY[0x29ED3B640](v3);

  return v4;
}

@end