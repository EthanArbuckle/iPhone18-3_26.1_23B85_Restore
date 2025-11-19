@interface UIView(NUISubclassHelpers)
- (_NUIViewContainerViewInfo)effectiveAlignmentRectInsets;
- (_NUIViewContainerViewInfo)setCurrentEffectiveLayoutSizeFittingSizeShouldNotBeCached;
- (double)_didInvalidateIntrinsicContentSize;
- (uint64_t)effectiveBaselineOffsetFromContentBottom;
- (uint64_t)effectiveFirstBaselineOffsetFromContentTop;
- (uint64_t)systemSpacingToAdjecentSiblingView:()NUISubclassHelpers axis:baselineRelative:multiplier:;
- (uint64_t)systemSpacingToSuperView:()NUISubclassHelpers edge:baselineRelative:multiplier:;
@end

@implementation UIView(NUISubclassHelpers)

- (double)_didInvalidateIntrinsicContentSize
{
  IfNeeded = _NUIContainerViewInfoCreateIfNeeded(a1, 0);

  return [(_NUIViewContainerViewInfo *)IfNeeded resetCaches];
}

- (_NUIViewContainerViewInfo)effectiveAlignmentRectInsets
{
  v11 = *MEMORY[0x277D85DE8];
  result = _NUIContainerViewInfoCreateIfNeeded(a1, 1);
  v2 = result;
  if ((*&result->_flags & 8) == 0)
  {
    v3 = 0;
    v4 = 0;
    v9[0] = xmmword_21D0BFB10;
    v9[1] = unk_21D0BFB20;
    p_alignmentInsets = &result->_alignmentInsets;
    v8[0] = xmmword_21D0BFB10;
    v8[1] = unk_21D0BFB20;
    do
    {
      result = NUIContainerViewLengthIsDefault(*(&p_alignmentInsets->top + v3));
      if (result)
      {
        v6 = v9 + 8 * v4;
      }

      else
      {
        result = NUIContainerViewLengthIsSystem(0, *(&p_alignmentInsets->top + v3));
        if (result)
        {
          v6 = v8 + v3;
        }

        else
        {
          v6 = (&p_alignmentInsets->top + v4);
        }
      }

      *(v10 + v3) = *v6;
      ++v4;
      v3 += 8;
    }

    while (v3 != 32);
    v7 = v10[1];
    *&v2->_cachedAlignmentInsets.top = v10[0];
    *&v2->_cachedAlignmentInsets.bottom = v7;
    *&v2->_flags |= 8u;
  }

  return result;
}

- (_NUIViewContainerViewInfo)setCurrentEffectiveLayoutSizeFittingSizeShouldNotBeCached
{
  result = _NUIContainerViewInfoCreateIfNeeded(a1, 0);
  if ((*&result->_flags & 2) != 0)
  {
    *&result->_flags &= ~2u;
    v3 = [(objc_object *)a1 superview];

    return [v3 setCurrentEffectiveLayoutSizeFittingSizeShouldNotBeCached];
  }

  return result;
}

- (uint64_t)effectiveFirstBaselineOffsetFromContentTop
{
  result = [a1 effectiveFirstBaselineOffsetFromTop];
  v4 = v3;
  v5 = -v3;
  if (v4 >= 0.0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6 > 2.22507386e-308)
  {
    return [a1 effectiveAlignmentRectInsets];
  }

  return result;
}

- (uint64_t)effectiveBaselineOffsetFromContentBottom
{
  result = [a1 effectiveBaselineOffsetFromBottom];
  v4 = v3;
  v5 = -v3;
  if (v4 >= 0.0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6 > 2.22507386e-308)
  {
    return [a1 effectiveAlignmentRectInsets];
  }

  return result;
}

- (uint64_t)systemSpacingToAdjecentSiblingView:()NUISubclassHelpers axis:baselineRelative:multiplier:
{
  if (a4)
  {
    if (a5)
    {
      v6 = 6;
      v7 = 11;
      v8 = a3;
      v9 = 5;
      v10 = 12;
    }

    else
    {
      v6 = 4;
      v7 = 4;
      v8 = a3;
      v9 = 3;
      v10 = 3;
    }
  }

  else
  {
    v6 = 2;
    v7 = 6;
    v8 = a3;
    v9 = 1;
    v10 = 5;
  }

  return [a1 _autolayoutSpacingAtEdge:v6 forAttribute:v7 nextToNeighbor:v8 edge:v9 attribute:v10 multiplier:?];
}

- (uint64_t)systemSpacingToSuperView:()NUISubclassHelpers edge:baselineRelative:multiplier:
{
  if (a4 > 3)
  {
    if (a4 != 4)
    {
      if (a4 == 8)
      {
        v8 = 2;
        v7 = 2;
        goto LABEL_20;
      }

      return [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid edge %lu", a4}];
    }

    v10 = a5 == 0;
    v11 = 4;
    if (a5)
    {
      v7 = 6;
    }

    else
    {
      v7 = 4;
    }

    v12 = 11;
LABEL_17:
    if (v10)
    {
      v8 = v11;
    }

    else
    {
      v8 = v12;
    }

    goto LABEL_20;
  }

  if (a4 == 1)
  {
    v10 = a5 == 0;
    v11 = 3;
    if (a5)
    {
      v7 = 5;
    }

    else
    {
      v7 = 3;
    }

    v12 = 12;
    goto LABEL_17;
  }

  if (a4 != 2)
  {
    return [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid edge %lu", a4}];
  }

  v7 = 1;
  v8 = 1;
LABEL_20:
  [a1 _autolayoutSpacingAtEdge:v7 forAttribute:v8 inContainer:a3 isGuide:0];
  return [a1 effectiveScreenScale];
}

@end