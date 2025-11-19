@interface FRDynamicTypeValueScaler
+ (id)valueSpecifierWithXS:(double)a3 L:(double)a4 XXXL:(double)a5 AXXXL:(double)a6;
- (FRDynamicTypeValueScaler)initWithWithXS:(double)a3 S:(double)a4 M:(double)a5 L:(double)a6 XL:(double)a7 XXL:(double)a8 XXXL:(double)a9 AM:(double)a10 AL:(double)a11 AXL:(double)a12 AXXL:(double)a13 AXXXL:(double)a14;
- (NSArray)orderedSizeCategories;
- (double)scaledValueForCurrentPreferredSizeCategory;
- (double)scaledValueForSizeCategory:(id)a3;
- (double)specifiedValueForContentSizeCategory:(id)a3;
- (void)_nextSpecifiedCategoryStartingAtCategory:(id)a3 outValue:(double *)a4 outIndex:(unint64_t *)a5;
- (void)_previousSpecifiedCategoryStartingAtCategory:(id)a3 outValue:(double *)a4 outIndex:(unint64_t *)a5;
@end

@implementation FRDynamicTypeValueScaler

- (FRDynamicTypeValueScaler)initWithWithXS:(double)a3 S:(double)a4 M:(double)a5 L:(double)a6 XL:(double)a7 XXL:(double)a8 XXXL:(double)a9 AM:(double)a10 AL:(double)a11 AXL:(double)a12 AXXL:(double)a13 AXXXL:(double)a14
{
  v23.receiver = self;
  v23.super_class = FRDynamicTypeValueScaler;
  result = [(FRDynamicTypeValueScaler *)&v23 init];
  if (result)
  {
    result->_XS = a3;
    result->_S = a4;
    result->_M = a5;
    result->_L = a6;
    result->_XL = a7;
    result->_XXL = a8;
    result->_XXXL = a9;
    result->_AM = a10;
    result->_AL = a11;
    result->_AXL = a12;
    result->_AXXL = a13;
    result->_AXXXL = a14;
  }

  return result;
}

+ (id)valueSpecifierWithXS:(double)a3 L:(double)a4 XXXL:(double)a5 AXXXL:(double)a6
{
  v10 = objc_alloc_init(FRDynamicTypeValueScaler);
  [(FRDynamicTypeValueScaler *)v10 setXS:a3];
  [(FRDynamicTypeValueScaler *)v10 setL:a4];
  [(FRDynamicTypeValueScaler *)v10 setXXXL:a5];
  [(FRDynamicTypeValueScaler *)v10 setAXXXL:a6];

  return v10;
}

- (double)scaledValueForCurrentPreferredSizeCategory
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  [(FRDynamicTypeValueScaler *)self scaledValueForSizeCategory:v4];
  v6 = v5;

  return v6;
}

- (double)scaledValueForSizeCategory:(id)a3
{
  v4 = a3;
  if (![v4 length] && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006BE4C();
  }

  [(FRDynamicTypeValueScaler *)self specifiedValueForContentSizeCategory:v4];
  v6 = v5;
  if (v5 == 1.79769313e308)
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = 1.79769313e308;
    [(FRDynamicTypeValueScaler *)self _previousSpecifiedCategoryStartingAtCategory:v4 outValue:&v17 outIndex:&v16];
    v15 = 1.79769313e308;
    [(FRDynamicTypeValueScaler *)self _nextSpecifiedCategoryStartingAtCategory:v4 outValue:&v15 outIndex:&v14];
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
      v12 = [v11 indexOfObject:v4];

      v6 = v17 + (v15 - v17) / (v14 - v16) * (v12 - v16);
    }
  }

  return v6;
}

- (double)specifiedValueForContentSizeCategory:(id)a3
{
  v4 = a3;
  [(FRDynamicTypeValueScaler *)self L];
  v6 = v5;
  if ([v4 isEqualToString:UIContentSizeCategoryExtraSmall])
  {
    [(FRDynamicTypeValueScaler *)self XS];
LABEL_25:
    v6 = v7;
    goto LABEL_26;
  }

  if ([v4 isEqualToString:UIContentSizeCategorySmall])
  {
    [(FRDynamicTypeValueScaler *)self S];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryMedium])
  {
    [(FRDynamicTypeValueScaler *)self M];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryLarge])
  {
    [(FRDynamicTypeValueScaler *)self L];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self XL];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryExtraExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self XXL];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self XXXL];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryAccessibilityMedium])
  {
    [(FRDynamicTypeValueScaler *)self AM];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryAccessibilityLarge])
  {
    [(FRDynamicTypeValueScaler *)self AL];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryAccessibilityExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self AXL];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryAccessibilityExtraExtraLarge])
  {
    [(FRDynamicTypeValueScaler *)self AXXL];
    goto LABEL_25;
  }

  if ([v4 isEqualToString:UIContentSizeCategoryAccessibilityExtraExtraExtraLarge])
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

- (void)_previousSpecifiedCategoryStartingAtCategory:(id)a3 outValue:(double *)a4 outIndex:(unint64_t *)a5
{
  v14 = a3;
  *a4 = 1.79769313e308;
  *a5 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
  v9 = [v8 indexOfObject:v14];

  if ((v9 & 0x8000000000000000) == 0)
  {
    do
    {
      if (*a4 != 1.79769313e308)
      {
        break;
      }

      v10 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
      v11 = [v10 objectAtIndexedSubscript:v9];
      [(FRDynamicTypeValueScaler *)self specifiedValueForContentSizeCategory:v11];
      *a4 = v12;

      *a5 = v9;
    }

    while (v9-- > 0);
  }
}

- (void)_nextSpecifiedCategoryStartingAtCategory:(id)a3 outValue:(double *)a4 outIndex:(unint64_t *)a5
{
  v15 = a3;
  *a4 = 1.79769313e308;
  *a5 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
  v9 = [v8 indexOfObject:v15];

  v10 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
  v11 = [v10 count] - 1;

  for (; v9 <= v11; *a5 = v9++)
  {
    if (*a4 != 1.79769313e308)
    {
      break;
    }

    v12 = [(FRDynamicTypeValueScaler *)self orderedSizeCategories];
    v13 = [v12 objectAtIndexedSubscript:v9];
    [(FRDynamicTypeValueScaler *)self specifiedValueForContentSizeCategory:v13];
    *a4 = v14;
  }
}

@end