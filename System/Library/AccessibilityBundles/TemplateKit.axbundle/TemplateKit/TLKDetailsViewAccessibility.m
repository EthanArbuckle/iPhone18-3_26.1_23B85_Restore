@interface TLKDetailsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation TLKDetailsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKTitleContainerView"];
  [v3 validateClass:@"TLKDetailsView" hasInstanceMethod:@"titleContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKTitleContainerView" hasInstanceMethod:@"titleLabelString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKTitleContainerView" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKDetailsView" hasProperty:@"contentView" withType:"@"];
  [v3 validateClass:@"TLKTextAreaView" hasProperty:@"detailsFields" withType:"@"];
  [v3 validateClass:@"TLKDetailsView" hasInstanceMethod:@"footnoteLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(TLKDetailsViewAccessibility *)self safeValueForKey:@"titleContainer"];
  v3 = [v2 safeStringForKey:@"titleLabelString"];
  v4 = [v2 safeUIViewForKey:@"secondaryLabel"];
  if ([v4 _accessibilityViewIsVisible])
  {
    v7 = [v4 accessibilityLabel];
    v5 = __UIAXStringForVariables();
  }

  else
  {
    v5 = __UIAXStringForVariables();
  }

  return v5;
}

- (id)accessibilityValue
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = [(TLKDetailsViewAccessibility *)self safeValueForKey:@"contentView"];
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v21 = 0;
  objc_opt_class();
  v4 = [v2 safeValueForKey:@"detailsFields"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 mutableCopy];
  v7 = [v2 safeValueForKey:@"footnoteLabel"];
  [v6 axSafelyAddObject:v7];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 _accessibilityViewIsVisible])
        {
          [v3 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x29ED3C080](v3);

  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

@end