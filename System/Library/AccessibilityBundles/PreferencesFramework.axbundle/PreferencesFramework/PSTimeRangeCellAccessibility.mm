@interface PSTimeRangeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PSTimeRangeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSTimeRangeCell" hasInstanceVariable:@"_fromTitle" withType:"UILabel"];
  [v3 validateClass:@"PSTimeRangeCell" hasInstanceVariable:@"_fromTime" withType:"UILabel"];
  [v3 validateClass:@"PSTimeRangeCell" hasInstanceVariable:@"_toTitle" withType:"UILabel"];
  [v3 validateClass:@"PSTimeRangeCell" hasInstanceVariable:@"_toTime" withType:"UILabel"];
}

- (unint64_t)accessibilityTraits
{
  v4.receiver = self;
  v4.super_class = PSTimeRangeCellAccessibility;
  [(PSTimeRangeCellAccessibility *)&v4 accessibilityTraits];
  v2 = *MEMORY[0x29EDBDB18];
  return _AXTraitsRemoveTrait();
}

- (id)accessibilityLabel
{
  v3 = [(PSTimeRangeCellAccessibility *)self safeValueForKey:@"_fromTitle"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PSTimeRangeCellAccessibility *)self safeValueForKey:@"_fromTime"];
  v6 = [v5 accessibilityLabel];
  v7 = [(PSTimeRangeCellAccessibility *)self safeValueForKey:@"_toTitle"];
  v8 = [v7 accessibilityLabel];
  v9 = [(PSTimeRangeCellAccessibility *)self safeValueForKey:@"_toTime"];
  v12 = [v9 accessibilityLabel];
  v10 = __UIAXStringForVariables();

  return v10;
}

@end