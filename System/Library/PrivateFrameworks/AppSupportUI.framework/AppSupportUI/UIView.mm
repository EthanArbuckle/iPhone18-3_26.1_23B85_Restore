@interface UIView
- (double)_nui_compactAlignmentInsets;
- (double)effectiveMaximumLayoutContentSize;
- (double)effectiveMinimumLayoutContentSize;
- (nui_size_cache)contentLayoutSizeCache;
- (objc_object)containerViewInfoCreateIfNeeded:(objc_object *)a1;
@end

@implementation UIView

- (double)_nui_compactAlignmentInsets
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 alignmentRectInsets];
  v3 = v2;
  [a1 effectiveBaselineOffsetFromBottom];
  if ([a1 _hasFontInfoForVerticalBaselineSpacing])
  {
    v4 = [a1 _fontInfoForBaselineSpacing];
    if (v4)
    {
      v5 = v4;
      [a1 effectiveFirstBaselineOffsetFromTop];
      if (v6 != 0.0)
      {
        v7 = v6;
        [v5 capHeight];
        v9 = v8;
        [a1 _currentScreenScale];
        v11 = v10 == 1.0;
        v12 = round(v9 * v10) / v10;
        v13 = round(v9);
        if (v11)
        {
          v12 = v13;
        }

        return v7 - v12;
      }
    }
  }

  return v3;
}

- (objc_object)containerViewInfoCreateIfNeeded:(objc_object *)a1
{
  if (a1)
  {
    return _NUIContainerViewInfoCreateIfNeeded(a1, a2);
  }

  return a1;
}

- (nui_size_cache)contentLayoutSizeCache
{
  if (result)
  {
    return &_NUIContainerViewInfoCreateIfNeeded(result, 1)->_sizeCache;
  }

  return result;
}

- (double)effectiveMinimumLayoutContentSize
{
  if (!a1)
  {
    return 0.0;
  }

  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 0);
  [(objc_object *)a1 effectiveAlignmentRectInsets];
  v4 = v3;
  v6 = v5;
  width = IfNeeded->_minSize.width;
  height = IfNeeded->_minSize.height;
  if (NUIContainerViewLengthIsDefault(width))
  {
    width = 0.0;
  }

  NUIContainerViewLengthIsDefault(height);
  return OUTLINED_FUNCTION_0(MEMORY[0x277CBF3A8], width - (v4 + v6));
}

- (double)effectiveMaximumLayoutContentSize
{
  if (!a1)
  {
    return 0.0;
  }

  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 0);
  [(objc_object *)a1 effectiveAlignmentRectInsets];
  return OUTLINED_FUNCTION_0(MEMORY[0x277CBF3A8], IfNeeded->_maxSize.width - (v3 + v4));
}

@end