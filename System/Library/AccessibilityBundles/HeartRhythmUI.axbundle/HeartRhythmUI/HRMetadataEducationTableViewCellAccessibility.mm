@interface HRMetadataEducationTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setUpUI;
@end

@implementation HRMetadataEducationTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HRMetadataEducationTableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"HRMetadataEducationTableViewCell" hasInstanceMethod:@"_setUpUI" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"HRMetadataEducationTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HRMetadataEducationTableViewCellAccessibility;
  [(HRMetadataEducationTableViewCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HRMetadataEducationTableViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

- (id)accessibilityElements
{
  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  contentView = [v3 contentView];

  if (contentView)
  {
    contentView2 = [v3 contentView];
    _accessibleSubviews = [contentView2 _accessibleSubviews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HRMetadataEducationTableViewCellAccessibility;
    _accessibleSubviews = [(HRMetadataEducationTableViewCellAccessibility *)&v8 accessibilityElements];
  }

  return _accessibleSubviews;
}

- (void)_setUpUI
{
  v3.receiver = self;
  v3.super_class = HRMetadataEducationTableViewCellAccessibility;
  [(HRMetadataEducationTableViewCellAccessibility *)&v3 _setUpUI];
  [(HRMetadataEducationTableViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end