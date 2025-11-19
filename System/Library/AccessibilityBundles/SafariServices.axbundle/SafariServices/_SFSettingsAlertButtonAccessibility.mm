@interface _SFSettingsAlertButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _SFSettingsAlertButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFSettingsAlertButton" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIControl" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_SFSettingsAlertButton" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SFSettingsAlertButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SFSettingsAlertButton" isKindOfClass:@"UIControl"];
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7F70];
  v4 = [(_SFSettingsAlertButtonAccessibility *)self safeBoolForKey:@"isEnabled"];
  v5 = *MEMORY[0x29EDC7FA8];
  if (v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  v7 = [(_SFSettingsAlertButtonAccessibility *)self safeValueForKey:@"image"];
  v8 = [v7 accessibilityIdentifier];
  if ([v8 isEqualToString:@"checkmark"])
  {
    v9 = [(_SFSettingsAlertButtonAccessibility *)self safeUIViewForKey:@"imageView"];
    v10 = [v9 _accessibilityViewIsVisible];

    v11 = *MEMORY[0x29EDC7FC0];
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v6 |= v11;
  }

  else
  {
  }

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(_SFSettingsAlertButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    [(_SFSettingsAlertButtonAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    [(_SFSettingsAlertButtonAccessibility *)self safeStringForKey:@"text"];
  }
  v4 = ;

  return v4;
}

@end