@interface UITraitCollection
- (double)_maps_displayScaleOrMainScreenScale;
- (id)_maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:(id)a3 maximumContentSizeCategory:(id)a4;
@end

@implementation UITraitCollection

- (double)_maps_displayScaleOrMainScreenScale
{
  [(UITraitCollection *)self displayScale];
  if (result == 0.0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    v5 = v4;

    return v5;
  }

  return result;
}

- (id)_maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:(id)a3 maximumContentSizeCategory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITraitCollection *)self preferredContentSizeCategory];
  v9 = MapsUIContentSizeCategoryClamp(v8, v7, v6);

  if (v8 && UIContentSizeCategoryCompareToCategory(v8, UIContentSizeCategoryUnspecified) && UIContentSizeCategoryCompareToCategory(v8, v9))
  {
    v14[0] = self;
    v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v9];
    v14[1] = v10;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    v12 = [UITraitCollection traitCollectionWithTraitsFromCollections:v11];
  }

  else
  {
    v12 = self;
  }

  return v12;
}

@end