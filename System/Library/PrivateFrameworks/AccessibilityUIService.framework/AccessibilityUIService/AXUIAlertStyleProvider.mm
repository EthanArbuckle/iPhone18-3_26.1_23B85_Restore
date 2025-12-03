@interface AXUIAlertStyleProvider
+ (id)styleProvider;
- (BOOL)alertShouldGrowInAxis:(int64_t)axis forType:(unint64_t)type;
- (CGSize)alertBackgroundSizeForType:(unint64_t)type;
- (NSBundle)bundle;
- (UIEdgeInsets)alertContentEdgeInsetsForType:(unint64_t)type;
- (UIEdgeInsets)alertEdgeInsetsForType:(unint64_t)type;
- (UIEdgeInsets)alertIconImageEdgeInsetsForType:(unint64_t)type;
- (double)alertBackgroundCornerRadiusForType:(unint64_t)type;
- (double)alertTextLineHeightOffsetForType:(unint64_t)type;
- (id)alertSubtitleTextColorForType:(unint64_t)type;
- (id)alertSubtitleTextFontForType:(unint64_t)type;
- (id)alertTextColorForType:(unint64_t)type;
- (id)alertTextFontForType:(unint64_t)type;
- (int)alertBackgroundStyleForType:(unint64_t)type;
- (int)alertPositionForType:(unint64_t)type;
@end

@implementation AXUIAlertStyleProvider

+ (id)styleProvider
{
  v2 = objc_opt_new();

  return v2;
}

- (NSBundle)bundle
{
  bundle = self->_bundle;
  if (!bundle)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = self->_bundle;
    self->_bundle = v4;

    bundle = self->_bundle;
  }

  return bundle;
}

- (int)alertBackgroundStyleForType:(unint64_t)type
{
  result = 0;
  if (type <= 3)
  {
    if (type - 1 >= 2)
    {
      if (!type)
      {
        return 4;
      }

      if (type == 3)
      {
        if (_UISolariumEnabled())
        {
          return 5;
        }

        else
        {
          return 3;
        }
      }

      return result;
    }

    return 2;
  }

  if (type <= 6)
  {
    if (type == 4)
    {
      return 2;
    }

    if (type != 6)
    {
      return result;
    }

    return 5;
  }

  if (type == 7)
  {
    return 6;
  }

  if (type == 8)
  {
    return 5;
  }

  return result;
}

- (double)alertBackgroundCornerRadiusForType:(unint64_t)type
{
  result = 0.0;
  if (type == 1)
  {
    result = 10.0;
  }

  if (!type)
  {
    return 6.0;
  }

  return result;
}

- (CGSize)alertBackgroundSizeForType:(unint64_t)type
{
  v3 = *&AXUIAlertSizeMetricFitting;
  if (type > 3)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v35 = v34 * 0.5;

        v4 = fmin(v35, 100.0);
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 bounds];
        v19 = CGRectGetWidth(v42) * 0.5;
        v20 = 1.8;
      }

      else
      {
        v4 = *&AXUIAlertSizeMetricFitting;
        if (type != 8)
        {
          goto LABEL_19;
        }

        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 bounds];
        v18 = v17 * 0.5;

        v4 = fmin(v18, 100.0);
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 bounds];
        v19 = CGRectGetWidth(v41) * 0.25;
        v20 = 3.0;
      }

      v3 = v19 * v20;
      goto LABEL_18;
    }

    if (type != 4)
    {
      v4 = *&AXUIAlertSizeMetricFitting;
      if (type == 6)
      {
        mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen4 bounds];
        v7 = v6 * 0.5;

        v4 = fmin(v7, 130.0);
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 bounds];
        Width = CGRectGetWidth(v39);
        v3 = Width / 3.0 + Width / 3.0;
LABEL_18:

        goto LABEL_19;
      }

      goto LABEL_19;
    }

LABEL_13:
    v3 = *&AXUIAlertSizeMetricFillingContainer;
    v4 = 44.0;
    goto LABEL_19;
  }

  if (!type)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    v23 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76838]);

    if (v23 == NSOrderedDescending)
    {
      v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76998]];
      [v24 _scaledValueForValue:155.0];
      v26 = v25;

      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 bounds];
      v29 = v28;

      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 bounds];
      v32 = v31;

      v3 = fmin(v26, fmin(v29, v32));
    }

    else
    {
      v3 = 155.0;
    }

    v4 = v3;
    goto LABEL_19;
  }

  if (type == 2)
  {
    goto LABEL_13;
  }

  v4 = *&AXUIAlertSizeMetricFitting;
  if (type == 3)
  {
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76978]];
    [v10 _scaledValueForValue:100.0];
    v12 = v11;

    mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen7 bounds];
    v15 = v14 * 0.5;

    v4 = fmin(v15, v12);
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v3 = CGRectGetWidth(v40);
    goto LABEL_18;
  }

LABEL_19:
  v36 = v3;
  v37 = v4;
  result.height = v37;
  result.width = v36;
  return result;
}

- (BOOL)alertShouldGrowInAxis:(int64_t)axis forType:(unint64_t)type
{
  if (((1 << type) & 0x1D5) != 0)
  {
    v4 = axis == 1;
  }

  else
  {
    v4 = type == 1;
  }

  return type <= 8 && v4;
}

- (UIEdgeInsets)alertContentEdgeInsetsForType:(unint64_t)type
{
  v3 = 0.0;
  if (type <= 8)
  {
    v3 = dbl_23DBF3D60[type];
  }

  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)alertTextFontForType:(unint64_t)type
{
  v3 = 0;
  v4 = 0.0;
  if (type > 3)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        v5 = MEMORY[0x277D74310];
        v6 = MEMORY[0x277D769A0];
      }

      else
      {
        if (type != 8)
        {
          goto LABEL_18;
        }

        v5 = MEMORY[0x277D74310];
        v6 = MEMORY[0x277D76940];
      }

      goto LABEL_15;
    }

    if (type != 4)
    {
      if (type != 6)
      {
        goto LABEL_18;
      }

      v5 = MEMORY[0x277D74310];
      v6 = MEMORY[0x277D76A08];
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (type - 1 < 2)
  {
LABEL_10:
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v3 = v7;
    v8 = 14.0;
    goto LABEL_17;
  }

  if (type)
  {
    if (type != 3)
    {
      goto LABEL_18;
    }

    v5 = MEMORY[0x277D74310];
    v6 = MEMORY[0x277D76978];
LABEL_15:
    v9 = [v5 preferredFontDescriptorWithTextStyle:*v6 addingSymbolicTraits:0x8000 options:0];
    v10 = MEMORY[0x277D74300];
    [v9 pointSize];
    v3 = [v10 fontWithDescriptor:v9 size:?];
    [v9 pointSize];
    v4 = v11;

    goto LABEL_18;
  }

  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76998]];
  v3 = v7;
  v8 = 18.0;
LABEL_17:
  [v7 _scaledValueForValue:v8];
  v4 = v12;
LABEL_18:
  v13 = [v3 fontWithSize:v4];

  return v13;
}

- (id)alertTextColorForType:(unint64_t)type
{
  labelColor = 0;
  if (type <= 5)
  {
    if (!type)
    {
      goto LABEL_10;
    }

    if (type == 3 && _UISolariumEnabled())
    {
      labelColor = [MEMORY[0x277D75348] labelColor];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (type != 6 && type != 8)
  {
LABEL_9:
    labelColor = [MEMORY[0x277D75348] whiteColor];
  }

LABEL_10:

  return labelColor;
}

- (double)alertTextLineHeightOffsetForType:(unint64_t)type
{
  result = 0.0;
  if (((type - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    return -1.0;
  }

  return result;
}

- (id)alertSubtitleTextFontForType:(unint64_t)type
{
  v4 = [(AXUIAlertStyleProvider *)self alertTextFontForType:?];
  v5 = type - 3;
  if (type - 3 <= 5 && ((0x39u >> v5) & 1) != 0)
  {
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:**(&unk_278BF32F0 + v5) addingSymbolicTraits:0x8000 options:0];
    v7 = MEMORY[0x277D74300];
    [v6 pointSize];
    v8 = [v7 fontWithDescriptor:v6 size:?];

    v4 = v8;
  }

  return v4;
}

- (id)alertSubtitleTextColorForType:(unint64_t)type
{
  v4 = [(AXUIAlertStyleProvider *)self alertTextColorForType:?];
  if (type - 6 >= 3)
  {
    if (type != 3)
    {
      goto LABEL_8;
    }

    if (_UISolariumEnabled())
    {
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      secondaryLabelColor = [blackColor colorWithAlphaComponent:0.8];

      v4 = blackColor;
    }

    v4 = secondaryLabelColor;
  }

  secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];

  v4 = secondaryLabelColor2;
LABEL_8:

  return v4;
}

- (UIEdgeInsets)alertIconImageEdgeInsetsForType:(unint64_t)type
{
  v3 = 4.0;
  v4 = 4.0;
  v5 = 4.0;
  v6 = 9.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)alertEdgeInsetsForType:(unint64_t)type
{
  if (type == 4)
  {
    v3 = 9.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v4 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v3 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  result.right = v6;
  result.bottom = v3;
  result.left = v5;
  result.top = v4;
  return result;
}

- (int)alertPositionForType:(unint64_t)type
{
  if (type - 1 > 7)
  {
    return 0;
  }

  else
  {
    return dword_23DBF3DA8[type - 1];
  }
}

@end