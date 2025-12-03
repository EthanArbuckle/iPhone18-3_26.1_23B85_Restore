@interface CategorizationOptionViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CategorizationOptionViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v36 = *MEMORY[0x29EDCA608];
  v33.receiver = self;
  v33.super_class = CategorizationOptionViewAccessibility;
  [(CategorizationOptionViewAccessibility *)&v33 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v18 = __UIAccessibilityCastAsClass();
  subviews = [v18 subviews];
  firstObject = [subviews firstObject];

  v17 = firstObject;
  [firstObject subviews];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v22 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v22)
  {
    v21 = *v30;
    v20 = *MEMORY[0x29EDC7F70];
    v4 = *MEMORY[0x29EDC7FC0];
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * v5);
        objc_opt_class();
        v24 = __UIAccessibilityCastAsClass();
        subviews2 = [v24 subviews];
        v8 = UIAXStringForAllChildren();
        [v6 setIsAccessibilityElement:1];
        v23 = v8;
        [v6 setAccessibilityLabel:v8];
        [v6 setAccessibilityTraits:v20];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = subviews2;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v26;
          do
          {
            v13 = 0;
            do
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v9);
              }

              accessibilityIdentifier = [*(*(&v25 + 1) + 8 * v13) accessibilityIdentifier];
              v15 = [accessibilityIdentifier isEqualToString:@"checkmark.circle.fill"];

              if (v15)
              {
                [v6 setAccessibilityTraits:v4];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v11);
        }

        ++v5;
      }

      while (v5 != v22);
      v22 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v22);
  }

  v16 = *MEMORY[0x29EDCA608];
}

@end