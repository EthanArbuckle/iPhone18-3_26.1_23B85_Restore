@interface DBSDeviceAppearanceOptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation DBSDeviceAppearanceOptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DBSDeviceAppearanceOptionView" hasInstanceMethod:@"_label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DBSDeviceAppearanceOptionView" hasInstanceMethod:@"_checkmarkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DBSCheckmarkView" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(DBSDeviceAppearanceOptionViewAccessibility *)self safeUIViewForKey:@"_checkmarkView"];
  v4 = [v3 safeBoolForKey:@"isSelected"];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (id)accessibilityLabel
{
  v2 = [(DBSDeviceAppearanceOptionViewAccessibility *)self safeUIViewForKey:@"_label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end