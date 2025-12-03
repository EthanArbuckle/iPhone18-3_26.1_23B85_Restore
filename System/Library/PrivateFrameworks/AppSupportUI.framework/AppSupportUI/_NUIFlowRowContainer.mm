@interface _NUIFlowRowContainer
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (CGRect)layoutFrameForArrangedSubview:(id)subview withProposedContentFrame:(CGRect)frame;
- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (double)effectiveBaselineOffsetFromContentBottom;
- (double)effectiveFirstBaselineOffsetFromContentTop;
- (float)contentCompressionResistancePriorityForAxis:(int64_t)axis;
- (float)contentHuggingPriorityForAxis:(int64_t)axis;
- (void)dealloc;
- (void)initWithFlowArrangement:(uint64_t)arrangement cellRange:(uint64_t)range;
- (void)populateGridArrangementCells:(void *)cells;
- (void)populateGridArrangementDimension:(void *)dimension withCells:(const void *)cells axis:(int64_t)axis;
@end

@implementation _NUIFlowRowContainer

- (void)dealloc
{
  _NUIGridArrangement::resetForInvalidation(&self->_gridArrangement, -1);
  v3.receiver = self;
  v3.super_class = _NUIFlowRowContainer;
  [(_NUIFlowRowContainer *)&v3 dealloc];
}

- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  if (+[_NUIFlowArrangementDummyItem sharedDummyItem]== subview)
  {
    v8 = 1.0;
    v9 = 1.0;
  }

  else
  {
    [*self->_flowArrangement contentLayoutSizeFittingSize:subview forArrangedSubview:{width, height}];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)layoutFrameForArrangedSubview:(id)subview withProposedContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (+[_NUIFlowArrangementDummyItem sharedDummyItem]!= subview)
  {
    [*self->_flowArrangement layoutFrameForArrangedSubview:subview withProposedContentFrame:{x, y, width, height}];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)populateGridArrangementCells:(void *)cells
{
  location = self->_range.location;
  length = self->_range.length;
  if (location < length + location)
  {
    v7 = *(cells + 1);
    v8 = location << 6;
    v9 = self->_range.location;
    do
    {
      v10 = *(self->_flowArrangement + 7) + v8;
      v11 = *v10;
      v24 = *v10;
      v22 = v9 - location;
      v23 = 1;
      v21 = xmmword_21D0BFB40;
      v12 = *(v10 + 56);
      v20 = v12;
      v13 = *(v10 + 57);
      v19 = *(v10 + 57);
      if (v7 >= *(cells + 2))
      {
        v7 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<objc_object  {objcproto18NUIArrangementItem}*,_NSRange,objc_object  {objcproto18NUIArrangementItem}*,NUIContainerAlignment,_NSRange>(cells, &v24, &v22, &v21, &v20, &v19);
      }

      else
      {
        _NUIGridArrangementCell::_NUIGridArrangementCell(v7, v11, v9 - location, 1, 0, 1, v12, v13);
        v7 += 112;
        *(cells + 1) = v7;
      }

      *(cells + 1) = v7;
      ++v9;
      location = self->_range.location;
      length = self->_range.length;
      v8 += 64;
    }

    while (v9 < length + location);
  }

  if (*(&self->_gridArrangement + 8) == 1 && length < *(self->_flowArrangement + 2))
  {
    v14 = +[_NUIFlowArrangementDummyItem sharedDummyItem];
    v24 = v14;
    v15 = self->_range.length;
    v16 = *(self->_flowArrangement + 2) - v15;
    v22 = v15;
    v23 = v16;
    v21 = xmmword_21D0BFB40;
    v19 = 3;
    v20 = 3;
    v17 = *(cells + 1);
    if (v17 >= *(cells + 2))
    {
      v18 = std::vector<_NUIGridArrangementCell>::__emplace_back_slow_path<_NUIFlowArrangementDummyItem *,_NSRange,_NSRange,NUIContainerAlignment,NUIContainerAlignment>(cells, &v24, &v22, &v21, &v20, &v19);
    }

    else
    {
      _NUIGridArrangementCell::_NUIGridArrangementCell(*(cells + 1), v14, v15, v16, 0, 1, 3u, 3);
      v18 = v17 + 112;
      *(cells + 1) = v17 + 112;
    }

    *(cells + 1) = v18;
  }
}

- (void)populateGridArrangementDimension:(void *)dimension withCells:(const void *)cells axis:(int64_t)axis
{
  if (axis)
  {
    v17 = 0;
    std::vector<_NUIGridArrangementDimension>::emplace_back<int,double const&>(dimension, &v17, &NUIContainerViewLengthUseDefault);
  }

  else
  {
    v18 = 0;
    v7 = *cells;
    v8 = *(cells + 1);
    while (v7 != v8)
    {
      if (*(v7 + 64))
      {
        v9 = 0;
        do
        {
          std::vector<_NUIGridArrangementDimension>::emplace_back<unsigned long &,double const&>(dimension, &v18, self->_flowArrangement + 6);
          ++v18;
          ++v9;
        }

        while (v9 < *(v7 + 64));
      }

      v7 += 112;
    }

    v11 = *dimension;
    v10 = *(dimension + 1);
    if (*dimension != v10)
    {
      v12 = 0;
      v13 = *(self->_flowArrangement + 4);
      v14 = (v10 - v11 - 56) / 0x38uLL;
      v15 = vdupq_n_s64(v14);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_21D0BFB40)));
        if (v16.i8[0])
        {
          *v11 = v13;
        }

        if (v16.i8[4])
        {
          v11[7] = v13;
        }

        v12 += 2;
        v11 += 14;
      }

      while (((v14 + 2) & 0xFFFFFFFFFFFFFFELL) != v12);
    }

    *(v10 - 56) = 0;
  }
}

- (float)contentCompressionResistancePriorityForAxis:(int64_t)axis
{
  location = self->_range.location;
  v4 = 0.0;
  if (location < self->_range.length + location)
  {
    v7 = location << 6;
    v8 = 0.0;
    do
    {
      [*(*(self->_flowArrangement + 7) + v7) contentCompressionResistancePriorityForAxis:{axis, v4}];
      v4 = v9;
      if (v8 <= v4)
      {
        [*(*(self->_flowArrangement + 7) + v7) contentCompressionResistancePriorityForAxis:axis];
        v8 = *&v4;
      }

      ++location;
      v7 += 64;
    }

    while (location < self->_range.length + self->_range.location);
    *&v4 = v8;
  }

  return *&v4;
}

- (float)contentHuggingPriorityForAxis:(int64_t)axis
{
  location = self->_range.location;
  v4 = 0.0;
  if (location < self->_range.length + location)
  {
    v7 = location << 6;
    v8 = 0.0;
    do
    {
      [*(*(self->_flowArrangement + 7) + v7) contentHuggingPriorityForAxis:{axis, v4}];
      v4 = v9;
      if (v8 <= v4)
      {
        [*(*(self->_flowArrangement + 7) + v7) contentHuggingPriorityForAxis:axis];
        v8 = *&v4;
      }

      ++location;
      v7 += 64;
    }

    while (location < self->_range.length + self->_range.location);
    *&v4 = v8;
  }

  return *&v4;
}

- (double)effectiveBaselineOffsetFromContentBottom
{
  location = self->_range.location;
  v3 = 0.0;
  if (location < self->_range.length + location)
  {
    v5 = location << 6;
    do
    {
      [*(*(self->_flowArrangement + 7) + v5) effectiveBaselineOffsetFromContentBottom];
      if (v3 <= v6)
      {
        [*(*(self->_flowArrangement + 7) + v5) effectiveBaselineOffsetFromContentBottom];
        v3 = v7;
      }

      ++location;
      v5 += 64;
    }

    while (location < self->_range.length + self->_range.location);
  }

  return v3;
}

- (double)effectiveFirstBaselineOffsetFromContentTop
{
  location = self->_range.location;
  v3 = 0.0;
  if (location < self->_range.length + location)
  {
    v5 = location << 6;
    do
    {
      [*(*(self->_flowArrangement + 7) + v5) effectiveFirstBaselineOffsetFromContentTop];
      if (v3 <= v6)
      {
        [*(*(self->_flowArrangement + 7) + v5) effectiveFirstBaselineOffsetFromContentTop];
        v3 = v7;
      }

      ++location;
      v5 += 64;
    }

    while (location < self->_range.length + self->_range.location);
  }

  return v3;
}

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  location = self->_range.location;
  if (location >= self->_range.length + location)
  {
    LOBYTE(isLayoutSizeDependentOnPerpendicularAxis) = 0;
  }

  else
  {
    v4 = location << 6;
    do
    {
      isLayoutSizeDependentOnPerpendicularAxis = [*(*(self->_flowArrangement + 7) + v4) isLayoutSizeDependentOnPerpendicularAxis];
      if (isLayoutSizeDependentOnPerpendicularAxis)
      {
        break;
      }

      ++location;
      v4 += 64;
    }

    while (location < self->_range.length + self->_range.location);
  }

  return isLayoutSizeDependentOnPerpendicularAxis;
}

- (void)initWithFlowArrangement:(uint64_t)arrangement cellRange:(uint64_t)range
{
  if (result)
  {
    result = [result init];
    if (result)
    {
      result[16] = range;
      result[17] = a2;
      result[15] = arrangement;
      result[1] = result;
    }
  }

  return result;
}

@end