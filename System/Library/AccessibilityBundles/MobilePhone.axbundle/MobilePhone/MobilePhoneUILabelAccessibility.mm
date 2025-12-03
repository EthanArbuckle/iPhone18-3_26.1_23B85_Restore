@interface MobilePhoneUILabelAccessibility
- (BOOL)_accessibilityAlwaysOrderedFirst;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MobilePhoneUILabelAccessibility

- (id)accessibilityValue
{
  accessibilityIdentifier = [(MobilePhoneUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"PhoneNumberLabel"];

  if (v4)
  {
    v5 = [(MobilePhoneUILabelAccessibility *)self safeValueForKey:@"text"];
    accessibilityValue = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v5];
    v7 = *MEMORY[0x29EDB8F00];
    [accessibilityValue setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD968]];
    [accessibilityValue setAttribute:v7 forKey:*MEMORY[0x29EDBD960]];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MobilePhoneUILabelAccessibility;
    accessibilityValue = [(MobilePhoneUILabelAccessibility *)&v9 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(MobilePhoneUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"PhoneNumberLabel"];

  if (v4)
  {
    v5 = [(MobilePhoneUILabelAccessibility *)self safeValueForKey:@"text"];
    if ([v5 length])
    {
      v6 = @"phone.display";
    }

    else
    {
      v6 = @"empty.phone.display";
    }

    accessibilityLabel = accessibilityLocalizedString(v6);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MobilePhoneUILabelAccessibility;
    accessibilityLabel = [(MobilePhoneUILabelAccessibility *)&v9 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  accessibilityIdentifier = [(MobilePhoneUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"PhoneNumberLabel"];

  if (v4)
  {
    return *MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7FD8] | *MEMORY[0x29EDC7FF0];
  }

  v6.receiver = self;
  v6.super_class = MobilePhoneUILabelAccessibility;
  return [(MobilePhoneUILabelAccessibility *)&v6 accessibilityTraits];
}

- (BOOL)_accessibilityAlwaysOrderedFirst
{
  accessibilityIdentifier = [(MobilePhoneUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"PhoneNumberLabel"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MobilePhoneUILabelAccessibility;
  return [(MobilePhoneUILabelAccessibility *)&v6 _accessibilityAlwaysOrderedFirst];
}

@end