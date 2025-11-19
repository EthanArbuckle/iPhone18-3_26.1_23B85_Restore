@interface TestRunnerViewAccessibility
- (id)subviewsForStackViewElement;
@end

@implementation TestRunnerViewAccessibility

- (id)subviewsForStackViewElement
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v18 = 0;
  objc_opt_class();
  v4 = [(TestRunnerViewAccessibility *)self safeValueForKey:@"stackView"];
  v5 = __UIAccessibilityCastAsClass();

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 arrangedSubviews];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) subviews];
        [v3 axSafelyAddObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];

  return v3;
}

@end