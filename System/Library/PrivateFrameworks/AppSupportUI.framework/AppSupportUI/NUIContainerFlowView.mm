@interface NUIContainerFlowView
+ (id)containerFlowViewWithArrangedSubviews:(id)subviews;
+ (id)containerFlowViewWithNumberOfColumns:(int64_t)columns arrangedSubviews:(id)subviews;
- (BOOL)isLayoutSizeDependentOnPerpendicularAxis;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size;
- (CGSize)fittingSizeForCell:(const _NUIFlowArrangementCell *)cell withProposedSize:(CGSize)size;
- (NUIContainerFlowView)initWithArrangedSubviews:(id)subviews;
- (NUIContainerFlowView)initWithFrame:(CGRect)frame;
- (_WORD)_effectiveAlignmentForArrangedSubview:(uint64_t)subview inAxis:;
- (double)_calculateArrangedSizeFittingSize:(CGFloat)size forLayout:(CGFloat)layout;
- (id)arrangedDebugDescription;
- (id)calculateViewForFirstBaselineLayout;
- (id)calculateViewForLastBaselineLayout;
- (id)debugDictionary;
- (int64_t)alignmentForCell:(const _NUIFlowArrangementCell *)cell inAxis:(int64_t)axis;
- (int64_t)distributionForRowAtIndex:(int64_t)index ofTotalRowCount:(int64_t)count withCells:(const void *)cells;
- (void)dealloc;
- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds;
- (void)populateFlowArrangementCells:(void *)cells;
- (void)setHorizontalAlignment:(int64_t)alignment;
- (void)setHorizontalDistribution:(int64_t)distribution;
- (void)setItemSpacing:(double)spacing;
- (void)setItemWidth:(double)width;
- (void)setNumberOfColumns:(int64_t)columns;
- (void)setRowHeight:(double)height;
- (void)setRowSpacing:(double)spacing;
- (void)setVerticalAlignment:(int64_t)alignment;
- (void)setVerticalDistribution:(int64_t)distribution;
@end

@implementation NUIContainerFlowView

+ (id)containerFlowViewWithArrangedSubviews:(id)subviews
{
  v3 = [[self alloc] initWithArrangedSubviews:subviews];

  return v3;
}

+ (id)containerFlowViewWithNumberOfColumns:(int64_t)columns arrangedSubviews:(id)subviews
{
  v5 = [[self alloc] initWithArrangedSubviews:subviews];
  [v5 setNumberOfColumns:columns];
  [v5 setHorizontalDistribution:3];

  return v5;
}

- (NUIContainerFlowView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = NUIContainerFlowView;
  result = [(NUIContainerView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_arrangement.container = result;
    *&result->_flowFlags = *(&result->_flowFlags + 1) << 8;
    *(&result->_flowFlags + 1) = 2;
  }

  return result;
}

- (NUIContainerFlowView)initWithArrangedSubviews:(id)subviews
{
  v4.receiver = self;
  v4.super_class = NUIContainerFlowView;
  result = [(NUIContainerView *)&v4 initWithArrangedSubviews:subviews];
  if (result)
  {
    result->_arrangement.container = result;
    *&result->_flowFlags = *(&result->_flowFlags + 1) << 8;
    *(&result->_flowFlags + 1) = 2;
  }

  return result;
}

- (void)dealloc
{
  _NUIFlowArrangement::resetForInvalidation(&self->_arrangement, -1);
  v3.receiver = self;
  v3.super_class = NUIContainerFlowView;
  [(NUIContainerView *)&v3 dealloc];
}

- (void)setNumberOfColumns:(int64_t)columns
{
  if (self->_arrangement.columns != columns)
  {
    self->_arrangement.columns = columns;
    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (void)setHorizontalAlignment:(int64_t)alignment
{
  flowFlags = self->_flowFlags;
  if (alignment != flowFlags)
  {
    *&self->_flowFlags = flowFlags & 0xFF00 | alignment;
    [(NUIContainerView *)self setNeedsInvalidation:1];
  }
}

- (void)setVerticalAlignment:(int64_t)alignment
{
  if (*&self->_flowFlags >> 8 != alignment)
  {
    *&self->_flowFlags = *&self->_flowFlags | (alignment << 8);
    [(NUIContainerView *)self setNeedsInvalidation:1];
  }
}

- (int64_t)alignmentForCell:(const _NUIFlowArrangementCell *)cell inAxis:(int64_t)axis
{
  result = [(NUIContainerView *)self alignmentForView:cell->var0 inAxis:?];
  if (result == -1)
  {
    if (axis)
    {

      return [(NUIContainerFlowView *)self verticalAlignment];
    }

    else
    {

      return [(NUIContainerFlowView *)self horizontalAlignment];
    }
  }

  return result;
}

- (void)setHorizontalDistribution:(int64_t)distribution
{
  v3 = *(&self->_arrangement + 4);
  if (distribution != v3)
  {
    *(&self->_arrangement + 4) = v3 & 0xFF00 | distribution;
    [(NUIContainerView *)self setNeedsInvalidation:4];
  }
}

- (void)setVerticalDistribution:(int64_t)distribution
{
  if (*(&self->_arrangement + 4) >> 8 != distribution)
  {
    *(&self->_arrangement + 4) = *(&self->_arrangement + 4) | (distribution << 8);
    [(NUIContainerView *)self setNeedsInvalidation:1];
  }
}

- (void)setItemSpacing:(double)spacing
{
  if (self->_arrangement.itemSpacing != spacing)
  {
    self->_arrangement.itemSpacing = spacing;
    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (void)setRowSpacing:(double)spacing
{
  if (self->_arrangement.rowSpacing != spacing)
  {
    self->_arrangement.rowSpacing = spacing;
    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (void)setItemWidth:(double)width
{
  if (self->_arrangement.itemWidth != width)
  {
    self->_arrangement.itemWidth = width;
    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (void)setRowHeight:(double)height
{
  if (self->_arrangement.rowHeight != height)
  {
    self->_arrangement.rowHeight = height;
    [(NUIContainerView *)self setNeedsInvalidation:2];
  }
}

- (BOOL)isLayoutSizeDependentOnPerpendicularAxis
{
  if (!self->_arrangement.columns)
  {
    return 1;
  }

  v3.receiver = self;
  v3.super_class = NUIContainerFlowView;
  return [(NUIContainerView *)&v3 isLayoutSizeDependentOnPerpendicularAxis];
}

- (id)calculateViewForFirstBaselineLayout
{
  selfCopy = self;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  visibleArrangedSubviews = [(NUIContainerView *)self visibleArrangedSubviews];
  v4 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(visibleArrangedSubviews);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [(UIView *)v9 effectiveFirstBaselineOffsetFromTop];
        if (v10 > v7)
        {
          selfCopy = v9;
          v7 = v10;
        }
      }

      v5 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return selfCopy;
}

- (id)calculateViewForLastBaselineLayout
{
  selfCopy = self;
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reverseObjectEnumerator = [(NSArray *)[(NUIContainerView *)self visibleArrangedSubviews] reverseObjectEnumerator];
  v4 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [(UIView *)v9 effectiveBaselineOffsetFromBottom];
        if (v10 > v7)
        {
          selfCopy = v9;
          v7 = v10;
        }
      }

      v5 = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return selfCopy;
}

- (void)populateFlowArrangementCells:(void *)cells
{
  v43 = *MEMORY[0x277D85DE8];
  visibleArrangedSubviews = [(NUIContainerView *)self visibleArrangedSubviews];
  *(cells + 1) = *cells;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = visibleArrangedSubviews;
  v6 = [(NSArray *)visibleArrangedSubviews countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v35 = *v39;
    do
    {
      v7 = 0;
      do
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * v7);
        if (_NUIIsDebuggerAttached())
        {
          [(NUIContainerView *)self minimumSpacingAdjacentToView:v8];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          if (!NUIContainerViewLengthIsDefault(v15) || !NUIContainerViewLengthIsDefault(v10) || !NUIContainerViewLengthIsDefault(v12) || !NUIContainerViewLengthIsDefault(v14))
          {
            v16 = _NUILog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [(NUIContainerFlowView *)&buf populateFlowArrangementCells:v37, v16];
            }
          }
        }

        if (self)
        {
          v17 = [(NUIContainerView *)self alignmentForView:v8 inAxis:0];
          flowFlags = v17;
          if (v17 == -1)
          {
            flowFlags = self->_flowFlags;
          }

          v19 = [(NUIContainerView *)self alignmentForView:v8 inAxis:1];
          v20 = v19;
          if (v19 == -1)
          {
            v20 = *(&self->_flowFlags + 1);
          }
        }

        else
        {
          flowFlags = 0;
          v20 = 0;
        }

        v22 = *(cells + 1);
        v21 = *(cells + 2);
        if (v22 >= v21)
        {
          v25 = (v22 - *cells) >> 6;
          if ((v25 + 1) >> 58)
          {
            std::vector<std::pair<CGSize,CGSize>>::__throw_length_error[abi:nn200100]();
          }

          v26 = v21 - *cells;
          v27 = v26 >> 5;
          if (v26 >> 5 <= (v25 + 1))
          {
            v27 = v25 + 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFC0)
          {
            v28 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v27;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<_NUIFlowArrangementCell>>(cells, v28);
          }

          _NUIFlowArrangementCell::_NUIFlowArrangementCell(v25 << 6, v8, flowFlags, v20);
          v24 = v29 + 64;
          v30 = *(cells + 1) - *cells;
          v31 = v29 - v30;
          memcpy((v29 - v30), *cells, v30);
          v32 = *cells;
          *cells = v31;
          *(cells + 1) = v24;
          *(cells + 2) = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *&v23 = _NUIFlowArrangementCell::_NUIFlowArrangementCell(*(cells + 1), v8, flowFlags, v20).n128_u64[0];
          v24 = v22 + 64;
          *(cells + 1) = v22 + 64;
        }

        *(cells + 1) = v24;
        ++v7;
      }

      while (v6 != v7);
      v33 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v42 count:16, v23];
      v6 = v33;
    }

    while (v33);
  }
}

- (id)arrangedDebugDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NUIContainerFlowView;
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
          flowFlags = [(NUIContainerView *)self alignmentForView:*(*(&v16 + 1) + 8 * v6) inAxis:0];
          if (flowFlags == -1)
          {
            flowFlags = self->_flowFlags;
          }
        }

        else
        {
          flowFlags = 0;
        }

        if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
        {
          [NUIContainerFlowView arrangedDebugDescription];
        }

        flowFlags = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", flowFlags)}];
        if (!flowFlags)
        {
          flowFlags = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", flowFlags];
        }

        if (self)
        {
          v10 = [(NUIContainerView *)self alignmentForView:v7 inAxis:1];
          if (v10 == -1)
          {
            v10 = *(&self->_flowFlags + 1);
          }
        }

        else
        {
          v10 = 0;
        }

        if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
        {
          dispatch_once(&NUIStringFromAlignment(NUIContainerAlignment)::onceToken, &__block_literal_global_162);
        }

        v11 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v10)}];
        if (!v11)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v10];
        }

        [v15 appendFormat:@"[%@|%@]", flowFlags, v11];
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
  v9.super_class = NUIContainerFlowView;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[NUIContainerView debugDictionary](&v9, sel_debugDictionary)}];
  v10[0] = @"horizontal";
  flowFlags = self->_flowFlags;
  if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
  {
    [NUIContainerFlowView arrangedDebugDescription];
  }

  flowFlags = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", flowFlags)}];
  if (!flowFlags)
  {
    flowFlags = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", flowFlags];
  }

  v10[1] = @"vertical";
  v11[0] = flowFlags;
  v6 = *(&self->_flowFlags + 1);
  if (NUIStringFromAlignment(NUIContainerAlignment)::onceToken != -1)
  {
    [NUIContainerFlowView arrangedDebugDescription];
  }

  v7 = [NUIStringFromAlignment(NUIContainerAlignment)::dict objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v6)}];
  if (!v7)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown(%ld)", v6];
  }

  v11[1] = v7;
  [v3 setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v11, v10, 2), @"alignmnets"}];
  [v3 setObject:_NUIFlowArrangement::debugDictionary(&self->_arrangement) forKeyedSubscript:@"arrangement"];
  return [v3 copy];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_fittingSizeForCell_withProposedSize_ == selector)
  {
    v4 = sel_fittingSizeForFlowPositioningOfArrangedSubview_withProposedSize_;
  }

  else
  {
    if (sel_distributionForRowAtIndex_ofTotalRowCount_withCells_ != selector)
    {
      v6.receiver = self;
      v6.super_class = NUIContainerFlowView;
      return [(NUIContainerFlowView *)&v6 respondsToSelector:?];
    }

    v4 = sel_distributionForRowAtIndex_ofTotalRowCount_withArrangedSubviews_;
  }

  v5 = [(NUIContainerFlowView *)self methodForSelector:v4];
  return v5 != [objc_opt_class() instanceMethodForSelector:v4];
}

- (CGSize)fittingSizeForCell:(const _NUIFlowArrangementCell *)cell withProposedSize:(CGSize)size
{
  [(NUIContainerFlowView *)self fittingSizeForFlowPositioningOfArrangedSubview:cell->var0 withProposedSize:size.width, size.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (int64_t)distributionForRowAtIndex:(int64_t)index ofTotalRowCount:(int64_t)count withCells:(const void *)cells
{
  v14[1] = *MEMORY[0x277D85DE8];
  v9 = *cells;
  v8 = *(cells + 1);
  (MEMORY[0x28223BE20])();
  v11 = v14 - v10;
  for (i = 0; v9 != v8; v9 += 8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *&v11[8 * i++] = *v9;
    }
  }

  return -[NUIContainerFlowView distributionForRowAtIndex:ofTotalRowCount:withArrangedSubviews:](self, "distributionForRowAtIndex:ofTotalRowCount:withArrangedSubviews:", index, count, [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:i]);
}

- (_WORD)_effectiveAlignmentForArrangedSubview:(uint64_t)subview inAxis:
{
  if (result)
  {
    v4 = result;
    result = [result alignmentForView:a2 inAxis:subview];
    if (result == -1)
    {
      v5 = v4[352];
      if (subview)
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

- (double)_calculateArrangedSizeFittingSize:(CGFloat)size forLayout:(CGFloat)layout
{
  if (!self)
  {
    return 0.0;
  }

  do
  {
    _NUIFlowArrangement::resetForInvalidation((self + 544), 0);
    v11.width = size;
    v11.height = layout;
    _NUIFlowArrangement::measureCells((self + 544), a2, v11);
    v9 = v8;
  }

  while (([self mustRestartMeasurement] & 1) != 0);
  return v9;
}

- (CGSize)calculateArrangedSizeFittingSize:(CGSize)size
{
  v3 = [(NUIContainerFlowView *)self _calculateArrangedSizeFittingSize:size.width forLayout:size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutArrangedSubviewsInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NUIContainerFlowView *)self _calculateArrangedSizeFittingSize:bounds.size.width forLayout:bounds.size.height];

  _NUIFlowArrangement::positionCells(&self->_arrangement, &__block_literal_global_4, x, y, width, height);
}

- (void)populateFlowArrangementCells:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_21D09E000, log, OS_LOG_TYPE_DEBUG, "Non default minimum spacing adjecent to arranged subview is not yet supported by NUIContainerFlowView.", buf, 2u);
}

@end