@interface MobilePhoneUIButtonAccessibility
- (BOOL)_accessibilityKeyboardKeyAllowsTouchTyping;
@end

@implementation MobilePhoneUIButtonAccessibility

- (BOOL)_accessibilityKeyboardKeyAllowsTouchTyping
{
  accessibilityIdentifier = [(MobilePhoneUIButtonAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"DeleteButton"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MobilePhoneUIButtonAccessibility;
  return [(MobilePhoneUIButtonAccessibility *)&v6 _accessibilityKeyboardKeyAllowsTouchTyping];
}

@end