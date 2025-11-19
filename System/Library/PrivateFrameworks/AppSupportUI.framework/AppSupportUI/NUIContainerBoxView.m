@interface NUIContainerBoxView
+ (id)containerBoxViewWithArrangedSubviews:(id)a3;
- (BOOL)needsBaselineDebugBoundingBoxesForArrangedSubview:(id)a3;
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)a3;
- (NUIContainerBoxView)initWithArrangedSubviews:(id)a3;
- (NUIContainerBoxView)initWithFrame:(CGRect)a3;
- (_WORD)_effectiveAlignmentForArrangedSubview:(uint64_t)a3 inAxis:;
- (double)_calculateArrangedSizeFittingSize:(CGFloat)a3 forLayout:;
- (id)arrangedDebugDescription;
- (id)calculateViewForFirstBaselineLayout;
- (id)calculateViewForLastBaselineLayout;
- (id)debugDictionary;
- (void)dealloc;
- (void)layoutArrangedSubviewsInBounds:(CGRect)a3;
- (void)populateBoxArrangementCells:(void *)a3;
- (void)setHorizontalAlignment:(int64_t)a3;
- (void)setVerticalAlignment:(int64_t)a3;
@end

@implementation NUIContainerBoxView

- (void)dealloc
{
  _NUIBoxArrangement::resetForInvalidation(&self->_arrangement, -1);
  v3.receiver = self;
  v3.super_class = NUIContainerBoxView;
  [(NUIContainerView *)&v3 dealloc];
}

- (id)calculateViewForLastBaselineLayout
{
  v2 = self;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSArray *)[(NUIContainerView *)self visibleArrangedSubviews] reverseObjectEnumerator];
  v4 = [(NSEnumerator *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [(UIView *)v9 effectiveBaselineOffsetFromBottom];
        if (v10 > v7)
        {
          v2 = v9;
          v7 = v10;
        }
      }

      v5 = [(NSEnumerator *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)calculateViewForFirstBaselineLayout
{
  v2 = self;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NUIContainerView *)self visibleArrangedSubviews];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [(UIView *)v9 effectiveFirstBaselineOffsetFromTop];
        if (v10 > v7)
        {
          v2 = v9;
          v7 = v10;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

+ (id)containerBoxViewWithArrangedSubviews:(id)a3
{
  v3 = [[a1 alloc] initWithArrangedSubviews:a3];

  return v3;
}

- (BOOL)needsBaselineDebugBoundingBoxesForArrangedSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = NUIContainerBoxView;
  if ([(NUIContainerView *)&v6 needsBaselineDebugBoundingBoxesForArrangedSubview:?])
  {
    return 1;
  }

  [(NUIContainerBoxView *)self needsBaselineDebugBoundingBoxesForArrangedSubview:a3, &v7];
  return v7;
}

- (NUIContainerBoxView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NUIContainerBoxView;
  result = [(NUIContainerView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_arrangement.container = result;
  }

  return result;
}

- (NUIContainerBoxView)initWithArrangedSubviews:(id)a3
{
  v4.receiver = self;
  v4.super_class = NUIContainerBoxView;
  result = [(NUIContainerView *)&v4 initWithArrangedSubviews:a3];
  if (result)
  {
    result->_arrangement.container = result;
  }

  return result;
}

- (void)setHorizontalAlignment:(int64_t)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  boxFlags = self->_boxFlags;
  if (v5 != boxFlags)
  {
    *&self->_boxFlags = boxFlags & 0xFF00 | v5;

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)setVerticalAlignment:(int64_t)a3
{
  [NUIContainerView _assertNotInLayoutPass:?];
  if (a3 == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  if (v5 != *&self->_boxFlags >> 8)
  {
    *&self->_boxFlags = *&self->_boxFlags | (v5 << 8);

    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)populateBoxArrangementCells:(void *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(NUIContainerView *)self visibleArrangedSubviews];
  *(a3 + 1) = *a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v27 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        if (self)
        {
          v9 = [(NUIContainerView *)self alignmentForView:*(*(&v28 + 1) + 8 * v7) inAxis:0];
          boxFlags = v9;
          if (v9 == -1)
          {
            boxFlags = self->_boxFlags;
          }

          v11 = [(NUIContainerView *)self alignmentForView:v8 inAxis:1];
          v12 = v11;
          if (v11 == -1)
          {
            v12 = *(&self->_boxFlags + 1);
          }
        }

        else
        {
          boxFlags = 0;
          v12 = 0;
        }

        v14 = *(a3 + 1);
        v13 = *(a3 + 2);
        if (v14 >= v13)
        {
          v17 = (v14 - *a3) >> 6;
          if ((v17 + 1) >> 58)
          {
            std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
          }

          v18 = v13 - *a3;
          v19 = v18 >> 5;
          if (v18 >> 5 <= (v17 + 1))
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFC0)
          {
            v20 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowArrangementCell>>(a3, v20);
          }

          _NUIFlowArrangementCell::_NUIFlowArrangementCell(v17 << 6, v8, boxFlags, v12);
          v16 = v21 + 64;
          v22 = *(a3 + 1) - *a3;
          v23 = v21 - v22;
          memcpy((v21 - v22), *a3, v22);
          v24 = *a3;
          *a3 = v23;
          *(a3 + 1) = v16;
          *(a3 + 2) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *&v15 = _NUIFlowArrangementCell::_NUIFlowArrangementCell(*(a3 + 1), v8, boxFlags, v12).n128_u64[0];
          v16 = v14 + 64;
          *(a3 + 1) = v14 + 64;
        }

        *(a3 + 1) = v16;
        ++v7;
      }

      while (v6 != v7);
      v25 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v32 count:16, v15];
      v6 = v25;
    }

    while (v25);
  }
}

- (id)arrangedDebugDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NUIContainerBoxView;
  v15 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ alignments = ", -[NUIContainerView arrangedDebugDescription](&v20, sel_arrangedDebugDescription)];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NUIContainerView *)self visibleArrangedSubviews];
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        if (self)
        {
          boxFlags = [(NUIContainerView *)self alignmentForView:*(*(&v16 + 1) + 8 * v6) inAxis:0];
          if (boxFlags == -1)
          {
            boxFlags = self->_boxFlags;
          }
        }

        else
        {
          boxFlags = 0;
        }

        if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
        {
          [NUIContainerBoxView arrangedDebugDescription];
        }

        v9 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", boxFlags)}];
        if (!v9)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", boxFlags];
        }

        if (self)
        {
          v10 = [(NUIContainerView *)self alignmentForView:v7 inAxis:1];
          if (v10 == -1)
          {
            v10 = *(&self->_boxFlags + 1);
          }
        }

        else
        {
          v10 = 0;
        }

        if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
        {
          dispatch_once(&NUIStringFromAlignment(NUIContainerAlignment)::onceToken, &__block_literal_global_124);
        }

        v11 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v10)}];
        if (!v11)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v10];
        }

        [v15 appendFormat:@"[%@|%@]", v9, v11];
        ++v6;
      }

      while (v4 != v6);
      v12 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v21 count:16];
      v4 = v12;
    }

    while (v12);
  }

  return [v15 stringByAppendingString:@";"];
}

- (id)debugDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = NUIContainerBoxView;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[NUIContainerView debugDictionary](&v9, sel_debugDictionary)}];
  v10[0] = @"horizontal";
  boxFlags = self->_boxFlags;
  if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
  {
    [NUIContainerBoxView arrangedDebugDescription];
  }

  v5 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", boxFlags)}];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", boxFlags];
  }

  v10[1] = @"vertical";
  v11[0] = v5;
  v6 = *(&self->_boxFlags + 1);
  if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
  {
    [NUIContainerBoxView arrangedDebugDescription];
  }

  v7 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v6)}];
  if (!v7)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v6];
  }

  v11[1] = v7;
  [v3 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v11, v10, 2), @"alignmnets"}];
  [v3 setObject:_NUIBoxArrangement::debugDictionary(&self->_arrangement) forKeyedSubscript:@"arrangement"];
  return [v3 copy];
}

- (_WORD)_effectiveAlignmentForArrangedSubview:(uint64_t)a3 inAxis:
{
  if (result)
  {
    v4 = result;
    result = [result alignmentForView:a2 inAxis:a3];
    if (result == -1)
    {
      v5 = v4[328];
      if (a3)
      {
        return (v5 >> 8);
      }

      else
      {
        return v5;
      }
    }
  }

  return result;
}

- (double)_calculateArrangedSizeFittingSize:(CGFloat)a3 forLayout:
{
  if (!a1)
  {
    return 0.0;
  }

  do
  {
    _NUIBoxArrangement::resetForInvalidation((a1 + 544), 0);
    v8.width = a2;
    v8.height = a3;
    v6 = _NUIBoxArrangement::measureCells((a1 + 544), v8);
  }

  while (([a1 mustRestartMeasurement] & 1) != 0);
  return v6;
}

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)a3
{
  v3 = [(NUIContainerBoxView *)self _calculateArrangedSizeFittingSize:a3.height forLayout:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NUIContainerBoxView *)self _calculateArrangedSizeFittingSize:a3.size.height forLayout:?];

  _NUIBoxArrangement::positionCells(&self->_arrangement, &__block_literal_global_5, x, y, width, height);
}

- (uint64_t)needsBaselineDebugBoundingBoxesForArrangedSubview:(BOOL *)a3 .cold.1(uint64_t result, uint64_t a2, BOOL *a3)
{
  if (result)
  {
    v4 = result;
    result = [result alignmentForView:a2 inAxis:1];
    if (result == -1)
    {
      result = *(v4 + 657);
    }
  }

  v6 = result == 2 || result == 5;
  *a3 = v6;
  return result;
}

@end