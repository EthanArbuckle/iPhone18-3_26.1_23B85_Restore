@interface UIInputSetHostViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)_accessibilityScannerGroupTraits;
@end

@implementation UIInputSetHostViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIRemoteKeyboardWindow"];
  objc_storeStrong(location, 0);
}

- (unint64_t)_accessibilityScannerGroupTraits
{
  v12 = self;
  v11 = a2;
  v9.receiver = self;
  v9.super_class = UIInputSetHostViewAccessibility;
  v10 = [(UIInputSetHostViewAccessibility *)&v9 _accessibilityScannerGroupTraits];
  v2 = [(UIInputSetHostViewAccessibility *)v12 _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uiremotekeyboa_4.isa)];
  v5 = v2 != 0;
  MEMORY[0x29EDC9740](v2);
  v8 = v5;
  if (AXUIKeyboardIsOOP())
  {
    v6 = 0;
    v4 = 1;
    if (!v5)
    {
      v7 = [(UIInputSetHostViewAccessibility *)v12 _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uitexteffectsw.isa)];
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
    v10 |= 1uLL;
  }

  return v10;
}

@end