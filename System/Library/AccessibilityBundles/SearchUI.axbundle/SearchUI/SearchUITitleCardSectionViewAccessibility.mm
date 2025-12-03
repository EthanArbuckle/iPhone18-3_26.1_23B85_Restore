@interface SearchUITitleCardSectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUITitleCardSectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SearchUICardSectionView" hasInstanceMethod:@"section" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SearchUITitleCardSectionView" isKindOfClass:@"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SFTitleCardSection" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(SearchUITitleCardSectionViewAccessibility *)self safeArrayForKey:@"subviews", 0];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    v7 = *MEMORY[0x29EDC7F70];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v7;
        }

        else
        {
          v10 = 0;
        }

        v5 |= v10;
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v5;
}

- (id)accessibilityLabel
{
  v2 = [(SearchUITitleCardSectionViewAccessibility *)self safeValueForKey:@"section"];
  v3 = [v2 safeStringForKey:@"title"];

  return v3;
}

@end