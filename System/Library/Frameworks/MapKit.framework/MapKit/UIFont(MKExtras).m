@interface UIFont(MKExtras)
+ (NSString)_contentSizeCategoryInTableViewCellWithContentSizeCategory:()MKExtras;
+ (id)_mapkit_preferredFontForTextStyle:()MKExtras weight:grade:contentSizeCategory:symbolicTraits:;
+ (id)_mapkit_preferredFontForTextStyleInTableViewCell:()MKExtras weight:contentSizeCategory:symbolicTraits:;
+ (id)_mapkit_preferredFontForTextStyleInTableViewCell:()MKExtras weight:grade:contentSizeCategory:symbolicTraits:;
+ (id)_mapkit_preferredFontForTextStyleTimeDisplayInTableViewCell:()MKExtras addingSymbolicTraits:useMonospace:;
+ (uint64_t)_mapkit_accessibilityTextEnabled;
+ (uint64_t)_mapkit_ax3TextEnabled;
@end

@implementation UIFont(MKExtras)

+ (uint64_t)_mapkit_accessibilityTextEnabled
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  if (_mapkit_accessibilityTextEnabled_onceToken != -1)
  {
    dispatch_once(&_mapkit_accessibilityTextEnabled_onceToken, &__block_literal_global_11);
  }

  v2 = [_mapkit_accessibilityTextEnabled_largeSizes containsObject:v1];

  return v2;
}

+ (uint64_t)_mapkit_ax3TextEnabled
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  if (_mapkit_ax3TextEnabled_onceToken != -1)
  {
    dispatch_once(&_mapkit_ax3TextEnabled_onceToken, &__block_literal_global_5600);
  }

  v2 = [_mapkit_ax3TextEnabled_largeSizes containsObject:v1];

  return v2;
}

+ (id)_mapkit_preferredFontForTextStyleTimeDisplayInTableViewCell:()MKExtras addingSymbolicTraits:useMonospace:
{
  v6 = [a1 _mapkit_preferredFontForTextStyleInTableViewCell:? addingSymbolicTraits:?];
  v7 = [v6 _mapkit_fontByAddingFeaturesForTimeDisplayUseMonospace:a5];

  return v7;
}

+ (id)_mapkit_preferredFontForTextStyle:()MKExtras weight:grade:contentSizeCategory:symbolicTraits:
{
  v29[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%f_%lu_%d", v12, v11, *&a1, a5, a7];
  v14 = fontCache;
  if (!fontCache)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = fontCache;
    fontCache = v15;

    v14 = fontCache;
  }

  v17 = [v14 objectForKeyedSubscript:v13];
  if (!v17)
  {
    v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v12];
    v19 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v18];
    if (a1 != 0.0 || a5 || a7)
    {
      v20 = [MEMORY[0x1E695DF90] dictionary];
      if (a1 != 0.0)
      {
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
        [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69DB990]];
      }

      if (a7)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a7];
        [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69DB918]];
      }

      if (a5)
      {
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
        [v20 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69DB948]];
      }

      v28 = *MEMORY[0x1E69DB8F0];
      v24 = [v20 copy];
      v29[0] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v26 = [v19 fontDescriptorByAddingAttributes:v25];

      v19 = v26;
    }

    v17 = [MEMORY[0x1E69DB878] fontWithDescriptor:v19 size:0.0];
    [fontCache setObject:v17 forKeyedSubscript:v13];
  }

  return v17;
}

+ (id)_mapkit_preferredFontForTextStyleInTableViewCell:()MKExtras weight:contentSizeCategory:symbolicTraits:
{
  v10 = a4;
  v11 = [a1 _contentSizeCategoryInTableViewCellWithContentSizeCategory:a5];
  v12 = [a1 _mapkit_preferredFontForTextStyle:v10 weight:0 grade:v11 contentSizeCategory:a6 symbolicTraits:a2];

  return v12;
}

+ (id)_mapkit_preferredFontForTextStyleInTableViewCell:()MKExtras weight:grade:contentSizeCategory:symbolicTraits:
{
  v12 = a4;
  v13 = [a1 _contentSizeCategoryInTableViewCellWithContentSizeCategory:a6];
  v14 = [a1 _mapkit_preferredFontForTextStyle:v12 weight:a5 grade:v13 contentSizeCategory:a7 symbolicTraits:a2];

  return v14;
}

+ (NSString)_contentSizeCategoryInTableViewCellWithContentSizeCategory:()MKExtras
{
  v3 = a3;
  v4 = v3;
  if (v3 && UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC90]) && UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC70]) != NSOrderedAscending)
  {
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v5 = [v6 _preferredContentSizeCategory:2];
  }

  return v5;
}

@end