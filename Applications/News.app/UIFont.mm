@interface UIFont
+ (BOOL)fr_accessibilityFontSizesEnabled;
+ (BOOL)fr_contentSizeCategoryIsGreaterThan:(id)than;
+ (BOOL)fr_isDefaultContentSizeCategory;
+ (double)fr_notRoundedScaledValueForValue:(double)value;
+ (double)fr_preferredHeightForString:(id)string baseFontSize:(double)size maxFontSize:(double)fontSize textStyle:(id)style constrainedToWidth:(double)width;
+ (double)fr_scaledValueForValue:(double)value;
+ (id)_fr_fontWeightLookup;
+ (id)fr_appropriateValueForCurrentContentSizeCategoryUsingMap:(id)map;
+ (id)fr_fontWithName:(id)name size:(double)size;
+ (id)fr_orderedContentSizeCategories;
+ (id)fr_preferredFontForBaseFont:(id)font;
+ (id)fr_systemFontNameForWeight:(double)weight condensed:(BOOL)condensed;
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

+ (id)fr_fontWithName:(id)name size:(double)size
{
  nameCopy = name;
  _fr_fontWeightLookup = [self _fr_fontWeightLookup];
  v8 = [_fr_fontWeightLookup objectForKey:nameCopy];

  if (!v8)
  {
    v13 = [self fontWithName:nameCopy size:size];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = [self systemFontOfSize:size];
    }

    v17 = v14;

    goto LABEL_23;
  }

  v9 = [nameCopy hasPrefix:@"FRSystemFont-Condensed"];

  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = [NSNumber numberWithDouble:UIFontWeightBold];
  v11 = [v8 isEqualToNumber:v10];

  if (v11)
  {
    UIFontForLanguage = CTFontCreateUIFontForLanguage(0xA9u, size, 0);
    if (!UIFontForLanguage)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100068FC4();
      }

LABEL_21:
      [v8 doubleValue];
      UIFontForLanguage = [self systemFontOfSize:size weight:v20];
    }
  }

  else
  {
    v15 = [NSNumber numberWithDouble:UIFontWeightSemibold];
    v16 = [v8 isEqualToNumber:v15];

    if (v16)
    {
      UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuItemCmdKeyFontType|0xA0, size, 0);
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

      UIFontForLanguage = CTFontCreateUIFontForLanguage(0xB0u, size, 0);
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

+ (id)fr_systemFontNameForWeight:(double)weight condensed:(BOOL)condensed
{
  if (UIFontWeightUltraLight == weight)
  {
    v4 = @"Ultralight";
  }

  else if (UIFontWeightThin == weight)
  {
    v4 = @"Thin";
  }

  else if (UIFontWeightLight == weight)
  {
    v4 = @"Light";
  }

  else if (UIFontWeightRegular == weight)
  {
    v4 = @"Regular";
  }

  else if (UIFontWeightMedium == weight)
  {
    v4 = @"Medium";
  }

  else if (UIFontWeightSemibold == weight)
  {
    v4 = @"Semibold";
  }

  else if (UIFontWeightBold == weight)
  {
    v4 = @"Bold";
  }

  else if (UIFontWeightHeavy == weight)
  {
    v4 = @"Heavy";
  }

  else if (UIFontWeightBlack == weight)
  {
    v4 = @"Black";
  }

  else
  {
    v4 = 0;
  }

  if (condensed)
  {
    v5 = @"-Condensed";
  }

  else
  {
    v5 = &stru_1000C67A8;
  }

  return [self _fr_fontNameWithPrefix:@"FRSystemFont" midfix:v5 suffix:v4];
}

+ (BOOL)fr_contentSizeCategoryIsGreaterThan:(id)than
{
  thanCopy = than;
  v4 = +[UIContentSizeCategoryPreference system];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];

  v6 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, thanCopy);
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

+ (id)fr_appropriateValueForCurrentContentSizeCategoryUsingMap:(id)map
{
  mapCopy = map;
  v5 = +[UIContentSizeCategoryPreference system];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];

  v7 = [mapCopy objectForKeyedSubscript:UIContentSizeCategoryLarge];

  if (!v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069088();
  }

  v8 = [mapCopy objectForKeyedSubscript:preferredContentSizeCategory];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    goto LABEL_42;
  }

  [self fr_orderedContentSizeCategories];
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
      if ([v17 isEqualToString:preferredContentSizeCategory])
      {
        break;
      }

      v18 = [mapCopy objectForKeyedSubscript:v17];

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
  reverseObjectEnumerator = [v11 reverseObjectEnumerator];
  v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v44 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v26 = *(*(&v36 + 1) + 8 * v25);
      if ([v26 isEqualToString:preferredContentSizeCategory])
      {
        break;
      }

      v27 = [mapCopy objectForKeyedSubscript:v26];

      if (v27)
      {
        v28 = v26;

        v23 = v28;
      }

      if (v22 == ++v25)
      {
        v22 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v44 count:16];
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

    v33 = [v35 indexOfObject:preferredContentSizeCategory];
    v34 = (v33 - [v35 indexOfObject:v14]);
    if (v34 >= [v35 indexOfObject:v23] - v33)
    {
LABEL_35:
      v30 = mapCopy;
      v31 = v23;
    }

    else
    {
      v30 = mapCopy;
      v31 = v14;
    }

    v10 = [v30 objectForKeyedSubscript:v31];
  }

  else
  {
    v10 = [mapCopy objectForKeyedSubscript:v14];
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
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  return v2;
}

+ (BOOL)fr_isDefaultContentSizeCategory
{
  v2 = +[UIContentSizeCategoryPreference system];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  v4 = [preferredContentSizeCategory isEqualToString:UIContentSizeCategoryLarge];

  return v4;
}

+ (id)fr_preferredFontForBaseFont:(id)font
{
  fontCopy = font;
  [fontCopy pointSize];
  v5 = v4;
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v6 _scaledValueForValue:v5];
  v8 = [fontCopy fontWithSize:round(v7)];

  return v8;
}

+ (double)fr_scaledValueForValue:(double)value
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 _scaledValueForValue:value];
  v6 = round(v5);

  return v6;
}

+ (double)fr_notRoundedScaledValueForValue:(double)value
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 _scaledValueForValue:value];
  v6 = v5;

  return v6;
}

+ (double)fr_preferredHeightForString:(id)string baseFontSize:(double)size maxFontSize:(double)fontSize textStyle:(id)style constrainedToWidth:(double)width
{
  stringCopy = string;
  v12 = [UIFont preferredFontForTextStyle:style];
  v13 = v12;
  if (size > 0.0)
  {
    [v12 _scaledValueForValue:size];
    if (fontSizeCopy >= fontSize)
    {
      fontSizeCopy = fontSize;
    }

    v15 = fontSizeCopy;
    v16 = [v13 fontWithSize:roundf(v15)];

    v13 = v16;
  }

  v22 = NSFontAttributeName;
  v23 = v13;
  v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [stringCopy boundingRectWithSize:3 options:v17 attributes:0 context:{width, 1.79769313e308}];
  v19 = v18;

  v20 = v19;
  return roundf(v20);
}

@end