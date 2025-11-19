@interface HRMetadataEducationTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setUpUI;
@end

@implementation HRMetadataEducationTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HRMetadataEducationTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"HRMetadataEducationTableViewCell" hasInstanceMethod:@"_setUpUI" withFullSignature:{"v", 0}];
  [v3 validateClass:@"HRMetadataEducationTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HRMetadataEducationTableViewCellAccessibility;
  [(HRMetadataEducationTableViewCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HRMetadataEducationTableViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v4];
}

- (id)accessibilityElements
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 contentView];

  if (v4)
  {
    v5 = [v3 contentView];
    v6 = [v5 _accessibleSubviews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HRMetadataEducationTableViewCellAccessibility;
    v6 = [(HRMetadataEducationTableViewCellAccessibility *)&v8 accessibilityElements];
  }

  return v6;
}

- (void)_setUpUI
{
  v3.receiver = self;
  v3.super_class = HRMetadataEducationTableViewCellAccessibility;
  [(HRMetadataEducationTableViewCellAccessibility *)&v3 _setUpUI];
  [(HRMetadataEducationTableViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end