@interface HUQuickControlPushButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsRotationDirectionToggle;
- (id)_axIconIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUQuickControlPushButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUQuickControlPushButtonView" hasInstanceMethod:@"controlState" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"HUQuickControlPushButtonView" hasInstanceMethod:@"profile" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUQuickControlViewProfile" hasInstanceMethod:@"decorationIconDescriptor" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"HFIconDescriptor" hasRequiredInstanceMethod:@"identifier"];
}

- (id)_axIconIdentifier
{
  v2 = [(HUQuickControlPushButtonViewAccessibility *)self safeValueForKeyPath:@"profile.decorationIconDescriptor"];
  v3 = [v2 safeStringForKey:@"identifier"];

  return v3;
}

- (BOOL)_axIsRotationDirectionToggle
{
  _axIconIdentifier = [(HUQuickControlPushButtonViewAccessibility *)self _axIconIdentifier];
  v3 = [_axIconIdentifier axContainsString:@"HFImageIconIdentifierDecorationRotationDirection"];

  return v3;
}

- (id)accessibilityLabel
{
  _axIconIdentifier = [(HUQuickControlPushButtonViewAccessibility *)self _axIconIdentifier];
  v4 = accessibilityLabelForIconIdentifier(_axIconIdentifier);
  v5 = v4;
  if (v4)
  {
    accessibilityLabel = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HUQuickControlPushButtonViewAccessibility;
    accessibilityLabel = [(HUQuickControlPushButtonViewAccessibility *)&v9 accessibilityLabel];
  }

  v7 = accessibilityLabel;

  return v7;
}

- (id)accessibilityValue
{
  if ([(HUQuickControlPushButtonViewAccessibility *)self _axIsRotationDirectionToggle])
  {
    v3 = 0;
  }

  else if ([(HUQuickControlPushButtonViewAccessibility *)self _axIsOn])
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUQuickControlPushButtonViewAccessibility;
  return *MEMORY[0x29EDC7FE8] | [(HUQuickControlPushButtonViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F70];
}

@end