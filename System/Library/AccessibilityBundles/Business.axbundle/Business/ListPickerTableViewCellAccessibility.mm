@interface ListPickerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation ListPickerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Business.ListPickerTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Business.ListPickerTableViewCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Business.ListPickerTableViewCell" hasInstanceMethod:@"accessibilitySelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"Business.ListPickerTableViewCell" hasInstanceMethod:@"iconImageView" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v12.receiver = self;
  v12.super_class = ListPickerTableViewCellAccessibility;
  accessibilityTraits = [(ListPickerTableViewCellAccessibility *)&v12 accessibilityTraits];
  v4 = [(ListPickerTableViewCellAccessibility *)self safeUIViewForKey:@"contentView"];
  [v4 alpha];
  v6 = v5;
  objc_opt_class();
  v7 = [(ListPickerTableViewCellAccessibility *)self safeValueForKey:@"iconImageView"];
  v8 = __UIAccessibilityCastAsClass();

  image = [v8 image];

  if ([(ListPickerTableViewCellAccessibility *)self safeBoolForKey:@"accessibilitySelected"])
  {
    if (image)
    {
      v10 = *MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7F70];
LABEL_6:
      accessibilityTraits |= v10;
    }
  }

  else
  {
    if (v6 < 1.0)
    {
      v10 = *MEMORY[0x29EDC7FA8];
      goto LABEL_6;
    }

    if (image)
    {
      accessibilityTraits = accessibilityTraits & ~*MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7F70];
    }
  }

  return accessibilityTraits;
}

@end