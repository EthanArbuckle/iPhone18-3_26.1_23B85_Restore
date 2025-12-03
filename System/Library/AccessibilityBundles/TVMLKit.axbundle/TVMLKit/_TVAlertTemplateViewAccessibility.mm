@interface _TVAlertTemplateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setViewsAbove:(id)above;
- (void)setViewsBelow:(id)below;
@end

@implementation _TVAlertTemplateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVAlertTemplateView" hasInstanceMethod:@"viewsAbove" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVAlertTemplateView" hasInstanceMethod:@"viewsBelow" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v33 = *MEMORY[0x29EDCA608];
  v30.receiver = self;
  v30.super_class = _TVAlertTemplateViewAccessibility;
  [(_TVAlertTemplateViewAccessibility *)&v30 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(_TVAlertTemplateViewAccessibility *)self safeValueForKey:@"viewsAbove"];
  v4 = __UIAccessibilityCastAsClass();

  v29 = 0;
  objc_opt_class();
  v5 = [(_TVAlertTemplateViewAccessibility *)self safeValueForKey:@"viewsBelow"];
  v6 = __UIAccessibilityCastAsClass();

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
  v9 = MEMORY[0x29EDC7F80];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    v12 = *MEMORY[0x29EDC7F80];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v25 + 1) + 8 * i) setAccessibilityTraits:v12];
      }

      v10 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    v18 = *v9;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v21 + 1) + 8 * j) setAccessibilityTraits:{v18, v21}];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x29EDCA608];
}

- (void)setViewsAbove:(id)above
{
  v4.receiver = self;
  v4.super_class = _TVAlertTemplateViewAccessibility;
  [(_TVAlertTemplateViewAccessibility *)&v4 setViewsAbove:above];
  [(_TVAlertTemplateViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setViewsBelow:(id)below
{
  v4.receiver = self;
  v4.super_class = _TVAlertTemplateViewAccessibility;
  [(_TVAlertTemplateViewAccessibility *)&v4 setViewsBelow:below];
  [(_TVAlertTemplateViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end