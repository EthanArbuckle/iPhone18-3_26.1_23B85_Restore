@interface UIInputSetHostViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)_accessibilityScannerGroupTraits;
@end

@implementation UIInputSetHostViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIRemoteKeyboardWindow"];
  objc_storeStrong(location, 0);
}

- (unint64_t)_accessibilityScannerGroupTraits
{
  selfCopy = self;
  v11 = a2;
  v9.receiver = self;
  v9.super_class = UIInputSetHostViewAccessibility;
  _accessibilityScannerGroupTraits = [(UIInputSetHostViewAccessibility *)&v9 _accessibilityScannerGroupTraits];
  v2 = [(UIInputSetHostViewAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uiremotekeyboa_4.isa)];
  v5 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  v8 = v5;
  if (AXUIKeyboardIsOOP())
  {
    v6 = 0;
    v4 = 1;
    if (!v5)
    {
      v7 = [(UIInputSetHostViewAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uitexteffectsw.isa)];
      v6 = 1;
      v4 = v7 != 0;
    }

    v8 = v4;
    if (v6)
    {
      MEMORY[0x29EDC9740](v7);
    }
  }

  if (v8)
  {
    _accessibilityScannerGroupTraits |= 1uLL;
  }

  return _accessibilityScannerGroupTraits;
}

@end