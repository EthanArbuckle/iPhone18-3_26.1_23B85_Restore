@interface MobilePhoneUIButtonAccessibility
- (BOOL)_accessibilityKeyboardKeyAllowsTouchTyping;
@end

@implementation MobilePhoneUIButtonAccessibility

- (BOOL)_accessibilityKeyboardKeyAllowsTouchTyping
{
  v3 = [(MobilePhoneUIButtonAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"DeleteButton"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MobilePhoneUIButtonAccessibility;
  return [(MobilePhoneUIButtonAccessibility *)&v6 _accessibilityKeyboardKeyAllowsTouchTyping];
}

@end