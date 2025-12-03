@interface STCustomizeDaysListControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkSelectedSpecifier;
- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier;
@end

@implementation STCustomizeDaysListControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STCustomizeDaysListController" hasInstanceMethod:@"selectedDaySpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STCustomizeDaysListController" hasInstanceMethod:@"timePickerSpecifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STCustomizeDaysListController" hasInstanceMethod:@"_showOrHidePickerSpecifierForSpecifier:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityMarkSelectedSpecifier
{
  v19 = *MEMORY[0x29EDCA608];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  specifiers = [v3 specifiers];

  v5 = [specifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(specifiers);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        v10 = __UIAccessibilityCastAsSafeCategory();
        [v10 _accessibilitySetIsExpandedSTUICell:0];
      }

      v6 = [specifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_opt_class();
  v11 = [(STCustomizeDaysListControllerAccessibility *)self safeValueForKey:@"selectedDaySpecifier"];
  v12 = __UIAccessibilityCastAsSafeCategory();

  [v12 _accessibilitySetIsExpandedSTUICell:1];
  v13 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v22 = *MEMORY[0x29EDCA608];
  v20.receiver = self;
  v20.super_class = STCustomizeDaysListControllerAccessibility;
  [(STCustomizeDaysListControllerAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v19 = 0;
  objc_opt_class();
  v3 = [(STCustomizeDaysListControllerAccessibility *)self safeValueForKey:@"timePickerSpecifier"];
  v4 = __UIAccessibilityCastAsClass();

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = v5;
  specifiers = [v5 specifiers];

  v8 = [specifiers countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(specifiers);
        }

        if (*(*(&v15 + 1) + 8 * i) != v4)
        {
          v19 = 0;
          objc_opt_class();
          v12 = __UIAccessibilityCastAsSafeCategory();
          if (v19 == 1)
          {
            abort();
          }

          v13 = v12;
          [v12 _accessibilitySetIsExpandableSTUICell:1];
        }
      }

      v9 = [specifiers countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)_showOrHidePickerSpecifierForSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = STCustomizeDaysListControllerAccessibility;
  [(STCustomizeDaysListControllerAccessibility *)&v4 _showOrHidePickerSpecifierForSpecifier:specifier];
  [(STCustomizeDaysListControllerAccessibility *)self _accessibilityMarkSelectedSpecifier];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end