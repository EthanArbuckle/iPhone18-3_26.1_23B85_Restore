@interface SUUIProductPageFeaturesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation SUUIProductPageFeaturesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIProductPageFeaturesView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUIProductPageFeaturesView" hasInstanceVariable:@"_featureViews" withType:"NSMutableArray"];
  [v3 validateClass:@"SUUIProductPageFeaturesView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

- (id)accessibilityElements
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = [(SUUIProductPageFeaturesViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v3)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = [(SUUIProductPageFeaturesViewAccessibility *)self safeValueForKey:@"_titleLabel"];
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
    v15 = v4;
    [v3 axSafelyAddObject:v4];
    v16 = self;
    [(SUUIProductPageFeaturesViewAccessibility *)self safeValueForKey:@"_featureViews"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v21 = 0u;
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 safeValueForKey:@"title"];
          v11 = [v9 safeValueForKey:@"subtitle"];
          v12 = __UIAXStringForVariables();
          [v9 setIsAccessibilityElement:{1, v11, @"__AXStringForVariablesSentinel"}];
          [v9 setAccessibilityLabel:v12];
          [v3 addObject:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    [(SUUIProductPageFeaturesViewAccessibility *)v16 _accessibilitySetRetainedValue:v3 forKey:*MEMORY[0x29EDC7620]];
  }

  v13 = *MEMORY[0x29EDCA608];

  return v3;
}

@end