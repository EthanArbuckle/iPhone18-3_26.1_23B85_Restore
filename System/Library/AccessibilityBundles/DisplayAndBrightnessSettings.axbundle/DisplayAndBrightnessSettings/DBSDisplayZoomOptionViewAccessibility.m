@interface DBSDisplayZoomOptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation DBSDisplayZoomOptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DBSDisplayZoomOptionView" hasInstanceMethod:@"optionNameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DBSDisplayZoomOptionView" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(DBSDisplayZoomOptionViewAccessibility *)self safeValueForKey:@"optionNameLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = DBSDisplayZoomOptionViewAccessibility;
  v3 = [(DBSDisplayZoomOptionViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(DBSDisplayZoomOptionViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end