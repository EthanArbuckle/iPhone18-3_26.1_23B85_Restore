@interface MainButtonAccessibility
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
@end

@implementation MainButtonAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(MainButtonAccessibility *)self accessibilityIdentifier];
  if ([v2 isEqualToString:@"MoreMenuItem"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"FindOnPage"))
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