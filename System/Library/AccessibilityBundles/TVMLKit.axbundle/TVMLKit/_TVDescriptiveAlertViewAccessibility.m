@interface _TVDescriptiveAlertViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setChildViews:(id)a3;
@end

@implementation _TVDescriptiveAlertViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVDescriptiveAlertView" hasInstanceVariable:@"_viewsAboveScrollView" withType:"NSArray"];
  [v3 validateClass:@"_TVDescriptiveAlertView" hasInstanceMethod:@"setChildViews:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = _TVDescriptiveAlertViewAccessibility;
  [(_TVDescriptiveAlertViewAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v3 = [(_TVDescriptiveAlertViewAccessibility *)self safeValueForKey:@"_viewsAboveScrollView"];
  v4 = __UIAccessibilityCastAsClass();

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = *MEMORY[0x29EDC7F80];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        NSClassFromString(&cfstr_Tvlabel.isa);
        if (objc_opt_isKindOfClass())
        {
          [v11 setAccessibilityTraits:{v9, v13}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)setChildViews:(id)a3
{
  v4.receiver = self;
  v4.super_class = _TVDescriptiveAlertViewAccessibility;
  [(_TVDescriptiveAlertViewAccessibility *)&v4 setChildViews:a3];
  [(_TVDescriptiveAlertViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end