@interface PLPillViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)automationElements;
@end

@implementation PLPillViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLPillView" hasInstanceMethod:@"centerContentItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLPillView" hasInstanceMethod:@"leadingAccessoryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLPillView" hasInstanceMethod:@"trailingAccessoryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLPillView" hasInstanceVariable:@"_materialView" withType:"MTMaterialView"];
  [v3 validateClass:@"PLPillView" hasInstanceVariable:@"_contentView" withType:"PLPillContentView"];
  [v3 validateClass:@"PLPillContentView" hasInstanceVariable:@"_leadingAccessoryView" withType:"UIView"];
  [v3 validateClass:@"PLPillContentView" hasInstanceVariable:@"_trailingAccessoryView" withType:"UIView"];
  [v3 validateClass:@"PLPillContentItem" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLPillContentItem" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = [(PLPillViewAccessibility *)self safeArrayForKey:@"centerContentItems"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v18;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v17 + 1) + 8 * v7);
        v10 = [v9 safeStringForKey:{@"text", v15, v16}];
        if (!v10)
        {
          objc_opt_class();
          v11 = [v9 safeValueForKey:@"attributedText"];
          v12 = __UIAccessibilityCastAsClass();

          v10 = [v12 string];
        }

        v15 = v10;
        v16 = @"__AXStringForVariablesSentinel";
        v5 = __UIAXStringForVariables();

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:{16, v10, @"__AXStringForVariablesSentinel"}];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v10[1] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(PLPillViewAccessibility *)self safeValueForKey:@"leadingAccessoryView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v10[0] = v4;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PLPillViewAccessibility;
    v5 = [(PLPillViewAccessibility *)&v9 _accessibilitySupplementaryHeaderViews];
  }

  v6 = v5;

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v10[1] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(PLPillViewAccessibility *)self safeValueForKey:@"trailingAccessoryView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v10[0] = v4;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PLPillViewAccessibility;
    v5 = [(PLPillViewAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  }

  v6 = v5;

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)accessibilityPath
{
  v2 = [(PLPillViewAccessibility *)self safeValueForKey:@"_materialView"];
  v3 = [v2 accessibilityPath];

  return v3;
}

- (id)automationElements
{
  v2 = [(PLPillViewAccessibility *)self safeValueForKey:@"_contentView"];
  v3 = MEMORY[0x29EDB8D80];
  v4 = [v2 safeValueForKey:@"_leadingAccessoryView"];
  v5 = [v2 safeValueForKey:@"_trailingAccessoryView"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v4, v5}];

  return v6;
}

@end