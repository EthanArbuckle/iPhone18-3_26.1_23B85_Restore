@interface UIFont
+ (BOOL)fr_accessibilityFontSizesEnabled;
+ (BOOL)fr_contentSizeCategoryIsGreaterThan:(id)a3;
+ (BOOL)fr_isDefaultContentSizeCategory;
+ (double)fr_notRoundedScaledValueForValue:(double)a3;
+ (double)fr_preferredHeightForString:(id)a3 baseFontSize:(double)a4 maxFontSize:(double)a5 textStyle:(id)a6 constrainedToWidth:(double)a7;
+ (double)fr_scaledValueForValue:(double)a3;
+ (id)_fr_fontWeightLookup;
+ (id)fr_appropriateValueForCurrentContentSizeCategoryUsingMap:(id)a3;
+ (id)fr_fontWithName:(id)a3 size:(double)a4;
+ (id)fr_orderedContentSizeCategories;
+ (id)fr_preferredFontForBaseFont:(id)a3;
+ (id)fr_systemFontNameForWeight:(double)a3 condensed:(BOOL)a4;
@end

@implementation UIFont

+ (id)_fr_fontWeightLookup
{
  if (qword_1000E6120 != -1)
  {
    sub_100068D54();
  }

  v3 = qword_1000E6118;

  return v3;
}

+ (id)fr_fontWithName:(id)a3 size:(double)a4
{
  v6 = a3;
  v7 = [a1 _fr_fontWeightLookup];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v13 = [a1 fontWithName:v6 size:a4];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = [a1 systemFontOfSize:a4];
    }

    v17 = v14;

    goto LABEL_23;
  }

  v9 = [v6 hasPrefix:@"FRSystemFont-Condensed"];

  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = [NSNumber numberWithDouble:UIFontWeightBold];
  v11 = [v8 isEqualToNumber:v10];

  if (v11)
  {
    UIFontForLanguage = CTFontCreateUIFontForLanguage(0xA9u, a4, 0);
    if (!UIFontForLanguage)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100068FC4();
      }

LABEL_21:
      [v8 doubleValue];
      UIFontForLanguage = [a1 systemFontOfSize:a4 weight:v20];
    }
  }

  else
  {
    v15 = [NSNumber numberWithDouble:UIFontWeightSemibold];
    v16 = [v8 isEqualToNumber:v15];

    if (v16)
    {
      UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuItemCmdKeyFontType|0xA0, a4, 0);
      if (!UIFontForLanguage)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100068F00();
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = [NSNumber numberWithDouble:UIFontWeightBlack];
      v19 = [v8 isEqualToNumber:v18];

      if (!v19)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100068D68();
        }

        goto LABEL_21;
      }

      UIFontForLanguage = CTFontCreateUIFontForLanguage(0xB0u, a4, 0);
      if (!UIFontForLanguage)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100068E3C();
        }

        goto LABEL_21;
      }
    }
  }

  v17 = UIFontForLanguage;
LABEL_23:

  return v17;
}

+ (id)fr_systemFontNameForWeight:(double)a3 condensed:(BOOL)a4
{
  if (UIFontWeightUltraLight == a3)
  {
    v4 = @"Ultralight";
  }

  else if (UIFontWeightThin == a3)
  {
    v4 = @"Thin";
  }

  else if (UIFontWeightLight == a3)
  {
    v4 = @"Light";
  }

  else if (UIFontWeightRegular == a3)
  {
    v4 = @"Regular";
  }

  else if (UIFontWeightMedium == a3)
  {
    v4 = @"Medium";
  }

  else if (UIFontWeightSemibold == a3)
  {
    v4 = @"Semibold";
  }

  else if (UIFontWeightBold == a3)
  {
    v4 = @"Bold";
  }

  else if (UIFontWeightHeavy == a3)
  {
    v4 = @"Heavy";
  }

  else if (UIFontWeightBlack == a3)
  {
    v4 = @"Black";
  }

  else
  {
    v4 = 0;
  }

  if (a4)
  {
    v5 = @"-Condensed";
  }

  else
  {
    v5 = &stru_1000C67A8;
  }

  return [a1 _fr_fontNameWithPrefix:@"FRSystemFont" midfix:v5 suffix:v4];
}

+ (BOOL)fr_contentSizeCategoryIsGreaterThan:(id)a3
{
  v3 = a3;
  v4 = +[UIContentSizeCategoryPreference system];
  v5 = [v4 preferredContentSizeCategory];

  v6 = UIContentSizeCategoryCompareToCategory(v5, v3);
  return v6 == NSOrderedDescending;
}

+ (id)fr_orderedContentSizeCategories
{
  v2 = qword_1000E6128;
  if (!qword_1000E6128)
  {
    v3 = [NSOrderedSet orderedSetWithObjects:UIContentSizeCategoryUnspecified, UIContentSizeCategoryExtraSmall, UIContentSizeCategorySmall, UIContentSizeCategoryMedium, UIContentSizeCategoryLarge, UIContentSizeCategoryExtraLarge, UIContentSizeCategoryExtraExtraLarge, UIContentSizeCategoryExtraExtraExtraLarge, UIContentSizeCategoryAccessibilityMedium, UIContentSizeCategoryAccessibilityLarge, UIContentSizeCategoryAccessibilityExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge, 0];
    v4 = qword_1000E6128;
    qword_1000E6128 = v3;

    v2 = qword_1000E6128;
  }

  return v2;
}

+ (id)fr_appropriateValueForCurrentContentSizeCategoryUsingMap:(id)a3
{
  v4 = a3;
  v5 = +[UIContentSizeCategoryPreference system];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [v4 objectForKeyedSubscript:UIContentSizeCategoryLarge];

  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069088();
  }

  v8 = [v4 objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    goto LABEL_42;
  }

  [a1 fr_orderedContentSizeCategories];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = v43 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v41;
LABEL_8:
    v16 = 0;
    while (1)
    {
      if (*v41 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v40 + 1) + 8 * v16);
      if ([v17 isEqualToString:v6])
      {
        break;
      }

      v18 = [v4 objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = v17;

        v14 = v19;
      }

      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = v11;
  v20 = [v11 reverseObjectEnumerator];
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v37;
LABEL_20:
    v25 = 0;
    while (1)
    {
      if (*v37 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v36 + 1) + 8 * v25);
      if ([v26 isEqualToString:v6])
      {
        break;
      }

      v27 = [v4 objectForKeyedSubscript:v26];

      if (v27)
      {
        v28 = v26;

        v23 = v28;
      }

      if (v22 == ++v25)
      {
        v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v22)
        {
          goto LABEL_20;
        }

        break;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  if (!v14 || v23)
  {
    v29 = v35;
    if (!v14 && v23)
    {
      goto LABEL_35;
    }

    if (!(v14 | v23))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10006914C();
      }

      v10 = &off_1000CB4C0;
      goto LABEL_41;
    }

    v33 = [v35 indexOfObject:v6];
    v34 = (v33 - [v35 indexOfObject:v14]);
    if (v34 >= [v35 indexOfObject:v23] - v33)
    {
LABEL_35:
      v30 = v4;
      v31 = v23;
    }

    else
    {
      v30 = v4;
      v31 = v14;
    }

    v10 = [v30 objectForKeyedSubscript:v31];
  }

  else
  {
    v10 = [v4 objectForKeyedSubscript:v14];
    v29 = v35;
  }

LABEL_41:

  v9 = 0;
LABEL_42:

  return v10;
}

+ (BOOL)fr_accessibilityFontSizesEnabled
{
  v2 = +[UIContentSizeCategoryPreference system];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryIsAccessibilityCategory(v3);
  return v2;
}

+ (BOOL)fr_isDefaultContentSizeCategory
{
  v2 = +[UIContentSizeCategoryPreference system];
  v3 = [v2 preferredContentSizeCategory];
  v4 = [v3 isEqualToString:UIContentSizeCategoryLarge];

  return v4;
}

+ (id)fr_preferredFontForBaseFont:(id)a3
{
  v3 = a3;
  [v3 pointSize];
  v5 = v4;
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v6 _scaledValueForValue:v5];
  v8 = [v3 fontWithSize:round(v7)];

  return v8;
}

+ (double)fr_scaledValueForValue:(double)a3
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 _scaledValueForValue:a3];
  v6 = round(v5);

  return v6;
}

+ (double)fr_notRoundedScaledValueForValue:(double)a3
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 _scaledValueForValue:a3];
  v6 = v5;

  return v6;
}

+ (double)fr_preferredHeightForString:(id)a3 baseFontSize:(double)a4 maxFontSize:(double)a5 textStyle:(id)a6 constrainedToWidth:(double)a7
{
  v11 = a3;
  v12 = [UIFont preferredFontForTextStyle:a6];
  v13 = v12;
  if (a4 > 0.0)
  {
    [v12 _scaledValueForValue:a4];
    if (v14 >= a5)
    {
      v14 = a5;
    }

    v15 = v14;
    v16 = [v13 fontWithSize:roundf(v15)];

    v13 = v16;
  }

  v22 = NSFontAttributeName;
  v23 = v13;
  v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v11 boundingRectWithSize:3 options:v17 attributes:0 context:{a7, 1.79769313e308}];
  v19 = v18;

  v20 = v19;
  return roundf(v20);
}

@end