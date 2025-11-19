@interface TLKTextAreaViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation TLKTextAreaViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKTextAreaView" hasInstanceMethod:@"titleContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKTextAreaView" hasInstanceMethod:@"detailsFields" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKTextAreaView" hasInstanceMethod:@"footnoteLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKTitleContainerView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKTitleContainerView" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = [(TLKTextAreaViewAccessibility *)self safeValueForKey:@"titleContainer"];
  v4 = [v3 safeValueForKey:@"secondaryLabel"];
  v5 = [(TLKTextAreaViewAccessibility *)self safeValueForKey:@"footnoteLabel"];
  v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v31 = 0;
  objc_opt_class();
  v7 = [(TLKTextAreaViewAccessibility *)self safeValueForKey:@"detailsFields"];
  v8 = __UIAccessibilityCastAsClass();

  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if ([v14 _accessibilityViewIsVisible])
        {
          [v6 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v26 = v3;
  v15 = [v3 safeValueForKey:@"titleLabel"];
  v16 = [v15 accessibilityLabel];
  v17 = [v4 _accessibilityViewIsVisible];
  v25 = v4;
  if (v17)
  {
    v18 = [v4 accessibilityLabel];
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x29ED3C080](v6);
  v20 = v5;
  if ([v5 _accessibilityViewIsVisible])
  {
    v24 = [v5 accessibilityLabel];
    v21 = __UIAXStringForVariables();
  }

  else
  {
    v21 = __UIAXStringForVariables();
  }

  if (v17)
  {
  }

  v22 = *MEMORY[0x29EDCA608];

  return v21;
}

@end