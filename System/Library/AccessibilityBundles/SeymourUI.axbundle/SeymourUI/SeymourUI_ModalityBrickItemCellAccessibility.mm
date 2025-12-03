@interface SeymourUI_ModalityBrickItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SeymourUI_ModalityBrickItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.ModalityBrickItemCell" hasSwiftField:@"titleLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"SeymourUI.ModalityBrickItemCell" hasSwiftField:@"iconView" withSwiftType:"ActivityTypeIconView"];
  [validationsCopy validateClass:@"SeymourUI.ActivityTypeIconView" isKindOfClass:@"UIView"];
}

- (id)accessibilityLabel
{
  v2 = [(SeymourUI_ModalityBrickItemCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SeymourUI_ModalityBrickItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SeymourUI_ModalityBrickItemCellAccessibility *)&v3 accessibilityTraits];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = SeymourUI_ModalityBrickItemCellAccessibility;
  [(SeymourUI_ModalityBrickItemCellAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(SeymourUI_ModalityBrickItemCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = [(SeymourUI_ModalityBrickItemCellAccessibility *)self safeSwiftValueForKey:@"iconView"];
  v5 = [(SeymourUI_ModalityBrickItemCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  accessibilityLabel = [v5 accessibilityLabel];

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __90__SeymourUI_ModalityBrickItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v11[3] = &unk_29F2F65C0;
  v7 = accessibilityLabel;
  v12 = v7;
  [v3 _setAccessibilityIdentifierBlock:v11];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __90__SeymourUI_ModalityBrickItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v9[3] = &unk_29F2F65C0;
  v10 = v7;
  v8 = v7;
  [v4 _setAccessibilityIdentifierBlock:v9];
}

@end