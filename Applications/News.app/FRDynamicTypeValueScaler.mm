@interface FRDynamicTypeValueScaler
+ (id)valueSpecifierWithXS:(double)s L:(double)l XXXL:(double)xL AXXXL:(double)xXL;
- (FRDynamicTypeValueScaler)initWithWithXS:(double)s S:(double)a4 M:(double)m L:(double)l XL:(double)xL XXL:(double)xXL XXXL:(double)xXXL AM:(double)self0 AL:(double)self1 AXL:(double)self2 AXXL:(double)self3 AXXXL:(double)self4;
- (NSArray)orderedSizeCategories;
- (double)scaledValueForCurrentPreferredSizeCategory;
- (double)scaledValueForSizeCategory:(id)category;
- (double)specifiedValueForContentSizeCategory:(id)category;
- (void)_nextSpecifiedCategoryStartingAtCategory:(id)category outValue:(double *)value outIndex:(unint64_t *)index;
- (void)_previousSpecifiedCategoryStartingAtCategory:(id)category outValue:(double *)value outIndex:(unint64_t *)index;
@end

@implementation FRDynamicTypeValueScaler

- (FRDynamicTypeValueScaler)initWithWithXS:(double)s S:(double)a4 M:(double)m L:(double)l XL:(double)xL XXL:(double)xXL XXXL:(double)xXXL AM:(double)self0 AL:(double)self1 AXL:(double)self2 AXXL:(double)self3 AXXXL:(double)self4
{
  v23.receiver = self;
  v23.super_class = FRDynamicTypeValueScaler;
  result = [(FRDynamicTypeValueScaler *)&v23 init];
  if (result)
  {
    result->_XS = s;
    result->_S = a4;
    result->_M = m;
    result->_L = l;
    result->_XL = xL;
    result->_XXL = xXL;
    result->_XXXL = xXXL;
    result->_AM = aM;
    result->_AL = aL;
    result->_AXL = aXL;
    result->_AXXL = aXXL;
    result->_AXXXL = aXXXL;
  }

  return result;
}

+ (id)valueSpecifierWithXS:(double)s L:(double)l XXXL:(double)xL AXXXL:(double)xXL
{
  v10 = objc_alloc_init(FRDynamicTypeValueScaler);
  [(FRDynamicTypeValueScaler *)v10 setXS:s];
  [(FRDynamicTypeValueScaler *)v10 setL:l];
  [(FRDynamicTypeValueScaler *)v10 setXXXL:xL];
  [(FRDynamicTypeValueScaler *)v10 setAXXXL:xXL];

  return v10;
}

- (double)scaledValueForCurrentPreferredSizeCategory
{
  v3 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v3 preferredContentSizeCategory];

  [(FRDynamicTypeValueScaler *)self scaledValueForSizeCategory:preferredContentSizeCategory];
  v6 = v5;

  return v6;
}

- (double)scaledValueForSizeCategory:(id)category
{
  categoryCopy = category;
  if (![categoryCopy length] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BE4C();
  }

  [(FRDynamicTypeValueScaler *)self specifiedValueForContentSizeCategory:categoryCopy];
  v6 = v5;
  if (v5 == 1.79769313e308)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = 1.79769313e308;
    [(FRDynamicTypeValueScaler *)self _previousSpecifiedCategoryStartingAtCategory:categoryCopy outValue:&v17 outIndex:&v16];
    v15 = 1.79769313e308;
    [(FRDynamicTypeValueScaler *)self _nextSpecifiedCategoryStartingAtCategory:categoryCopy outValue:&v15 outIndex:&v14];
    if (v17 == 1.79769313e308 || v16 == 0x7FFFFFFFFFFFFFFFLL || v15 == 1.79769313e308 || v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(FRDynamicTypeValueScaler *)self L:1.79769313e308];
      v6 = v10;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10006BF38();
      }
    }

    else
    {
      v11 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories:1.79769313e308];
      v12 = [v11 indexOfObject:categoryCopy];

      v6 = v17 + (v15 - v17) / (v14 - v16) * (v12 - v16);
    }
  }

  return v6;
}

- (double)specifiedValueForContentSizeCategory:(id)category
{
  categoryCopy = category;
  [(FRDynamicTypeValueScaler *)self L];
  v6 = v5;
  if ([categoryCopy isEqualToString:UIContentSizeCategoryExtraSmall])
  {
    [(FRDynamicTypeValueScaler *)self XS];
LABEL_25:
    v6 = v7;
    goto LABEL_26;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategorySmall])
  {
    [(FRDynamicTypeValueScaler *)self S];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryMedium])
  {
    [(FRDynamicTypeValueScaler *)self M];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryLarge])
  {
    [(FRDynamicTypeValueScaler *)self L];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self XL];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryExtraExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self XXL];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self XXXL];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryAccessibilityMedium])
  {
    [(FRDynamicTypeValueScaler *)self AM];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryAccessibilityLarge])
  {
    [(FRDynamicTypeValueScaler *)self AL];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryAccessibilityExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self AXL];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryAccessibilityExtraExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self AXXL];
    goto LABEL_25;
  }

  if ([categoryCopy isEqualToString:UIContentSizeCategoryAccessibilityExtraExtraExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self AXXXL];
    goto LABEL_25;
  }

LABEL_26:

  return v6;
}

- (NSArray)orderedSizeCategories
{
  v2 = qword_1000E6190;
  if (!qword_1000E6190)
  {
    v6[0] = UIContentSizeCategoryExtraSmall;
    v6[1] = UIContentSizeCategorySmall;
    v6[2] = UIContentSizeCategoryMedium;
    v6[3] = UIContentSizeCategoryLarge;
    v6[4] = UIContentSizeCategoryExtraLarge;
    v6[5] = UIContentSizeCategoryExtraExtraLarge;
    v6[6] = UIContentSizeCategoryExtraExtraExtraLarge;
    v6[7] = UIContentSizeCategoryAccessibilityMedium;
    v6[8] = UIContentSizeCategoryAccessibilityLarge;
    v6[9] = UIContentSizeCategoryAccessibilityExtraLarge;
    v6[10] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
    v6[11] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
    v3 = [NSArray arrayWithObjects:v6 count:12];
    v4 = qword_1000E6190;
    qword_1000E6190 = v3;

    v2 = qword_1000E6190;
  }

  return v2;
}

- (void)_previousSpecifiedCategoryStartingAtCategory:(id)category outValue:(double *)value outIndex:(unint64_t *)index
{
  categoryCopy = category;
  *value = 1.79769313e308;
  *index = 0x7FFFFFFFFFFFFFFFLL;
  orderedSizeCategories = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
  v9 = [orderedSizeCategories indexOfObject:categoryCopy];

  if ((v9 & 0x8000000000000000) == 0)
  {
    do
    {
      if (*value != 1.79769313e308)
      {
        break;
      }

      orderedSizeCategories2 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
      v11 = [orderedSizeCategories2 objectAtIndexedSubscript:v9];
      [(FRDynamicTypeValueScaler *)self specifiedValueForContentSizeCategory:v11];
      *value = v12;

      *index = v9;
    }

    while (v9-- > 0);
  }
}

- (void)_nextSpecifiedCategoryStartingAtCategory:(id)category outValue:(double *)value outIndex:(unint64_t *)index
{
  categoryCopy = category;
  *value = 1.79769313e308;
  *index = 0x7FFFFFFFFFFFFFFFLL;
  orderedSizeCategories = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
  v9 = [orderedSizeCategories indexOfObject:categoryCopy];

  orderedSizeCategories2 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
  v11 = [orderedSizeCategories2 count] - 1;

  for (; v9 <= v11; *index = v9++)
  {
    if (*value != 1.79769313e308)
    {
      break;
    }

    orderedSizeCategories3 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
    v13 = [orderedSizeCategories3 objectAtIndexedSubscript:v9];
    [(FRDynamicTypeValueScaler *)self specifiedValueForContentSizeCategory:v13];
    *value = v14;
  }
}

@end