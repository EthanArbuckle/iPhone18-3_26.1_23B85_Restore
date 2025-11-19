@interface UIView(NUIContainerView)
- (CGFloat)effectiveLayoutSizeFittingSize:()NUIContainerView;
- (_NUIViewContainerViewInfo)setCustomAlignmentRectInsets:()NUIContainerView;
- (_NUIViewContainerViewInfo)setCustomBaselineOffsetFromBottom:()NUIContainerView;
- (_NUIViewContainerViewInfo)setCustomFirstBaselineOffsetFromTop:()NUIContainerView;
- (_NUIViewContainerViewInfo)setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:()NUIContainerView;
- (_NUIViewContainerViewInfo)setMaximumLayoutSize:()NUIContainerView;
- (_NUIViewContainerViewInfo)setMinimumLayoutSize:()NUIContainerView;
- (_NUIViewContainerViewInfo)setNeverCacheEffectiveLayoutSize:()NUIContainerView;
- (double)customBaselineOffsetFromBottom;
- (double)customFirstBaselineOffsetFromTop;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (uint64_t)setLayoutSize:()NUIContainerView withHorizontalContentPriority:verticalContentPriority:;
- (uint64_t)setUntransformedFrame:()NUIContainerView;
@end

@implementation UIView(NUIContainerView)

- (double)effectiveBaselineOffsetFromBottom
{
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  baseLineFromBottom = IfNeeded->_baselines.baseLineFromBottom;
  if (!NUIContainerViewLengthIsDefault(baseLineFromBottom))
  {
    return baseLineFromBottom;
  }

  v4 = [(objc_object *)a1 _nui_baselineViewType];
  if (v4 != 1)
  {
    v7 = v4;
    [(objc_object *)a1 _currentScreenScale];
    v9 = v8;
    if (!v7)
    {
      [(objc_object *)a1 effectiveLayoutSizeFittingSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
      [(objc_object *)a1 _baselineOffsetsAtSize:?];
      v11 = v10;
      v13 = v12;
      [(objc_object *)a1 alignmentRectInsets];
      v15 = v11 + v14;
      v17 = v13 + v16;
LABEL_15:
      v23 = ceil(v9 * (v17 - (round(v9 * v15) / v9 - v15))) / v9;
      v24 = ceil(v17 - (round(v15) - v15));
      if (v9 == 1.0)
      {
        baseLineFromBottom = v24;
      }

      else
      {
        baseLineFromBottom = v23;
      }

      IfNeeded->_baselines.baseLineFromBottom = baseLineFromBottom;
      return baseLineFromBottom;
    }

LABEL_11:
    v15 = 0.0;
    if ([(objc_object *)a1 _hasFontInfoForVerticalBaselineSpacing]&& (v19 = [(objc_object *)a1 _fontInfoForBaselineSpacing]) != 0)
    {
      v20 = v19;
      [v19 ascender];
      v15 = v21;
      [v20 descender];
      v17 = -v22;
    }

    else
    {
      v17 = 0.0;
    }

    goto LABEL_15;
  }

  v5 = [(objc_object *)a1 viewForLastBaselineLayout];
  if (!v5 || v5 == a1)
  {
    [(objc_object *)a1 _currentScreenScale];
    v9 = v18;
    goto LABEL_11;
  }

  [(objc_object *)v5 effectiveBaselineOffsetFromBottom];
  return result;
}

- (double)effectiveFirstBaselineOffsetFromTop
{
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  baseLineFromTop = IfNeeded->_baselines.baseLineFromTop;
  if (!NUIContainerViewLengthIsDefault(baseLineFromTop))
  {
    return baseLineFromTop;
  }

  v4 = [(objc_object *)a1 _nui_baselineViewType];
  if (v4 != 1)
  {
    v7 = v4;
    [(objc_object *)a1 _currentScreenScale];
    v9 = v8;
    if (!v7)
    {
      [(objc_object *)a1 effectiveLayoutSizeFittingSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
      [(objc_object *)a1 _baselineOffsetsAtSize:?];
      v11 = v10;
      [(objc_object *)a1 alignmentRectInsets];
      v13 = v11 + v12;
LABEL_14:
      v18 = round(v9 * v13) / v9;
      v19 = round(v13);
      if (v9 == 1.0)
      {
        baseLineFromTop = v19;
      }

      else
      {
        baseLineFromTop = v18;
      }

      IfNeeded->_baselines.baseLineFromTop = baseLineFromTop;
      return baseLineFromTop;
    }

LABEL_11:
    v13 = 0.0;
    if ([(objc_object *)a1 _hasFontInfoForVerticalBaselineSpacing])
    {
      v15 = [(objc_object *)a1 _fontInfoForBaselineSpacing];
      if (v15)
      {
        v16 = v15;
        [v15 ascender];
        v13 = v17;
        [v16 descender];
      }
    }

    goto LABEL_14;
  }

  v5 = [(objc_object *)a1 viewForFirstBaselineLayout];
  if (!v5 || v5 == a1)
  {
    [(objc_object *)a1 _currentScreenScale];
    v9 = v14;
    goto LABEL_11;
  }

  [(objc_object *)v5 effectiveFirstBaselineOffsetFromTop];
  return result;
}

- (CGFloat)effectiveLayoutSizeFittingSize:()NUIContainerView
{
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  flags = IfNeeded->_flags;
  v25 = *MEMORY[0x277CBF3A8];
  v8 = flags;
  if ((flags & 1) == 0)
  {
    v9 = [(objc_object *)a1 isLayoutSizeDependentOnPerpendicularAxis];
    v26.width = a2;
    v26.height = a3;
    if (nui_size_cache::find_size(&IfNeeded->_sizeCache, v26, v9, &v25))
    {
      return v25.width;
    }

    v8 = IfNeeded->_flags;
  }

  width = IfNeeded->_maxSize.width;
  height = IfNeeded->_maxSize.height;
  v13 = IfNeeded->_minSize.width;
  v12 = IfNeeded->_minSize.height;
  v14 = 1.79769313e308;
  if (a2 == 0.0)
  {
    v15 = 1.79769313e308;
  }

  else
  {
    v15 = a2;
  }

  if (width >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = IfNeeded->_maxSize.width;
  }

  if (a3 != 0.0)
  {
    v14 = a3;
  }

  if (height >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = IfNeeded->_maxSize.height;
  }

  *&IfNeeded->_flags = v8 | 2;
  if (v13 != width || v12 != height)
  {
    [(objc_object *)a1 calculateLayoutSizeFittingSize:v16, v17];
    if (v19 > v13)
    {
      v13 = v19;
    }

    if (v20 > v12)
    {
      v12 = v20;
    }
  }

  if (v16 >= v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = v16;
  }

  if (v17 >= v12)
  {
    v22 = v12;
  }

  else
  {
    v22 = v17;
  }

  v25.width = v21;
  v25.height = v22;
  v23 = IfNeeded->_flags;
  if ((flags & 1) == 0 && (*&IfNeeded->_flags & 2) != 0)
  {
    v27.width = a2;
    v27.height = a3;
    nui_size_cache::insert_size(&IfNeeded->_sizeCache, v27, *&v21);
    v23 = IfNeeded->_flags;
  }

  *&IfNeeded->_flags = v23 & 0xFD;
  return v25.width;
}

- (_NUIViewContainerViewInfo)setNeverCacheEffectiveLayoutSize:()NUIContainerView
{
  result = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  *&result->_flags = *&result->_flags & 0xFE | a3;
  return result;
}

- (_NUIViewContainerViewInfo)setMinimumLayoutSize:()NUIContainerView
{
  v4 = a2;
  if (NUIContainerViewLengthIsDefault(a2))
  {
    v4 = 0.0;
  }

  if (NUIContainerViewLengthIsDefault(a3))
  {
    a3 = 0.0;
  }

  result = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  if (result->_minSize.width != v4 || result->_minSize.height != a3)
  {
    result->_minSize.width = v4;
    result->_minSize.height = a3;

    return [(objc_object *)a1 invalidateIntrinsicContentSize];
  }

  return result;
}

- (_NUIViewContainerViewInfo)setMaximumLayoutSize:()NUIContainerView
{
  v4 = a2;
  if (NUIContainerViewLengthIsDefault(a2))
  {
    v4 = 10000.0;
  }

  if (NUIContainerViewLengthIsDefault(a3))
  {
    a3 = 10000.0;
  }

  result = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  if (result->_maxSize.width != v4 || result->_maxSize.height != a3)
  {
    result->_maxSize.width = v4;
    result->_maxSize.height = a3;

    return [(objc_object *)a1 invalidateIntrinsicContentSize];
  }

  return result;
}

- (uint64_t)setLayoutSize:()NUIContainerView withHorizontalContentPriority:verticalContentPriority:
{
  [a1 setMinimumLayoutSize:?];
  result = [a1 setMaximumLayoutSize:{a2, a3}];
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = v13;
    if (a4 > -1.0)
    {
      *&v11 = a4;
      [a1 setContentHuggingPriority:v12 forAxis:v11];
      *&v15 = a4;
      result = [a1 setContentCompressionResistancePriority:v12 forAxis:v15];
    }

    v13 = 0;
    a4 = a5;
    v12 = 1;
  }

  while ((v14 & 1) != 0);
  return result;
}

- (_NUIViewContainerViewInfo)setCustomAlignmentRectInsets:()NUIContainerView
{
  result = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  v7.f64[0] = a2;
  v7.f64[1] = a3;
  v8.f64[0] = a4;
  v8.f64[1] = a5;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&result->_alignmentInsets.top, v7), vceqq_f64(*&result->_alignmentInsets.bottom, v8)))) & 1) == 0)
  {
    result->_alignmentInsets.top = a2;
    result->_alignmentInsets.left = a3;
    result->_alignmentInsets.bottom = a4;
    result->_alignmentInsets.right = a5;
    *&result->_flags &= ~8u;

    return [(objc_object *)a1 invalidateIntrinsicContentSize];
  }

  return result;
}

- (_NUIViewContainerViewInfo)setCustomBaselineOffsetFromBottom:()NUIContainerView
{
  result = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  flags = result->_flags;
  if (result->_baselines.baseLineFromBottom != a2 || (flags & 0x10) == 0)
  {
    result->_baselines.baseLineFromBottom = a2;
    *&result->_flags = flags | 0x20;

    return [(objc_object *)a1 invalidateIntrinsicContentSize];
  }

  return result;
}

- (double)customBaselineOffsetFromBottom
{
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 0);
  if ((*&IfNeeded->_flags & 0x20) != 0)
  {
    p_baseLineFromBottom = &IfNeeded->_baselines.baseLineFromBottom;
  }

  else
  {
    p_baseLineFromBottom = &NUIContainerViewLengthUseDefault;
  }

  return *p_baseLineFromBottom;
}

- (_NUIViewContainerViewInfo)setCustomFirstBaselineOffsetFromTop:()NUIContainerView
{
  result = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  flags = result->_flags;
  if (result->_baselines.baseLineFromTop != a2 || (flags & 0x10) == 0)
  {
    result->_baselines.baseLineFromTop = a2;
    *&result->_flags = flags | 0x10;

    return [(objc_object *)a1 invalidateIntrinsicContentSize];
  }

  return result;
}

- (double)customFirstBaselineOffsetFromTop
{
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 0);
  if ((*&IfNeeded->_flags & 0x10) != 0)
  {
    p_baselines = &IfNeeded->_baselines;
  }

  else
  {
    p_baselines = &NUIContainerViewLengthUseDefault;
  }

  return *p_baselines;
}

- (_NUIViewContainerViewInfo)setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:()NUIContainerView
{
  result = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  if (a3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *&result->_flags = *&result->_flags & 0xFB | v5;
  return result;
}

- (uint64_t)setUntransformedFrame:()NUIContainerView
{
  v10 = [a1 layer];
  v11 = v10;
  memset(&v20[1], 0, sizeof(CATransform3D));
  if (v10)
  {
    [v10 transform];
  }

  v20[0] = v20[1];
  if (CATransform3DIsIdentity(v20))
  {
    return [a1 setFrame:{a2, a3, a4, a5}];
  }

  [v11 anchorPoint];
  v14 = v13;
  v16 = v15;
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  v18 = MinX + CGRectGetWidth(v22) * v14;
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  [a1 setCenter:{v18, MinY + CGRectGetHeight(v24) * v16}];
  [a1 bounds];
  return [a1 setBounds:?];
}

@end