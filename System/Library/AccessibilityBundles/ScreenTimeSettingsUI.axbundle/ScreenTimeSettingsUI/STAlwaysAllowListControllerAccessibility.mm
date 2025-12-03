@interface STAlwaysAllowListControllerAccessibility
- (id)specifiers;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STAlwaysAllowListControllerAccessibility

- (id)specifiers
{
  v16 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = STAlwaysAllowListControllerAccessibility;
  specifiers = [(STAlwaysAllowListControllerAccessibility *)&v14 specifiers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * i) accessibilitySetIdentification:@"AXAlwaysAllowSpecifierIdentification"];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x29EDCA608];

  return specifiers;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = STAlwaysAllowListControllerAccessibility;
  [(STAlwaysAllowListControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(STAlwaysAllowListControllerAccessibility *)self safeValueForKey:@"specifiers"];
}

@end