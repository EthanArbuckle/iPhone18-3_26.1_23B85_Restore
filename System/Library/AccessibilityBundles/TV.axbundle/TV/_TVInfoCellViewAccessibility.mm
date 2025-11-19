@interface _TVInfoCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _TVInfoCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVInfoCellView" hasInstanceMethod:@"headerContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVInfoCellView" hasInstanceMethod:@"dataViews" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(_TVInfoCellViewAccessibility *)self safeValueForKey:@"headerContentView"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(_TVInfoCellViewAccessibility *)self safeValueForKey:@"dataViews"];
  v6 = __UIAccessibilityCastAsClass();

  v9 = MEMORY[0x29ED3B320](v6);
  v7 = __UIAXStringForVariables();

  return v7;
}

@end