@interface LoggingCardCarouselCollectionViewCellAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation LoggingCardCarouselCollectionViewCellAccessibility

- (BOOL)accessibilityElementsHidden
{
  v31 = *MEMORY[0x29EDCA608];
  v29 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibilityAncestorIsKindOf:objc_opt_class()];
  [v3 bounds];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  [v2 bounds];
  [v3 convertRect:v2 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  indexPathsForVisibleItems = [v3 indexPathsForVisibleItems];
  v17 = [indexPathsForVisibleItems countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v21 = [v3 cellForItemAtIndexPath:*(*(&v25 + 1) + 8 * i)];
        [v21 bounds];
        [v3 convertRect:v21 fromView:?];
        v32.x = v5;
        v32.y = v7;
        if (CGRectContainsPoint(v34, v32))
        {
          v35.origin.x = v9;
          v35.origin.y = v11;
          v35.size.width = v13;
          v35.size.height = v15;
          v33.x = v5;
          v33.y = v7;
          if (CGRectContainsPoint(v35, v33))
          {

            v22 = 0;
            goto LABEL_12;
          }
        }
      }

      v18 = [indexPathsForVisibleItems countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_12:

  v23 = *MEMORY[0x29EDCA608];
  return v22;
}

@end