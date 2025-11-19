@interface CardViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation CardViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Diagnostics.CardViewCell" hasInstanceMethod:@"stackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Diagnostics.CardStackSubviewContainer"];
  [v3 validateClass:@"Diagnostics.CardStackSubviewContainer" hasInstanceMethod:@"containedView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v23 = *MEMORY[0x29EDCA608];
  v21 = 0;
  objc_opt_class();
  v3 = [(CardViewCellAccessibility *)self safeValueForKey:@"stackView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDB8DE8] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v4;
  v6 = [v4 arrangedSubviews];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        MEMORY[0x29C2D3B90](@"Diagnostics.CardStackSubviewContainer");
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 safeValueForKey:@"containedView"];
          if (objc_opt_respondsToSelector())
          {
            v13 = [v12 subviewsForStackViewElement];
            [v5 axSafelyAddObjectsFromArray:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x29EDCA608];

  return v5;
}

@end