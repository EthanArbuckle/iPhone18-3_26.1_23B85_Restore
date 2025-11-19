@interface TrendPairTableViewCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TrendPairTableViewCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = TrendPairTableViewCellAccessibility;
  [(TrendPairTableViewCellAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = [(TrendPairTableViewCellAccessibility *)self _accessibilityFindUnsortedDescendantsPassingTest:&__block_literal_global_4];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setIsAccessibilityElement:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

BOOL __81__TrendPairTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id a1, id a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end