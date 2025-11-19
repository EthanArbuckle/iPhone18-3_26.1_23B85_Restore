@interface MobilePhoneUILabelAccessibility
- (BOOL)_accessibilityAlwaysOrderedFirst;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MobilePhoneUILabelAccessibility

- (id)accessibilityValue
{
  v3 = [(MobilePhoneUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"PhoneNumberLabel"];

  if (v4)
  {
    v5 = [(MobilePhoneUILabelAccessibility *)self safeValueForKey:@"text"];
    v6 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v5];
    v7 = *MEMORY[0x29EDB8F00];
    [v6 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD968]];
    [v6 setAttribute:v7 forKey:*MEMORY[0x29EDBD960]];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MobilePhoneUILabelAccessibility;
    v6 = [(MobilePhoneUILabelAccessibility *)&v9 accessibilityValue];
  }

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(MobilePhoneUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"PhoneNumberLabel"];

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

    v7 = accessibilityLocalizedString(v6);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MobilePhoneUILabelAccessibility;
    v7 = [(MobilePhoneUILabelAccessibility *)&v9 accessibilityLabel];
  }

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(MobilePhoneUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"PhoneNumberLabel"];

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
  v3 = [(MobilePhoneUILabelAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"PhoneNumberLabel"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MobilePhoneUILabelAccessibility;
  return [(MobilePhoneUILabelAccessibility *)&v6 _accessibilityAlwaysOrderedFirst];
}

@end