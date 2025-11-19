@interface SFNavigationBarMetrics
+ (id)traitsAffectingBarMetrics;
- (NSString)_contentSizeCategoryForFontsWithPreferredCategory:(NSString *)a1;
- (SFNavigationBarMetrics)init;
- (double)barButtonHeight;
- (double)barHeightWithBarMetricsCategory:(uint64_t)a1;
- (double)distanceFromLabelBaselineToURLOutlineBottom;
- (double)minimumBarHeight;
- (double)narrowEditingScaleFactor;
- (double)progressBarCornerRadiusWithBarMetricsCategory:(uint64_t)a1;
- (double)squishHeightQuantizationOffsetWithBarMetricsCategory:(uint64_t)a1;
- (double)urlContainerTop;
- (double)urlLabelVerticalOffset;
- (double)urlOutlineCornerRadius;
- (double)urlOutlineHeight;
- (uint64_t)_updateForContentSizeCategory:(uint64_t)a3 legibilityWeight:;
- (uint64_t)traitCollectionForButtonMetrics;
- (uint64_t)updateForStatusBarHeight:(uint64_t)result;
- (uint64_t)updateForTraitCollection:(uint64_t)a1;
- (uint64_t)useNarrowInsets;
- (void)_updateMetrics;
- (void)accessoryImageSymbolConfiguration;
- (void)defaultBoldFont;
- (void)defaultLabelFont;
- (void)mediumButtonImageSymbolConfiguration;
- (void)narrowEditingLabelFont;
- (void)squishedAccessoryImageSymbolConfiguration;
- (void)updateMetricsWithModalPresentationStyle:(uint64_t)a1;
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
    v4 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v5 = [v4 legibilityWeight];

    v6 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = *MEMORY[0x1E69DDC70];
    }

    [(SFNavigationBarMetrics *)v2 _updateForContentSizeCategory:v8 legibilityWeight:v5];

    [(SFNavigationBarMetrics *)v2 _updateMetrics];
    v9 = v2;
  }

  return v2;
}

- (NSString)_contentSizeCategoryForFontsWithPreferredCategory:(NSString *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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

    a1 = v5;
  }

  return a1;
}

- (uint64_t)_updateForContentSizeCategory:(uint64_t)a3 legibilityWeight:
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [(SFNavigationBarMetrics *)a1 _contentSizeCategoryForFontsWithPreferredCategory:v5];
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = [v7 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(v8, v6) != NSOrderedSame;
    }

    else
    {
      v9 = 1;
    }

    v10 = _SFToolbarContentSizeCategoryForPreferredCategory();
    v11 = *(a1 + 224);
    if (v11)
    {
      v12 = [v11 preferredContentSizeCategory];
      if (UIContentSizeCategoryCompareToCategory(v12, v10))
      {
      }

      else
      {
        v13 = [*(a1 + 224) legibilityWeight];

        v14 = v13 != a3 || v9;
        if (v14 != 1)
        {
          a1 = 0;
          goto LABEL_13;
        }
      }
    }

    v15 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v6];
    v16 = *(a1 + 16);
    *(a1 + 16) = v15;

    v17 = MEMORY[0x1E69DD1B8];
    v18 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v10];
    v24[0] = v18;
    v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithLegibilityWeight:a3];
    v24[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v21 = [v17 traitCollectionWithTraitsFromCollections:v20];
    v22 = *(a1 + 224);
    *(a1 + 224) = v21;

    a1 = 1;
LABEL_13:
  }

  return a1;
}

- (void)_updateMetrics
{
  if (a1)
  {
    v2 = (a1 + 16);
    v3 = *(a1 + 104);
    v43 = [*(a1 + 16) preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v43);
    v5 = 1.0;
    if (IsAccessibilityCategory)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    *(a1 + 152) = v5;
    v6 = [MEMORY[0x1E69DCA40] defaultMetrics];
    [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:50.0];
    *(a1 + 72) = ceil(v7);
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      if (*(a1 + 144))
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

    v12 = *(a1 + 8) == 1 && *(a1 + 80) < v8;
    v13 = MEMORY[0x1E69B1E20];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v12 = *(a1 + 8);
    }

    v14 = *v13;
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:v9 compatibleWithTraitCollection:?];
    v16 = ceil(v15);
    if (v12)
    {
      v16 = v8;
    }

    *(a1 + 80) = v16;
    [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:10.0];
    *(a1 + 160) = v17;
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:v10 compatibleWithTraitCollection:?];
    *(a1 + 136) = v18;
    v19 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v20 = 19.0;
    if (v19)
    {
      v20 = 25.0;
    }

    [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:v20];
    *(a1 + 24) = ceil(v21);
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [OUTLINED_FUNCTION_1_8() scaledValueForValue:? compatibleWithTraitCollection:?];
      *(a1 + 176) = v22;
      v23 = 44.0;
      [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:44.0];
      *(a1 + 184) = v24;
      [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:18.0];
      *(a1 + 216) = v25;
      v2 = (a1 + 224);
      v26 = 232;
    }

    else
    {
      [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:7.0];
      *(a1 + 176) = v27;
      [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:36.0];
      *(a1 + 184) = v28;
      v23 = 12.0;
      v26 = 216;
    }

    [v6 scaledValueForValue:*v2 compatibleWithTraitCollection:v23];
    *(a1 + v26) = v29;
    [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:-4.0];
    *(a1 + 192) = v30;
    _SFOnePixel();
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:? compatibleWithTraitCollection:?];
    *(a1 + 200) = v31;
    _SFOnePixel();
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:? compatibleWithTraitCollection:?];
    *(a1 + 208) = v32;
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

    [v6 scaledValueForValue:*(a1 + 16) compatibleWithTraitCollection:v33];
    *(a1 + 88) = v35;
    [OUTLINED_FUNCTION_1_8() scaledValueForValue:v34 compatibleWithTraitCollection:?];
    *(a1 + 96) = v36;
    v37 = *(a1 + 32);
    *(a1 + 32) = 0;

    v38 = *(a1 + 40);
    *(a1 + 40) = 0;

    v39 = *(a1 + 48);
    *(a1 + 48) = 0;

    *(a1 + 56) = 1;
    v40 = *(a1 + 112);
    *(a1 + 112) = 0;

    v41 = *(a1 + 120);
    *(a1 + 120) = 0;

    v42 = *(a1 + 128);
    *(a1 + 128) = 0;
  }
}

- (uint64_t)updateForTraitCollection:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 preferredContentSizeCategory];
    v6 = -[SFNavigationBarMetrics _updateForContentSizeCategory:legibilityWeight:](a1, v5, [v4 legibilityWeight]);

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
      if (*(a1 + 8) != v8)
      {
        *(a1 + 8) = v8;
LABEL_9:
        [(SFNavigationBarMetrics *)a1 _updateMetrics];
        a1 = 1;
        goto LABEL_8;
      }
    }

    a1 = 0;
  }

LABEL_8:

  return a1;
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

- (void)updateMetricsWithModalPresentationStyle:(uint64_t)a1
{
  if (a1 && [MEMORY[0x1E69C8880] isSolariumEnabled] && _SFDeviceIsPad())
  {
    *(a1 + 144) = (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0;

    [(SFNavigationBarMetrics *)a1 _updateMetrics];
  }
}

- (double)barHeightWithBarMetricsCategory:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = 72;
  if (a2 == 1)
  {
    v2 = 80;
  }

  return OUTLINED_FUNCTION_2_6(a1, v2);
}

- (double)squishHeightQuantizationOffsetWithBarMetricsCategory:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = 88;
  if (a2 == 1)
  {
    v2 = 96;
  }

  return OUTLINED_FUNCTION_2_6(a1, v2);
}

- (double)progressBarCornerRadiusWithBarMetricsCategory:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = 160;
  if (a2 == 1)
  {
    v2 = 136;
  }

  return OUTLINED_FUNCTION_2_6(a1, v2);
}

- (void)defaultLabelFont
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      v4 = [MEMORY[0x1E69DCA40] defaultMetrics];
      v5 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] labelFontSize];
      [v5 systemFontOfSize:?];
      objc_claimAutoreleasedReturnValue();
      v6 = [OUTLINED_FUNCTION_0_7() scaledFontForFont:? compatibleWithTraitCollection:?];
      v7 = v2[4];
      v2[4] = v6;

      v3 = v2[4];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)defaultBoldFont
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      v4 = [MEMORY[0x1E69DCA40] defaultMetrics];
      v5 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] labelFontSize];
      [v5 boldSystemFontOfSize:?];
      objc_claimAutoreleasedReturnValue();
      v6 = [OUTLINED_FUNCTION_0_7() scaledFontForFont:? compatibleWithTraitCollection:?];
      v7 = v2[5];
      v2[5] = v6;

      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)narrowEditingLabelFont
{
  if (a1)
  {
    v3 = a1;
    v4 = a1[6];
    if (!v4)
    {
      v5 = [MEMORY[0x1E69DCA40] defaultMetrics];
      [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
      objc_claimAutoreleasedReturnValue();
      v6 = [OUTLINED_FUNCTION_0_7() scaledFontForFont:? compatibleWithTraitCollection:?];
      v7 = v3[6];
      v3[6] = v6;

      v4 = v3[6];
    }

    a1 = v4;
    v2 = vars8;
  }

  return a1;
}

- (double)narrowEditingScaleFactor
{
  if (!a1)
  {
    return 0.0;
  }

  if (*(a1 + 56) == 1)
  {
    *(a1 + 56) = 0;
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v3 setText:@"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"];
    v4 = [(SFNavigationBarMetrics *)a1 defaultLabelFont];
    [v3 setFont:v4];

    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
    [v3 sizeThatFits:{*MEMORY[0x1E695F060], v6}];
    v8 = v7;
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setText:@"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"];
    v10 = [(SFNavigationBarMetrics *)a1 narrowEditingLabelFont];
    [v9 setFont:v10];

    [v9 sizeThatFits:{v5, v6}];
    *(a1 + 64) = v11 / v8;
  }

  return *(a1 + 64);
}

- (void)accessoryImageSymbolConfiguration
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[14];
    if (!v3)
    {
      v4 = [MEMORY[0x1E69DCA40] defaultMetrics];
      [MEMORY[0x1E69DB878] labelFontSize];
      [OUTLINED_FUNCTION_1_8() scaledValueForValue:? compatibleWithTraitCollection:?];
      v6 = v5;

      v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:1 scale:v6];
      v8 = v2[14];
      v2[14] = v7;

      v3 = v2[14];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)squishedAccessoryImageSymbolConfiguration
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[15];
    if (!v3)
    {
      v4 = [MEMORY[0x1E69DCA40] defaultMetrics];
      [v4 scaledValueForValue:v2[2] compatibleWithTraitCollection:12.0];
      v6 = v5;

      v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:v6];
      v8 = v2[15];
      v2[15] = v7;

      v3 = v2[15];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)mediumButtonImageSymbolConfiguration
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[16];
    if (!v3)
    {
      v4 = [MEMORY[0x1E69DCAD8] _sf_staticConfigurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2 compatibleWithTraitCollection:a1[28]];
      v5 = v2[16];
      v2[16] = v4;

      v3 = v2[16];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (double)urlOutlineCornerRadius
{
  if (a1)
  {
    return *(a1 + 160);
  }

  else
  {
    return 0.0;
  }
}

- (double)minimumBarHeight
{
  if (a1)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0.0;
  }
}

- (double)urlContainerTop
{
  if (a1)
  {
    return *(a1 + 176);
  }

  else
  {
    return 0.0;
  }
}

- (double)urlOutlineHeight
{
  if (a1)
  {
    return *(a1 + 184);
  }

  else
  {
    return 0.0;
  }
}

- (double)urlLabelVerticalOffset
{
  if (a1)
  {
    return *(a1 + 192);
  }

  else
  {
    return 0.0;
  }
}

- (double)distanceFromLabelBaselineToURLOutlineBottom
{
  if (a1)
  {
    return *(a1 + 216);
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
  if (a1)
  {
    return *(a1 + 232);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)useNarrowInsets
{
  if (a1)
  {
    v1 = *(a1 + 144);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end