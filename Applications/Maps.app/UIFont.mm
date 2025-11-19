@interface UIFont
+ (BOOL)accessibilityTextEnabled;
+ (double)_maps_bodyScaledValueForValue:(double)a3 compatibleWithTraitCollection:(id)a4;
+ (double)_maps_discreteSizeForSize:(double)a3;
+ (id)_mapsCar_fontForTextStyle:(id)a3 weight:(double)a4 grade:(int)a5 traits:(unsigned int)a6;
+ (id)_maps_boldSystemFontWithFixedSize:(double)a3 adaptiveFont:(BOOL)a4;
+ (id)_maps_boldSystemFontWithSize:(double)a3;
+ (id)_maps_cappedFont:(id)a3 withMaxPoint:(double)a4;
+ (id)_maps_fontProviderWeight:(double)a3 minimumPointSize:(double)a4 minimumSizeCategory:(id)a5 maximumPointSize:(double)a6 maximumSizeCategory:(id)a7;
+ (id)_maps_fontWithTextStyle:(id)a3 weight:(double)a4 compatibleWithTraitCollection:(id)a5;
+ (id)_maps_navHeadingFontWithPreferredSize:(double)a3 diameter:(double)a4 desiredPadding:(double)a5;
+ (id)_maps_systemFontWithFixedSize:(double)a3 adaptiveFont:(BOOL)a4;
+ (id)_maps_systemFontWithSize:(double)a3;
+ (id)_maps_systemFontWithSize:(double)a3 weight:(double)a4 grade:(unint64_t)a5;
+ (id)_maps_textStyleForSize:(double)a3 useAdaptiveIfNeeded:(BOOL)a4 effectivePointSize:(double *)a5;
+ (id)system12BoldCompatibleWithTraitCollection:(id)a3;
+ (id)system12CompatibleWithTraitCollection:(id)a3;
+ (id)system12MediumCompatibleWithTraitCollection:(id)a3;
+ (id)system12SemiboldCompatibleWithTraitCollection:(id)a3;
+ (id)system13AdaptiveCompatibleWithTraitCollection:(id)a3;
+ (id)system13CompatibleWithTraitCollection:(id)a3 withSymbolicTraits:(unsigned int)a4;
+ (id)system13MediumCompatibleWithTraitCollection:(id)a3;
+ (id)system13SemiboldCompatibleWithTraitCollection:(id)a3;
+ (id)system15CompatibleWithTraitCollection:(id)a3 withSymbolicTraits:(unsigned int)a4;
+ (id)system15MediumCompatibleWithTraitCollection:(id)a3;
+ (id)system15SemiboldCompatibleWithTraitCollection:(id)a3;
+ (id)system17CompatibleWithTraitCollection:(id)a3 withSymbolicTraits:(unsigned int)a4;
+ (id)system17SemiboldCompatibleWithTraitCollection:(id)a3;
+ (id)system20Adaptive;
+ (id)system20AdaptiveMedium;
+ (id)system20AdaptiveSemiboldCompatibleWithTraitCollection:(id)a3;
+ (id)system20CompatibleWithTraitCollection:(id)a3 withSymbolicTraits:(unsigned int)a4;
+ (id)system22AdaptiveCondensedBold;
+ (id)system22AdaptiveSemibold;
+ (id)system22SemiboldCompatibleWithTraitCollection:(id)a3;
+ (id)system28AdaptiveBoldShort;
+ (id)system28AdaptiveCondensedBold;
+ (id)system28BoldCompatibleWithTraitCollection:(id)a3;
- (UIFont)_maps_fontWithMonospacedNumbers;
- (id)_maps_scaledFontForScaleFactor:(double)a3;
@end

@implementation UIFont

- (id)_maps_scaledFontForScaleFactor:(double)a3
{
  [(UIFont *)self pointSize];
  v6 = ceil(v5 * a3 + -0.5);
  v7 = [(UIFont *)self fontDescriptor];
  v8 = [UIFont fontWithDescriptor:v7 size:v6];

  return v8;
}

- (UIFont)_maps_fontWithMonospacedNumbers
{
  [(UIFont *)self pointSize];
  v4 = v3;
  v5 = [(UIFont *)self fontDescriptor];
  v6 = [v5 _mapkit_fontDescriptorByAddingFeaturesForTabularFigures];
  v7 = [UIFont fontWithDescriptor:v6 size:v4];

  return v7;
}

+ (id)_maps_fontProviderWeight:(double)a3 minimumPointSize:(double)a4 minimumSizeCategory:(id)a5 maximumPointSize:(double)a6 maximumSizeCategory:(id)a7
{
  v11 = a5;
  v12 = a7;
  if (qword_10195CFD0 != -1)
  {
    dispatch_once(&qword_10195CFD0, &stru_101627038);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1006F4D18;
  v17[3] = &unk_101627060;
  v20 = a4;
  v21 = a3;
  v18 = v11;
  v19 = v12;
  v22 = a6;
  v13 = v12;
  v14 = v11;
  v15 = objc_retainBlock(v17);

  return v15;
}

+ (id)_maps_fontWithTextStyle:(id)a3 weight:(double)a4 compatibleWithTraitCollection:(id)a5
{
  v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 compatibleWithTraitCollection:a5];
  v16 = UIFontDescriptorTraitsAttribute;
  v14 = UIFontWeightTrait;
  v8 = [NSNumber numberWithDouble:a4];
  v15 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [a1 fontWithDescriptor:v11 size:0.0];

  return v12;
}

+ (double)_maps_bodyScaledValueForValue:(double)a3 compatibleWithTraitCollection:(id)a4
{
  v6 = a4;
  v7 = [v6 preferredContentSizeCategory];
  v8 = [a1 _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:v7 contentSizeCategory:0 symbolicTraits:0.0];

  [v6 displayScale];
  v10 = v9;

  if (v10 == 0.0)
  {
    v11 = +[UIScreen mainScreen];
    [v11 scale];
  }

  [v8 _scaledValueForValue:a3];
  UICeilToScale();
  v13 = v12;

  return v13;
}

+ (id)_maps_cappedFont:(id)a3 withMaxPoint:(double)a4
{
  v5 = a3;
  [v5 pointSize];
  if (v6 <= a4)
  {
    v9 = v5;
  }

  else
  {
    v7 = [v5 fontDescriptor];
    v8 = [v7 fontDescriptorWithSize:a4];
    v9 = [UIFont fontWithDescriptor:v8 size:0.0];
  }

  return v9;
}

+ (id)_maps_textStyleForSize:(double)a3 useAdaptiveIfNeeded:(BOOL)a4 effectivePointSize:(double *)a5
{
  v6 = a4;
  if (qword_10195CFC0 != -1)
  {
    dispatch_once(&qword_10195CFC0, &stru_101627018);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = qword_10195CFB0;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 = &v10[v11];
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v20 + 1) + 8 * v13) floatValue];
        if (v15 >= a3)
        {
          v11 = v14;
          goto LABEL_14;
        }

        ++v14;
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  if (v11 >= [qword_10195CFB0 count])
  {
    v11 = [qword_10195CFB0 count];
  }

  if (v6 && _MKPlaceCardUseSmallerFont() && v11)
  {
    v16 = [qword_10195CFB0 objectAtIndexedSubscript:--v11];
    [v16 floatValue];
    a3 = v17;
  }

  if (a5)
  {
    *a5 = a3;
  }

  v18 = [qword_10195CFB8 objectAtIndexedSubscript:{v11, v20}];

  return v18;
}

+ (double)_maps_discreteSizeForSize:(double)a3
{
  v3 = 11.0;
  if (a3 > 11.0)
  {
    v3 = 12.0;
    if (a3 > 12.0)
    {
      v3 = 15.0;
      if (a3 > 15.0)
      {
        v3 = 17.0;
        if (a3 > 17.0)
        {
          v3 = 20.0;
          if (a3 > 20.0)
          {
            v3 = 22.0;
            if (a3 > 22.0)
            {
              return 28.0;
            }
          }
        }
      }
    }
  }

  return v3;
}

+ (id)_maps_navHeadingFontWithPreferredSize:(double)a3 diameter:(double)a4 desiredPadding:(double)a5
{
  v8 = MKLocalizedAbbreviationForCompassPoint();
  v62[0] = v8;
  v9 = MKLocalizedAbbreviationForCompassPoint();
  v62[1] = v9;
  v10 = MKLocalizedAbbreviationForCompassPoint();
  v62[2] = v10;
  v11 = MKLocalizedAbbreviationForCompassPoint();
  v62[3] = v11;
  v12 = MKLocalizedAbbreviationForCompassPoint();
  v62[4] = v12;
  v13 = MKLocalizedAbbreviationForCompassPoint();
  v62[5] = v13;
  v14 = MKLocalizedAbbreviationForCompassPoint();
  v62[6] = v14;
  v15 = MKLocalizedAbbreviationForCompassPoint();
  v62[7] = v15;
  v16 = [NSArray arrayWithObjects:v62 count:8];

  v17 = [NSNumber numberWithDouble:a3];
  v61[0] = v17;
  v18 = [NSNumber numberWithDouble:a3 + -1.0];
  v61[1] = v18;
  v19 = [NSNumber numberWithDouble:a3 + -2.0];
  v61[2] = v19;
  v20 = [NSArray arrayWithObjects:v61 count:3];

  v21 = [v20 firstObject];
  [v21 cgFloatValue];
  v23 = v22;

  v24 = [UIFont _maps_boldSystemFontWithFixedSize:v23];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v25 = v16;
  v26 = [v25 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v52;
    v30 = 0.0;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v32 = *(*(&v51 + 1) + 8 * i);
        v58 = NSFontAttributeName;
        v59 = v24;
        v33 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [v32 boundingRectWithSize:3 options:v33 attributes:0 context:{a4, a4}];
        v35 = v34;

        if (v30 < v35)
        {
          v36 = v32;

          v30 = v35;
          v28 = v36;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v27);
  }

  else
  {
    v28 = 0;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v37 = v20;
  v38 = [v37 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v48;
LABEL_14:
    v41 = 0;
    v42 = v24;
    while (1)
    {
      if (*v48 != v40)
      {
        objc_enumerationMutation(v37);
      }

      [*(*(&v47 + 1) + 8 * v41) cgFloatValue];
      v24 = [UIFont _maps_boldSystemFontWithFixedSize:?];

      v55 = NSFontAttributeName;
      v56 = v24;
      v43 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      [v28 boundingRectWithSize:3 options:v43 attributes:0 context:{a4, a4}];
      v45 = v44;

      if (ceil((a4 - v45) * 0.5) >= a5)
      {
        break;
      }

      v41 = v41 + 1;
      v42 = v24;
      if (v39 == v41)
      {
        v39 = [v37 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v39)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  return v24;
}

+ (id)_maps_boldSystemFontWithFixedSize:(double)a3 adaptiveFont:(BOOL)a4
{
  v8 = 0.0;
  v4 = [a1 _maps_textStyleForSize:a4 useAdaptiveIfNeeded:&v8 effectivePointSize:a3];
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:2 options:0];
  v6 = [UIFont fontWithDescriptor:v5 size:v8];

  return v6;
}

+ (id)_maps_systemFontWithFixedSize:(double)a3 adaptiveFont:(BOOL)a4
{
  v8 = 0.0;
  v4 = [a1 _maps_textStyleForSize:a4 useAdaptiveIfNeeded:&v8 effectivePointSize:a3];
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:0 options:0];
  v6 = [UIFont fontWithDescriptor:v5 size:v8];

  return v6;
}

+ (id)_maps_systemFontWithSize:(double)a3 weight:(double)a4 grade:(unint64_t)a5
{
  v9 = [a1 _maps_textStyleForSize:0 useAdaptiveIfNeeded:0 effectivePointSize:?];
  v10 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v9 weight:a5 grade:a4];
  [a1 _maps_discreteSizeForSize:a3];
  v12 = [v10 _fontScaledByScaleFactor:a3 / v11];

  return v12;
}

+ (id)_maps_boldSystemFontWithSize:(double)a3
{
  v5 = [a1 _maps_textStyleForSize:0 useAdaptiveIfNeeded:0 effectivePointSize:?];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v5 addingSymbolicTraits:2];

  [a1 _maps_discreteSizeForSize:a3];
  v8 = [v6 _fontScaledByScaleFactor:a3 / v7];

  return v8;
}

+ (id)_maps_systemFontWithSize:(double)a3
{
  v5 = [a1 _maps_textStyleForSize:0 useAdaptiveIfNeeded:0 effectivePointSize:?];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v5 addingSymbolicTraits:0];

  [a1 _maps_discreteSizeForSize:a3];
  v8 = [v6 _fontScaledByScaleFactor:a3 / v7];

  return v8;
}

+ (id)system12CompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:v3 contentSizeCategory:0 symbolicTraits:0.0];

  return v4;
}

+ (id)system12MediumCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:v3 contentSizeCategory:0 symbolicTraits:UIFontWeightMedium];

  return v4;
}

+ (id)system12SemiboldCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:v3 contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v4;
}

+ (id)system12BoldCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:v3 contentSizeCategory:0 symbolicTraits:UIFontWeightBold];

  return v4;
}

+ (id)system13CompatibleWithTraitCollection:(id)a3 withSymbolicTraits:(unsigned int)a4
{
  v4 = *&a4;
  v5 = [a3 preferredContentSizeCategory];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote weight:v5 contentSizeCategory:v4 symbolicTraits:0.0];

  return v6;
}

+ (id)system13MediumCompatibleWithTraitCollection:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [a1 _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote weight:v4 contentSizeCategory:0 symbolicTraits:UIFontWeightMedium];

  return v5;
}

+ (id)system13AdaptiveCompatibleWithTraitCollection:(id)a3
{
  v3 = a3;
  v4 = _MKPlaceCardUseSmallerFont();
  v5 = &UIFontTextStyleFootnote;
  if (v4)
  {
    v5 = &UIFontTextStyleCaption1;
  }

  v6 = *v5;
  v7 = [v3 preferredContentSizeCategory];

  v8 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v6 weight:v7 contentSizeCategory:0 symbolicTraits:0.0];

  return v8;
}

+ (id)system13SemiboldCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote weight:v3 contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v4;
}

+ (id)system15CompatibleWithTraitCollection:(id)a3 withSymbolicTraits:(unsigned int)a4
{
  v4 = *&a4;
  v5 = [a3 preferredContentSizeCategory];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline weight:v5 contentSizeCategory:v4 symbolicTraits:0.0];

  return v6;
}

+ (id)system15MediumCompatibleWithTraitCollection:(id)a3
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [a1 _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline weight:v4 contentSizeCategory:0 symbolicTraits:UIFontWeightMedium];

  return v5;
}

+ (id)system15SemiboldCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline weight:v3 contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v4;
}

+ (id)system17CompatibleWithTraitCollection:(id)a3 withSymbolicTraits:(unsigned int)a4
{
  v4 = *&a4;
  v5 = [a3 preferredContentSizeCategory];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:v5 contentSizeCategory:v4 symbolicTraits:0.0];

  return v6;
}

+ (id)system17SemiboldCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:v3 contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v4;
}

+ (id)system20Adaptive
{
  v2 = _MKPlaceCardUseSmallerFont();
  v3 = &UIFontTextStyleBody;
  if (!v2)
  {
    v3 = &UIFontTextStyleTitle3;
  }

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:*v3];

  return v4;
}

+ (id)system20AdaptiveMedium
{
  v2 = _MKPlaceCardUseSmallerFont();
  v3 = &UIFontTextStyleTitle3;
  if (v2)
  {
    v3 = &UIFontTextStyleBody;
  }

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:*v3 weight:UIFontWeightMedium];

  return v4;
}

+ (id)system20AdaptiveSemiboldCompatibleWithTraitCollection:(id)a3
{
  v3 = a3;
  v4 = _MKPlaceCardUseSmallerFont();
  v5 = &UIFontTextStyleTitle3;
  if (v4)
  {
    v5 = &UIFontTextStyleBody;
  }

  v6 = *v5;
  v7 = [v3 preferredContentSizeCategory];

  v8 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v6 weight:v7 contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v8;
}

+ (id)system22AdaptiveSemibold
{
  v2 = _MKPlaceCardUseSmallerFont();
  v3 = &UIFontTextStyleTitle2;
  if (v2)
  {
    v3 = &UIFontTextStyleBody;
  }

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:*v3 weight:UIFontWeightSemibold];

  return v4;
}

+ (id)system20CompatibleWithTraitCollection:(id)a3 withSymbolicTraits:(unsigned int)a4
{
  v4 = *&a4;
  v5 = [a3 preferredContentSizeCategory];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle3 weight:v5 contentSizeCategory:v4 symbolicTraits:0.0];

  return v6;
}

+ (id)system22SemiboldCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:v3 contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v4;
}

+ (id)system22AdaptiveCondensedBold
{
  v2 = _MKPlaceCardUseSmallerFont();
  v3 = &UIFontTextStyleTitle2;
  if (v2)
  {
    v3 = &UIFontTextStyleTitle3;
  }

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:*v3 weight:0 contentSizeCategory:64 symbolicTraits:UIFontWeightBold];

  return v4;
}

+ (id)system28AdaptiveCondensedBold
{
  v2 = _MKPlaceCardUseSmallerFont();
  v3 = &UIFontTextStyleTitle1;
  if (v2)
  {
    v3 = &UIFontTextStyleTitle2;
  }

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:*v3 weight:0 contentSizeCategory:64 symbolicTraits:UIFontWeightBold];

  return v4;
}

+ (id)system28AdaptiveBoldShort
{
  v2 = _MKPlaceCardUseSmallerFont();
  v3 = &UIFontTextStyleTitle1;
  if (v2)
  {
    v3 = &UIFontTextStyleTitle2;
  }

  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:*v3 weight:0 contentSizeCategory:0x8000 symbolicTraits:UIFontWeightBold];

  return v4;
}

+ (id)system28BoldCompatibleWithTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle1 weight:v3 contentSizeCategory:0 symbolicTraits:UIFontWeightBold];

  return v4;
}

+ (BOOL)accessibilityTextEnabled
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  if (qword_10195CFA8 != -1)
  {
    dispatch_once(&qword_10195CFA8, &stru_101626FF8);
  }

  v4 = [qword_10195CFA0 containsObject:v3];

  return v4;
}

+ (id)_mapsCar_fontForTextStyle:(id)a3 weight:(double)a4 grade:(int)a5 traits:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v9 = a3;
  v10 = +[CarDisplayController sharedInstance];
  v11 = [v10 screenTraitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = [NSString stringWithFormat:@"%@_w%.2f_g%d_t%d_%@", v9, *&a4, v7, v6, v12];

  v14 = qword_10195D928;
  if (!qword_10195D928)
  {
    v15 = objc_alloc_init(NSCache);
    v16 = qword_10195D928;
    qword_10195D928 = v15;

    v14 = qword_10195D928;
  }

  v17 = [v14 objectForKey:v13];
  if (!v17)
  {
    v18 = +[CarDisplayController sharedInstance];
    v19 = [v18 screenTraitCollection];
    v20 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v19];

    v21 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v22 = UIFontWeightRegular;
    if (UIFontWeightRegular != a4)
    {
      v23 = [NSNumber numberWithDouble:a4];
      [v21 setObject:v23 forKeyedSubscript:UIFontWeightTrait];
    }

    if (v6)
    {
      v24 = [NSNumber numberWithUnsignedInt:v6, v22];
      [v21 setObject:v24 forKeyedSubscript:UIFontSymbolicTrait];
    }

    if (v7 != -1)
    {
      v25 = [NSNumber numberWithInt:v7, v22];
      [v21 setObject:v25 forKeyedSubscript:UIFontSystemFontGradeTrait];
    }

    if ([v21 count])
    {
      v29 = UIFontDescriptorTraitsAttribute;
      v30 = v21;
      v26 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v27 = [v20 fontDescriptorByAddingAttributes:v26];

      v20 = v27;
    }

    v17 = [UIFont fontWithDescriptor:v20 size:0.0];
    if (v17)
    {
      [qword_10195D928 setObject:v17 forKey:v13];
    }
  }

  return v17;
}

@end