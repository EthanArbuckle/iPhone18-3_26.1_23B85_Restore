@interface SearchResultTableViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SearchResultTableViewCellInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SearchResultTableViewCellInvertColorsAccessibility;
  [(SearchResultTableViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SearchResultTableViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SearchResultTableViewCellInvertColorsAccessibility *)self safeUIViewForKey:@"_containerStackView", 0];
  subviews = [v2 subviews];

  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setAccessibilityIgnoresInvertColors:1];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end