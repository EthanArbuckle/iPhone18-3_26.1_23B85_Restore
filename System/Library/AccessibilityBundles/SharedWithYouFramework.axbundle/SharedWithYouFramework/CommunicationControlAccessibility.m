@interface CommunicationControlAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CommunicationControlAccessibility

- (id)accessibilityLabel
{
  v2 = [(CommunicationControlAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 isEnabled];
  v4 = *MEMORY[0x29EDC7F70];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *MEMORY[0x29EDC7FA8];
  }

  return v5 | v4;
}

@end