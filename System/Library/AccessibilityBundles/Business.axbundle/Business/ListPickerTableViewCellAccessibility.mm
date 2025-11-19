@interface ListPickerTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation ListPickerTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Business.ListPickerTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Business.ListPickerTableViewCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Business.ListPickerTableViewCell" hasInstanceMethod:@"accessibilitySelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"Business.ListPickerTableViewCell" hasInstanceMethod:@"iconImageView" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v12.receiver = self;
  v12.super_class = ListPickerTableViewCellAccessibility;
  v3 = [(ListPickerTableViewCellAccessibility *)&v12 accessibilityTraits];
  v4 = [(ListPickerTableViewCellAccessibility *)self safeUIViewForKey:@"contentView"];
  [v4 alpha];
  v6 = v5;
  objc_opt_class();
  v7 = [(ListPickerTableViewCellAccessibility *)self safeValueForKey:@"iconImageView"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 image];

  if ([(ListPickerTableViewCellAccessibility *)self safeBoolForKey:@"accessibilitySelected"])
  {
    if (v9)
    {
      v10 = *MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7F70];
LABEL_6:
      v3 |= v10;
    }
  }

  else
  {
    if (v6 < 1.0)
    {
      v10 = *MEMORY[0x29EDC7FA8];
      goto LABEL_6;
    }

    if (v9)
    {
      v3 = v3 & ~*MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7F70];
    }
  }

  return v3;
}

@end