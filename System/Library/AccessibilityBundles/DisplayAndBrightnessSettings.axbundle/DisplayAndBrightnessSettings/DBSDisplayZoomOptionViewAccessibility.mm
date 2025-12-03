@interface DBSDisplayZoomOptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation DBSDisplayZoomOptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DBSDisplayZoomOptionView" hasInstanceMethod:@"optionNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DBSDisplayZoomOptionView" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(DBSDisplayZoomOptionViewAccessibility *)self safeValueForKey:@"optionNameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = DBSDisplayZoomOptionViewAccessibility;
  accessibilityTraits = [(DBSDisplayZoomOptionViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(DBSDisplayZoomOptionViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end