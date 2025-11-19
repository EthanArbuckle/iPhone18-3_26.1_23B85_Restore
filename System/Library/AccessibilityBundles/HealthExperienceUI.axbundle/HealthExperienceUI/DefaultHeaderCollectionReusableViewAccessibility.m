@interface DefaultHeaderCollectionReusableViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddHeaderAnnotations;
- (void)setContentConfiguration:(id)a3;
@end

@implementation DefaultHeaderCollectionReusableViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = DefaultHeaderCollectionReusableViewAccessibility;
  [(DefaultHeaderCollectionReusableViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(DefaultHeaderCollectionReusableViewAccessibility *)self _axAddHeaderAnnotations];
}

- (void)setContentConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = DefaultHeaderCollectionReusableViewAccessibility;
  [(DefaultHeaderCollectionReusableViewAccessibility *)&v4 setContentConfiguration:a3];
  [(DefaultHeaderCollectionReusableViewAccessibility *)self _axAddHeaderAnnotations];
}

- (void)_axAddHeaderAnnotations
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = [(DefaultHeaderCollectionReusableViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_3];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = *MEMORY[0x29EDC7F80];
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v7++) setAccessibilityTraits:v6];
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t __75__DefaultHeaderCollectionReusableViewAccessibility__axAddHeaderAnnotations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end