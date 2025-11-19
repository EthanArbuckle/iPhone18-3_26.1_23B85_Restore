@interface HUQuickControlPushButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsRotationDirectionToggle;
- (id)_axIconIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUQuickControlPushButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUQuickControlPushButtonView" hasInstanceMethod:@"controlState" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"HUQuickControlPushButtonView" hasInstanceMethod:@"profile" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUQuickControlViewProfile" hasInstanceMethod:@"decorationIconDescriptor" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"HFIconDescriptor" hasRequiredInstanceMethod:@"identifier"];
}

- (id)_axIconIdentifier
{
  v2 = [(HUQuickControlPushButtonViewAccessibility *)self safeValueForKeyPath:@"profile.decorationIconDescriptor"];
  v3 = [v2 safeStringForKey:@"identifier"];

  return v3;
}

- (BOOL)_axIsRotationDirectionToggle
{
  v2 = [(HUQuickControlPushButtonViewAccessibility *)self _axIconIdentifier];
  v3 = [v2 axContainsString:@"HFImageIconIdentifierDecorationRotationDirection"];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(HUQuickControlPushButtonViewAccessibility *)self _axIconIdentifier];
  v4 = accessibilityLabelForIconIdentifier(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HUQuickControlPushButtonViewAccessibility;
    v6 = [(HUQuickControlPushButtonViewAccessibility *)&v9 accessibilityLabel];
  }

  v7 = v6;

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