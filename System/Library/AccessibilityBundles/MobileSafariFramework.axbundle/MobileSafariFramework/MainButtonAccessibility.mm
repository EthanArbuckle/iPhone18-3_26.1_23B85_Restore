@interface MainButtonAccessibility
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
@end

@implementation MainButtonAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(MainButtonAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"MoreMenuItem"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"FindOnPage"))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = !UIAccessibilityIsVoiceOverRunning();
  }

  return v3;
}

- (BOOL)accessibilityActivate
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 performPrimaryAction];

  return 1;
}

@end