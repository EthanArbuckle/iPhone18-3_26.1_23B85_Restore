@interface LockScreenPosterCollectionViewCell_InvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation LockScreenPosterCollectionViewCell_InvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = self;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(LockScreenPosterCollectionViewCell_InvertColorsAccessibility *)v2 _accessibilityFindImageViews];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (_AXSInvertColorsEnabled() && (-[LockScreenPosterCollectionViewCell_InvertColorsAccessibility window](v2, "window"), v9 = objc_claimAutoreleasedReturnValue(), [v9 traitCollection], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "userInterfaceStyle"), v10, v9, v11 == &dword_0 + 2))
        {
          v12 = [v8 layer];
          [AXInvertColorsAppHelper applyInvertFilterToLayer:v12];
        }

        else
        {
          v12 = [v8 layer];
          [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v12];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LockScreenPosterCollectionViewCell_InvertColorsAccessibility;
  [(LockScreenPosterCollectionViewCell_InvertColorsAccessibility *)&v3 layoutSubviews];
  [(LockScreenPosterCollectionViewCell_InvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end