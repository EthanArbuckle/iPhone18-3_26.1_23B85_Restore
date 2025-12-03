@interface SFNavigationBarMetrics
+ (id)traitsAffectingBarMetrics;
- (NSString)_contentSizeCategoryForFontsWithPreferredCategory:(NSString *)category;
- (SFNavigationBarMetrics)init;
- (double)barButtonHeight;
- (double)barHeightWithBarMetricsCategory:(uint64_t)category;
- (double)distanceFromLabelBaselineToURLOutlineBottom;
- (double)minimumBarHeight;
- (double)narrowEditingScaleFactor;
- (double)progressBarCornerRadiusWithBarMetricsCategory:(uint64_t)category;
- (double)squishHeightQuantizationOffsetWithBarMetricsCategory:(uint64_t)category;
- (double)urlContainerTop;
- (double)urlLabelVerticalOffset;
- (double)urlOutlineCornerRadius;
- (double)urlOutlineHeight;
- (uint64_t)_updateForContentSizeCategory:(uint64_t)category legibilityWeight:;
- (uint64_t)traitCollectionForButtonMetrics;
- (uint64_t)updateForStatusBarHeight:(uint64_t)result;
- (uint64_t)updateForTraitCollection:(uint64_t)collection;
- (uint64_t)useNarrowInsets;
- (void)_updateMetrics;
- (void)accessoryImageSymbolConfiguration;
- (void)defaultBoldFont;
- (void)defaultLabelFont;
- (void)mediumButtonImageSymbolConfiguration;
- (void)narrowEditingLabelFont;
- (void)squishedAccessoryImageSymbolConfiguration;
- (void)updateMetricsWithModalPresentationStyle:(uint64_t)style;
@end

@implementation SFNavigationBarMetrics

+ (id)traitsAffectingBarMetrics
{
  v2[3] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];

  return v0;
}

- (SFNavigationBarMetrics)init
{
  v10.receiver = self;
  v10.super_class = SFNavigationBarMetrics;
  v2 = [(SFNavigationBarMetrics *)&v10 init];
  if (v2)
  {
    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    legibilityWeight = [currentTraitCollection legibilityWeight];

    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v7 = preferredContentSizeCategory;
    if (preferredContentSizeCategory)
    {
      v8 = preferredContentSizeCategory;
    }

    else
    {
      v8 = *MEMORY[0x1E69DDC70];
    }

    [(SFNavigationBarMetrics *)v2 _updateForContentSizeCategory:v8 legibilityWeight:legibilityWeight];

    [(SFNavigationBarMetrics *)v2 _updateMetrics];
    v9 = v2;
  }

  return v2;
}

- (NSString)_contentSizeCategoryForFontsWithPreferredCategory:(NSString *)category
{
  v3 = a2;
  v4 = v3;
  if (category)
  {
    v5 = *MEMORY[0x1E69DDC70];
    if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC70]) != NSOrderedAscending && UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC90]))
    {
      v6 = (UIContentSizeCategoryIsAccessibilityCategory(v4) ? MEMORY[0x1E69DDC38] : MEMORY[0x1E69DDC50]);
      v5 = *v6;
      if (UIContentSizeCategoryCompareToCategory(*v6, v4) != NSOrderedAscending)
      {
        v5 = v4;
      }
    }

    category = v5;
  }

  return category;
}

- (uint64_t)_updateForContentSizeCategory:(uint64_t)category legibilityWeight:
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = [(SFNavigationBarMetrics *)self _contentSizeCategoryForFontsWithPreferredCategory:v5];
    v7 = *(self + 16);
    if (v7)
    {
      preferredContentSizeCategory = [v7 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, v6) != NSOrderedSame;
    }

    else
    {
      v9 = 1;
    }

    v10 = _SFToolbarContentSizeCategoryForPreferredCategory();
    v11 = *(self + 224);
    if (v11)
    {
      preferredContentSizeCategory2 = [v11 preferredContentSizeCategory];
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, v10))
      {
      }

      else
      {
        legibilityWeight = [*(self + 224) legibilityWeight];

        v14 = legibilityWeight != category || v9;
        if (v14 != 1)
        {
          self = 0;
          goto LABEL_13;
        }
      }
    }

    v15 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v6];
    v16 = *(self + 16);
    *(self + 16) = v15;

    v17 = MEMORY[0x1E69DD1B8];
    v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v10];
    v24[0] = v18;
    v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:category];
    v24[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v21 = [v17 traitCollectionWithTraitsFromCollections:v20];
    v22 = *(self + 224);
    *(self + 224) = v21;

    self = 1;
LABEL_13:
  }

  return self;
}

- (void)_updateMetrics
{
  if (self)
  {
    v2 = (self + 16);
    v3 = *(self + 104);
    preferredContentSizeCategory = [*(self + 16) preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
    v5 = 1.0;
    if (IsAccessibilityCategory)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    *(self + 152) = v5;
    defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
    [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:50.0];
    *(self + 72) = ceil(v7);
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      if (*(self + 144))
      {
        v8 = 64.0;
      }

      else
      {
        v8 = 70.0;
      }
    }

    else
    {
      v8 = 56.0;
    }

    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v9 = 54.0;
    }

    else
    {
      v9 = 44.0;
    }

    v10 = 0.0;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [MEMORY[0x1E69B1C40] progressBarHeightWithPreferredStyle:1];
      v10 = v11 * 0.5;
    }

    v12 = *(self + 8) == 1 && *(self + 80) < v8;
    v13 = MEMORY[0x1E69B1E20];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v12 = *(self + 8);
    }

    v14 = *v13;
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:v9 compatibleWithTraitCollection:?];
    v16 = ceil(v15);
    if (v12)
    {
      v16 = v8;
    }

    *(self + 80) = v16;
    [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:10.0];
    *(self + 160) = v17;
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:v10 compatibleWithTraitCollection:?];
    *(self + 136) = v18;
    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v20 = 19.0;
    if (isSolariumEnabled)
    {
      v20 = 25.0;
    }

    [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:v20];
    *(self + 24) = ceil(v21);
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [OUTLINED_FUNCTION_1_8() scaledValueForValue:? compatibleWithTraitCollection:?];
      *(self + 176) = v22;
      v23 = 44.0;
      [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:44.0];
      *(self + 184) = v24;
      [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:18.0];
      *(self + 216) = v25;
      v2 = (self + 224);
      v26 = 232;
    }

    else
    {
      [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:7.0];
      *(self + 176) = v27;
      [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:36.0];
      *(self + 184) = v28;
      v23 = 12.0;
      v26 = 216;
    }

    [defaultMetrics scaledValueForValue:*v2 compatibleWithTraitCollection:v23];
    *(self + v26) = v29;
    [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:-4.0];
    *(self + 192) = v30;
    _SFOnePixel();
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:? compatibleWithTraitCollection:?];
    *(self + 200) = v31;
    _SFOnePixel();
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:? compatibleWithTraitCollection:?];
    *(self + 208) = v32;
    v33 = 10.0;
    if (v3 <= v14)
    {
      v34 = 7.5;
    }

    else
    {
      v33 = 13.5;
      v34 = 10.5;
    }

    [defaultMetrics scaledValueForValue:*(self + 16) compatibleWithTraitCollection:v33];
    *(self + 88) = v35;
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:v34 compatibleWithTraitCollection:?];
    *(self + 96) = v36;
    v37 = *(self + 32);
    *(self + 32) = 0;

    v38 = *(self + 40);
    *(self + 40) = 0;

    v39 = *(self + 48);
    *(self + 48) = 0;

    *(self + 56) = 1;
    v40 = *(self + 112);
    *(self + 112) = 0;

    v41 = *(self + 120);
    *(self + 120) = 0;

    v42 = *(self + 128);
    *(self + 128) = 0;
  }
}

- (uint64_t)updateForTraitCollection:(uint64_t)collection
{
  v3 = a2;
  v4 = v3;
  if (collection)
  {
    preferredContentSizeCategory = [v3 preferredContentSizeCategory];
    v6 = -[SFNavigationBarMetrics _updateForContentSizeCategory:legibilityWeight:](collection, preferredContentSizeCategory, [v4 legibilityWeight]);

    v7 = objc_opt_respondsToSelector();
    if ((v6 & 1) != 0 || (v7 & 1) == 0)
    {
      if ((v6 | v7))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = [v4 _presentationSemanticContext] == 2;
      if (*(collection + 8) != v8)
      {
        *(collection + 8) = v8;
LABEL_9:
        [(SFNavigationBarMetrics *)collection _updateMetrics];
        collection = 1;
        goto LABEL_8;
      }
    }

    collection = 0;
  }

LABEL_8:

  return collection;
}

- (uint64_t)updateForStatusBarHeight:(uint64_t)result
{
  if (result)
  {
    if (*(result + 104) == a2)
    {
      return 0;
    }

    else
    {
      *(result + 104) = a2;
      [(SFNavigationBarMetrics *)result _updateMetrics];
      return 1;
    }
  }

  return result;
}

- (void)updateMetricsWithModalPresentationStyle:(uint64_t)style
{
  if (style && [MEMORY[0x1E69C8880] isSolariumEnabled] && _SFDeviceIsPad())
  {
    *(style + 144) = (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0;

    [(SFNavigationBarMetrics *)style _updateMetrics];
  }
}

- (double)barHeightWithBarMetricsCategory:(uint64_t)category
{
  if (!category)
  {
    return 0.0;
  }

  v2 = 72;
  if (a2 == 1)
  {
    v2 = 80;
  }

  return OUTLINED_FUNCTION_2_6(category, v2);
}

- (double)squishHeightQuantizationOffsetWithBarMetricsCategory:(uint64_t)category
{
  if (!category)
  {
    return 0.0;
  }

  v2 = 88;
  if (a2 == 1)
  {
    v2 = 96;
  }

  return OUTLINED_FUNCTION_2_6(category, v2);
}

- (double)progressBarCornerRadiusWithBarMetricsCategory:(uint64_t)category
{
  if (!category)
  {
    return 0.0;
  }

  v2 = 160;
  if (a2 == 1)
  {
    v2 = 136;
  }

  return OUTLINED_FUNCTION_2_6(category, v2);
}

- (void)defaultLabelFont
{
  if (self)
  {
    selfCopy = self;
    v3 = self[4];
    if (!v3)
    {
      defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
      v5 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] labelFontSize];
      [v5 systemFontOfSize:?];
      objc_claimAutoreleasedReturnValue();
      v6 = [OUTLINED_FUNCTION_0_7() scaledFontForFont:? compatibleWithTraitCollection:?];
      v7 = selfCopy[4];
      selfCopy[4] = v6;

      v3 = selfCopy[4];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)defaultBoldFont
{
  if (self)
  {
    selfCopy = self;
    v3 = self[5];
    if (!v3)
    {
      defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
      v5 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] labelFontSize];
      [v5 boldSystemFontOfSize:?];
      objc_claimAutoreleasedReturnValue();
      v6 = [OUTLINED_FUNCTION_0_7() scaledFontForFont:? compatibleWithTraitCollection:?];
      v7 = selfCopy[5];
      selfCopy[5] = v6;

      v3 = selfCopy[5];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)narrowEditingLabelFont
{
  if (self)
  {
    selfCopy = self;
    v4 = self[6];
    if (!v4)
    {
      defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
      [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
      objc_claimAutoreleasedReturnValue();
      v6 = [OUTLINED_FUNCTION_0_7() scaledFontForFont:? compatibleWithTraitCollection:?];
      v7 = selfCopy[6];
      selfCopy[6] = v6;

      v4 = selfCopy[6];
    }

    self = v4;
    v2 = vars8;
  }

  return self;
}

- (double)narrowEditingScaleFactor
{
  if (!self)
  {
    return 0.0;
  }

  if (*(self + 56) == 1)
  {
    *(self + 56) = 0;
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v3 setText:@"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"];
    defaultLabelFont = [(SFNavigationBarMetrics *)self defaultLabelFont];
    [v3 setFont:defaultLabelFont];

    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
    [v3 sizeThatFits:{*MEMORY[0x1E695F060], v6}];
    v8 = v7;
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setText:@"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"];
    narrowEditingLabelFont = [(SFNavigationBarMetrics *)self narrowEditingLabelFont];
    [v9 setFont:narrowEditingLabelFont];

    [v9 sizeThatFits:{v5, v6}];
    *(self + 64) = v11 / v8;
  }

  return *(self + 64);
}

- (void)accessoryImageSymbolConfiguration
{
  if (self)
  {
    selfCopy = self;
    v3 = self[14];
    if (!v3)
    {
      defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
      [MEMORY[0x1E69DB878] labelFontSize];
      [OUTLINED_FUNCTION_1_8() scaledValueForValue:? compatibleWithTraitCollection:?];
      v6 = v5;

      v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:1 scale:v6];
      v8 = selfCopy[14];
      selfCopy[14] = v7;

      v3 = selfCopy[14];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)squishedAccessoryImageSymbolConfiguration
{
  if (self)
  {
    selfCopy = self;
    v3 = self[15];
    if (!v3)
    {
      defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
      [defaultMetrics scaledValueForValue:selfCopy[2] compatibleWithTraitCollection:12.0];
      v6 = v5;

      v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v6];
      v8 = selfCopy[15];
      selfCopy[15] = v7;

      v3 = selfCopy[15];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)mediumButtonImageSymbolConfiguration
{
  if (self)
  {
    selfCopy = self;
    v3 = self[16];
    if (!v3)
    {
      v4 = [MEMORY[0x1E69DCAD8] _sf_staticConfigurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2 compatibleWithTraitCollection:self[28]];
      v5 = selfCopy[16];
      selfCopy[16] = v4;

      v3 = selfCopy[16];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (double)urlOutlineCornerRadius
{
  if (self)
  {
    return *(self + 160);
  }

  else
  {
    return 0.0;
  }
}

- (double)minimumBarHeight
{
  if (self)
  {
    return *(self + 24);
  }

  else
  {
    return 0.0;
  }
}

- (double)urlContainerTop
{
  if (self)
  {
    return *(self + 176);
  }

  else
  {
    return 0.0;
  }
}

- (double)urlOutlineHeight
{
  if (self)
  {
    return *(self + 184);
  }

  else
  {
    return 0.0;
  }
}

- (double)urlLabelVerticalOffset
{
  if (self)
  {
    return *(self + 192);
  }

  else
  {
    return 0.0;
  }
}

- (double)distanceFromLabelBaselineToURLOutlineBottom
{
  if (self)
  {
    return *(self + 216);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)traitCollectionForButtonMetrics
{
  if (result)
  {
    return *(result + 224);
  }

  return result;
}

- (double)barButtonHeight
{
  if (self)
  {
    return *(self + 232);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)useNarrowInsets
{
  if (self)
  {
    v1 = *(self + 144);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end