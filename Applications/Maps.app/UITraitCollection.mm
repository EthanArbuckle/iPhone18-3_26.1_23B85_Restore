@interface UITraitCollection
- (double)_maps_displayScaleOrMainScreenScale;
- (id)_maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:(id)category maximumContentSizeCategory:(id)sizeCategory;
- (int64_t)_car_userInterfaceStyle;
@end

@implementation UITraitCollection

- (int64_t)_car_userInterfaceStyle
{
  if (GEOConfigGetBOOL())
  {

    return [(UITraitCollection *)self userInterfaceStyle];
  }

  else
  {

    return [(UITraitCollection *)self crsui_mapStyle];
  }
}

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

- (id)_maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:(id)category maximumContentSizeCategory:(id)sizeCategory
{
  sizeCategoryCopy = sizeCategory;
  categoryCopy = category;
  preferredContentSizeCategory = [(UITraitCollection *)self preferredContentSizeCategory];
  v9 = sub_1000903BC(preferredContentSizeCategory, categoryCopy, sizeCategoryCopy);

  if (preferredContentSizeCategory && UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryUnspecified) && UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, v9))
  {
    v14[0] = self;
    v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v9];
    v14[1] = v10;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    selfCopy = [UITraitCollection traitCollectionWithTraitsFromCollections:v11];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end