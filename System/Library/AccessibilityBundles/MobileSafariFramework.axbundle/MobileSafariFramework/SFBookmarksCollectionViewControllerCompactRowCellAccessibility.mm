@interface SFBookmarksCollectionViewControllerCompactRowCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SFBookmarksCollectionViewControllerCompactRowCellAccessibility

- (id)accessibilityLabel
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = [(SFBookmarksCollectionViewControllerCompactRowCellAccessibility *)self safeSwiftStringForKey:@"title"];
  v18 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accessories = [v3 accessories];
  text = [accessories countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (text)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != text; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = 0;
          objc_opt_class();
          v9 = __UIAccessibilityCastAsClass();
          if (v18 == 1)
          {
            abort();
          }

          v10 = v9;
          text = [v9 text];

          goto LABEL_12;
        }
      }

      text = [accessories countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (text)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v11 = __AXStringForVariables();

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SFBookmarksCollectionViewControllerCompactRowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SFBookmarksCollectionViewControllerCompactRowCellAccessibility *)&v3 accessibilityTraits];
}

@end