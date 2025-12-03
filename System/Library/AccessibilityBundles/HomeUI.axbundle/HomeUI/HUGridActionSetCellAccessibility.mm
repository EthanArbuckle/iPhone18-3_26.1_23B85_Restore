@interface HUGridActionSetCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
@end

@implementation HUGridActionSetCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUGridActionSetCell" hasInstanceMethod:@"titleAndDescriptionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridActionSetTitleAndDescriptionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridActionSetTitleAndDescriptionView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridActionSetCell" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUIconView" hasInstanceMethod:@"displayStyle" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"HUIconView" hasInstanceMethod:@"iconDescriptor" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"HFIconDescriptor" hasRequiredInstanceMethod:@"identifier"];
  [validationsCopy validateClass:@"HUGridActionSetCell" isKindOfClass:@"HIGridCell"];
  [validationsCopy validateClass:@"HUGridActionSetPlaceholderCell" isKindOfClass:@"HUGridActionSetCell"];
  [validationsCopy validateClass:@"HUGridCellAccessibility" hasInstanceMethod:@"_axIsActiveGridCell" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(HUGridActionSetCellAccessibility *)self safeValueForKey:@"titleAndDescriptionView"];
  v3 = [v2 safeValueForKey:@"titleLabel"];
  v6 = [v2 safeValueForKey:@"descriptionLabel"];
  v4 = __AXStringForVariables();

  return v4;
}

- (id)accessibilityIdentifier
{
  v3 = [(HUGridActionSetCellAccessibility *)self safeValueForKey:@"iconView"];
  v4 = [v3 safeIntegerForKey:@"displayStyle"];

  v5 = MEMORY[0x29EDBA0F8];
  v6 = [(HUGridActionSetCellAccessibility *)self safeValueForKeyPath:@"titleAndDescriptionView.titleLabel.text"];
  v7 = [(HUGridActionSetCellAccessibility *)self safeValueForKeyPath:@"iconView.iconDescriptor.identifier"];
  v8 = [v5 stringWithFormat:@"%@, %@, %ld", v6, v7, v4];

  return v8;
}

@end