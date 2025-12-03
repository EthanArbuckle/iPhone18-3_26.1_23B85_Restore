@interface UIFont
+ (BOOL)accessibilityTextEnabled;
+ (double)_maps_bodyScaledValueForValue:(double)value compatibleWithTraitCollection:(id)collection;
+ (double)_maps_discreteSizeForSize:(double)size;
+ (id)_mapsCar_fontForTextStyle:(id)style weight:(double)weight grade:(int)grade traits:(unsigned int)traits;
+ (id)_maps_boldSystemFontWithFixedSize:(double)size adaptiveFont:(BOOL)font;
+ (id)_maps_boldSystemFontWithSize:(double)size;
+ (id)_maps_cappedFont:(id)font withMaxPoint:(double)point;
+ (id)_maps_fontProviderWeight:(double)weight minimumPointSize:(double)size minimumSizeCategory:(id)category maximumPointSize:(double)pointSize maximumSizeCategory:(id)sizeCategory;
+ (id)_maps_fontWithTextStyle:(id)style weight:(double)weight compatibleWithTraitCollection:(id)collection;
+ (id)_maps_navHeadingFontWithPreferredSize:(double)size diameter:(double)diameter desiredPadding:(double)padding;
+ (id)_maps_systemFontWithFixedSize:(double)size adaptiveFont:(BOOL)font;
+ (id)_maps_systemFontWithSize:(double)size;
+ (id)_maps_systemFontWithSize:(double)size weight:(double)weight grade:(unint64_t)grade;
+ (id)_maps_textStyleForSize:(double)size useAdaptiveIfNeeded:(BOOL)needed effectivePointSize:(double *)pointSize;
+ (id)system12BoldCompatibleWithTraitCollection:(id)collection;
+ (id)system12CompatibleWithTraitCollection:(id)collection;
+ (id)system12MediumCompatibleWithTraitCollection:(id)collection;
+ (id)system12SemiboldCompatibleWithTraitCollection:(id)collection;
+ (id)system13AdaptiveCompatibleWithTraitCollection:(id)collection;
+ (id)system13CompatibleWithTraitCollection:(id)collection withSymbolicTraits:(unsigned int)traits;
+ (id)system13MediumCompatibleWithTraitCollection:(id)collection;
+ (id)system13SemiboldCompatibleWithTraitCollection:(id)collection;
+ (id)system15CompatibleWithTraitCollection:(id)collection withSymbolicTraits:(unsigned int)traits;
+ (id)system15MediumCompatibleWithTraitCollection:(id)collection;
+ (id)system15SemiboldCompatibleWithTraitCollection:(id)collection;
+ (id)system17CompatibleWithTraitCollection:(id)collection withSymbolicTraits:(unsigned int)traits;
+ (id)system17SemiboldCompatibleWithTraitCollection:(id)collection;
+ (id)system20Adaptive;
+ (id)system20AdaptiveMedium;
+ (id)system20AdaptiveSemiboldCompatibleWithTraitCollection:(id)collection;
+ (id)system20CompatibleWithTraitCollection:(id)collection withSymbolicTraits:(unsigned int)traits;
+ (id)system22AdaptiveCondensedBold;
+ (id)system22AdaptiveSemibold;
+ (id)system22SemiboldCompatibleWithTraitCollection:(id)collection;
+ (id)system28AdaptiveBoldShort;
+ (id)system28AdaptiveCondensedBold;
+ (id)system28BoldCompatibleWithTraitCollection:(id)collection;
- (UIFont)_maps_fontWithMonospacedNumbers;
- (id)_maps_scaledFontForScaleFactor:(double)factor;
@end

@implementation UIFont

- (id)_maps_scaledFontForScaleFactor:(double)factor
{
  [(UIFont *)self pointSize];
  v6 = ceil(v5 * factor + -0.5);
  fontDescriptor = [(UIFont *)self fontDescriptor];
  v8 = [UIFont fontWithDescriptor:fontDescriptor size:v6];

  return v8;
}

- (UIFont)_maps_fontWithMonospacedNumbers
{
  [(UIFont *)self pointSize];
  v4 = v3;
  fontDescriptor = [(UIFont *)self fontDescriptor];
  _mapkit_fontDescriptorByAddingFeaturesForTabularFigures = [fontDescriptor _mapkit_fontDescriptorByAddingFeaturesForTabularFigures];
  v7 = [UIFont fontWithDescriptor:_mapkit_fontDescriptorByAddingFeaturesForTabularFigures size:v4];

  return v7;
}

+ (id)_maps_fontProviderWeight:(double)weight minimumPointSize:(double)size minimumSizeCategory:(id)category maximumPointSize:(double)pointSize maximumSizeCategory:(id)sizeCategory
{
  categoryCopy = category;
  sizeCategoryCopy = sizeCategory;
  if (qword_10195CFD0 != -1)
  {
    dispatch_once(&qword_10195CFD0, &stru_101627038);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1006F4D18;
  v17[3] = &unk_101627060;
  sizeCopy = size;
  weightCopy = weight;
  v18 = categoryCopy;
  v19 = sizeCategoryCopy;
  pointSizeCopy = pointSize;
  v13 = sizeCategoryCopy;
  v14 = categoryCopy;
  v15 = objc_retainBlock(v17);

  return v15;
}

+ (id)_maps_fontWithTextStyle:(id)style weight:(double)weight compatibleWithTraitCollection:(id)collection
{
  v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style compatibleWithTraitCollection:collection];
  v16 = UIFontDescriptorTraitsAttribute;
  v14 = UIFontWeightTrait;
  v8 = [NSNumber numberWithDouble:weight];
  v15 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [self fontWithDescriptor:v11 size:0.0];

  return v12;
}

+ (double)_maps_bodyScaledValueForValue:(double)value compatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  v8 = [self _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:0.0];

  [collectionCopy displayScale];
  v10 = v9;

  if (v10 == 0.0)
  {
    v11 = +[UIScreen mainScreen];
    [v11 scale];
  }

  [v8 _scaledValueForValue:value];
  UICeilToScale();
  v13 = v12;

  return v13;
}

+ (id)_maps_cappedFont:(id)font withMaxPoint:(double)point
{
  fontCopy = font;
  [fontCopy pointSize];
  if (v6 <= point)
  {
    v9 = fontCopy;
  }

  else
  {
    fontDescriptor = [fontCopy fontDescriptor];
    v8 = [fontDescriptor fontDescriptorWithSize:point];
    v9 = [UIFont fontWithDescriptor:v8 size:0.0];
  }

  return v9;
}

+ (id)_maps_textStyleForSize:(double)size useAdaptiveIfNeeded:(BOOL)needed effectivePointSize:(double *)pointSize
{
  neededCopy = needed;
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
        if (v15 >= size)
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

  if (neededCopy && _MKPlaceCardUseSmallerFont() && v11)
  {
    v16 = [qword_10195CFB0 objectAtIndexedSubscript:--v11];
    [v16 floatValue];
    size = v17;
  }

  if (pointSize)
  {
    *pointSize = size;
  }

  v18 = [qword_10195CFB8 objectAtIndexedSubscript:{v11, v20}];

  return v18;
}

+ (double)_maps_discreteSizeForSize:(double)size
{
  v3 = 11.0;
  if (size > 11.0)
  {
    v3 = 12.0;
    if (size > 12.0)
    {
      v3 = 15.0;
      if (size > 15.0)
      {
        v3 = 17.0;
        if (size > 17.0)
        {
          v3 = 20.0;
          if (size > 20.0)
          {
            v3 = 22.0;
            if (size > 22.0)
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

+ (id)_maps_navHeadingFontWithPreferredSize:(double)size diameter:(double)diameter desiredPadding:(double)padding
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

  v17 = [NSNumber numberWithDouble:size];
  v61[0] = v17;
  v18 = [NSNumber numberWithDouble:size + -1.0];
  v61[1] = v18;
  v19 = [NSNumber numberWithDouble:size + -2.0];
  v61[2] = v19;
  v20 = [NSArray arrayWithObjects:v61 count:3];

  firstObject = [v20 firstObject];
  [firstObject cgFloatValue];
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
        [v32 boundingRectWithSize:3 options:v33 attributes:0 context:{diameter, diameter}];
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
      [v28 boundingRectWithSize:3 options:v43 attributes:0 context:{diameter, diameter}];
      v45 = v44;

      if (ceil((diameter - v45) * 0.5) >= padding)
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

+ (id)_maps_boldSystemFontWithFixedSize:(double)size adaptiveFont:(BOOL)font
{
  v8 = 0.0;
  v4 = [self _maps_textStyleForSize:font useAdaptiveIfNeeded:&v8 effectivePointSize:size];
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:2 options:0];
  v6 = [UIFont fontWithDescriptor:v5 size:v8];

  return v6;
}

+ (id)_maps_systemFontWithFixedSize:(double)size adaptiveFont:(BOOL)font
{
  v8 = 0.0;
  v4 = [self _maps_textStyleForSize:font useAdaptiveIfNeeded:&v8 effectivePointSize:size];
  v5 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:0 options:0];
  v6 = [UIFont fontWithDescriptor:v5 size:v8];

  return v6;
}

+ (id)_maps_systemFontWithSize:(double)size weight:(double)weight grade:(unint64_t)grade
{
  v9 = [self _maps_textStyleForSize:0 useAdaptiveIfNeeded:0 effectivePointSize:?];
  v10 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v9 weight:grade grade:weight];
  [self _maps_discreteSizeForSize:size];
  v12 = [v10 _fontScaledByScaleFactor:size / v11];

  return v12;
}

+ (id)_maps_boldSystemFontWithSize:(double)size
{
  v5 = [self _maps_textStyleForSize:0 useAdaptiveIfNeeded:0 effectivePointSize:?];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v5 addingSymbolicTraits:2];

  [self _maps_discreteSizeForSize:size];
  v8 = [v6 _fontScaledByScaleFactor:size / v7];

  return v8;
}

+ (id)_maps_systemFontWithSize:(double)size
{
  v5 = [self _maps_textStyleForSize:0 useAdaptiveIfNeeded:0 effectivePointSize:?];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v5 addingSymbolicTraits:0];

  [self _maps_discreteSizeForSize:size];
  v8 = [v6 _fontScaledByScaleFactor:size / v7];

  return v8;
}

+ (id)system12CompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:0.0];

  return v4;
}

+ (id)system12MediumCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightMedium];

  return v4;
}

+ (id)system12SemiboldCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v4;
}

+ (id)system12BoldCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightBold];

  return v4;
}

+ (id)system13CompatibleWithTraitCollection:(id)collection withSymbolicTraits:(unsigned int)traits
{
  v4 = *&traits;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote weight:preferredContentSizeCategory contentSizeCategory:v4 symbolicTraits:0.0];

  return v6;
}

+ (id)system13MediumCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v5 = [self _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightMedium];

  return v5;
}

+ (id)system13AdaptiveCompatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = _MKPlaceCardUseSmallerFont();
  v5 = &UIFontTextStyleFootnote;
  if (v4)
  {
    v5 = &UIFontTextStyleCaption1;
  }

  v6 = *v5;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];

  v8 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v6 weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:0.0];

  return v8;
}

+ (id)system13SemiboldCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleFootnote weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v4;
}

+ (id)system15CompatibleWithTraitCollection:(id)collection withSymbolicTraits:(unsigned int)traits
{
  v4 = *&traits;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline weight:preferredContentSizeCategory contentSizeCategory:v4 symbolicTraits:0.0];

  return v6;
}

+ (id)system15MediumCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v5 = [self _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightMedium];

  return v5;
}

+ (id)system15SemiboldCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

  return v4;
}

+ (id)system17CompatibleWithTraitCollection:(id)collection withSymbolicTraits:(unsigned int)traits
{
  v4 = *&traits;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:preferredContentSizeCategory contentSizeCategory:v4 symbolicTraits:0.0];

  return v6;
}

+ (id)system17SemiboldCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

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

+ (id)system20AdaptiveSemiboldCompatibleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = _MKPlaceCardUseSmallerFont();
  v5 = &UIFontTextStyleTitle3;
  if (v4)
  {
    v5 = &UIFontTextStyleBody;
  }

  v6 = *v5;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];

  v8 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v6 weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

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

+ (id)system20CompatibleWithTraitCollection:(id)collection withSymbolicTraits:(unsigned int)traits
{
  v4 = *&traits;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v6 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle3 weight:preferredContentSizeCategory contentSizeCategory:v4 symbolicTraits:0.0];

  return v6;
}

+ (id)system22SemiboldCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightSemibold];

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

+ (id)system28BoldCompatibleWithTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle1 weight:preferredContentSizeCategory contentSizeCategory:0 symbolicTraits:UIFontWeightBold];

  return v4;
}

+ (BOOL)accessibilityTextEnabled
{
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];

  if (qword_10195CFA8 != -1)
  {
    dispatch_once(&qword_10195CFA8, &stru_101626FF8);
  }

  v4 = [qword_10195CFA0 containsObject:preferredContentSizeCategory];

  return v4;
}

+ (id)_mapsCar_fontForTextStyle:(id)style weight:(double)weight grade:(int)grade traits:(unsigned int)traits
{
  v6 = *&traits;
  v7 = *&grade;
  styleCopy = style;
  v10 = +[CarDisplayController sharedInstance];
  screenTraitCollection = [v10 screenTraitCollection];
  preferredContentSizeCategory = [screenTraitCollection preferredContentSizeCategory];
  v13 = [NSString stringWithFormat:@"%@_w%.2f_g%d_t%d_%@", styleCopy, *&weight, v7, v6, preferredContentSizeCategory];

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
    screenTraitCollection2 = [v18 screenTraitCollection];
    v20 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:screenTraitCollection2];

    v21 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v22 = UIFontWeightRegular;
    if (UIFontWeightRegular != weight)
    {
      v23 = [NSNumber numberWithDouble:weight];
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