@interface _TVStackCommonTemplateControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateViewSupplementaryViews;
@end

@implementation _TVStackCommonTemplateControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVLabel"];
  [v3 validateClass:@"_TVStackWrappingView"];
  [v3 validateClass:@"_TVStackWrappingView" hasInstanceMethod:@"headerSupplementaryViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVStackCommonTemplateController" hasInstanceMethod:@"stackWrappingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVStackCommonTemplateController" hasInstanceMethod:@"_updateViewSupplementaryViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_TVStackCommonTemplateController" hasInstanceMethod:@"viewControllerWithElement:layout:existingController:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v3 validateClass:@"IKViewElement" hasInstanceMethod:@"elementName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v22 = *MEMORY[0x29EDCA608];
  v20.receiver = self;
  v20.super_class = _TVStackCommonTemplateControllerAccessibility;
  [(_TVStackCommonTemplateControllerAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v3 = [(_TVStackCommonTemplateControllerAccessibility *)self safeValueForKey:@"stackWrappingView"];
  v19 = 0;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"headerSupplementaryViews"];
  v5 = __UIAccessibilityCastAsClass();

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = *MEMORY[0x29EDC7F80];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        NSClassFromString(&cfstr_Tvseparatorvie_0.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [v12 _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:{0, v15}];
          if ([v13 length])
          {
            [v12 setIsAccessibilityElement:1];
            [v12 setAccessibilityTraits:v10];
            [v12 setAccessibilityLabel:v13];
          }

          else
          {
            [v12 setIsAccessibilityElement:0];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)_updateViewSupplementaryViews
{
  v3.receiver = self;
  v3.super_class = _TVStackCommonTemplateControllerAccessibility;
  [(_TVStackCommonTemplateControllerAccessibility *)&v3 _updateViewSupplementaryViews];
  [(_TVStackCommonTemplateControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end