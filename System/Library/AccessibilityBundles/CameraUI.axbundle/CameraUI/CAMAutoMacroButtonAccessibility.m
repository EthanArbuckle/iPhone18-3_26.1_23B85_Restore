@interface CAMAutoMacroButtonAccessibility
- (id)accessibilityValue;
@end

@implementation CAMAutoMacroButtonAccessibility

- (id)accessibilityValue
{
  if ([(CAMAutoMacroButtonAccessibility *)self safeBoolForKey:@"active"])
  {
    v2 = @"on.state";
  }

  else
  {
    v2 = @"off.state";
  }

  v3 = accessibilityCameraUILocalizedString(v2);

  return v3;
}

@end