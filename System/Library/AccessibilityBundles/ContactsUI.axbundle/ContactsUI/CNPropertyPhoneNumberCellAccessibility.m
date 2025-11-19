@interface CNPropertyPhoneNumberCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNPropertyPhoneNumberCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CNPropertyPhoneNumberCellAccessibility;
  [(CNPropertyPhoneNumberCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNPropertyPhoneNumberCellAccessibility *)self safeValueForKey:@"emergencyImageView"];
  v4 = accessibilityLocalizedString(@"contact.cell.emergency");
  [v3 setAccessibilityLabel:v4];
}

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = CNPropertyPhoneNumberCellAccessibility;
  v3 = [(CNPropertyPhoneNumberCellAccessibility *)&v9 accessibilityLabel];
  v4 = [(CNPropertyPhoneNumberCellAccessibility *)self safeValueForKey:@"emergencyImageView"];
  v5 = v4;
  if (v4)
  {
    v8 = [v4 accessibilityLabel];
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)accessibilityValue
{
  v5.receiver = self;
  v5.super_class = CNPropertyPhoneNumberCellAccessibility;
  v2 = [(CNPropertyPhoneNumberCellAccessibility *)&v5 accessibilityValue];
  v3 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v2];
  [v3 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD968]];

  return v3;
}

@end