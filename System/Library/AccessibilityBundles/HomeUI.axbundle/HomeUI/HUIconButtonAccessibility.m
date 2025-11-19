@interface HUIconButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUIconButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUIconButton" hasInstanceMethod:@"iconDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUNameAndIconEditorCell" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUNameItemModuleController" hasInstanceMethod:@"supportsCustomIconEditing" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HUIconButtonAccessibility *)self safeValueForKey:@"iconDescriptor"];
  v4 = [v3 safeValueForKey:@"identifier"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = accessibilityHomeLocalizedString(@"icon.button.label");
  v9 = accessibilityLabelForIconIdentifier(v5);
  v7 = AXCFormattedString();

  return v7;
}

- (id)accessibilityIdentifier
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = [(HUIconButtonAccessibility *)self safeValueForKeyPath:@"iconDescriptor.identifier"];
  v4 = [v2 stringWithFormat:@"IconButton: %@", v3];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUIconButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HUIconButtonAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F88];
}

@end