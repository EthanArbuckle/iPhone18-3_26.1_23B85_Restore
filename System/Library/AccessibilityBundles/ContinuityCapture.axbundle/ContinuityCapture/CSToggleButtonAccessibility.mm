@interface CSToggleButtonAccessibility
- (id)accessibilityValue;
@end

@implementation CSToggleButtonAccessibility

- (id)accessibilityValue
{
  v2 = [(CSToggleButtonAccessibility *)self safeUnsignedIntegerForKey:@"toggleState"]- 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityLocalizedString(off_29F37EE80[v2]);
  }

  return v3;
}

@end