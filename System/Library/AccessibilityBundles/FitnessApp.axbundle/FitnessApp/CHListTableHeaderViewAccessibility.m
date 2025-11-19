@interface CHListTableHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CHListTableHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHListTableHeaderView" hasInstanceVariable:@"_dateLabel" withType:"UILabel"];
  [v3 validateClass:@"CHListTableHeaderView" hasInstanceVariable:@"_detailLabel" withType:"_UITableViewHeaderFooterViewLabel"];
}

- (id)accessibilityLabel
{
  v3 = [(CHListTableHeaderViewAccessibility *)self safeValueForKey:@"_dateLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(CHListTableHeaderViewAccessibility *)self safeValueForKey:@"_detailLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CHListTableHeaderViewAccessibility;
  return UIAccessibilityTraitHeader | [(CHListTableHeaderViewAccessibility *)&v3 accessibilityTraits];
}

@end