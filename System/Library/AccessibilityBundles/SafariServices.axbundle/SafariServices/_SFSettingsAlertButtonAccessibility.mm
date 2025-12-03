@interface _SFSettingsAlertButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _SFSettingsAlertButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFSettingsAlertButton" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_SFSettingsAlertButton" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SFSettingsAlertButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_SFSettingsAlertButton" isKindOfClass:@"UIControl"];
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
  accessibilityIdentifier = [v7 accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"checkmark"])
  {
    v9 = [(_SFSettingsAlertButtonAccessibility *)self safeUIViewForKey:@"imageView"];
    _accessibilityViewIsVisible = [v9 _accessibilityViewIsVisible];

    v11 = *MEMORY[0x29EDC7FC0];
    if ((_accessibilityViewIsVisible & 1) == 0)
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
  accessibilityUserDefinedLabel = [(_SFSettingsAlertButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
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