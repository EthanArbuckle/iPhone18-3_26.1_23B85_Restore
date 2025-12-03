@interface FKAGridPointPickerView
- (CGPoint)selectedScreenPoint;
- (CGRect)_frameForIndex:(unint64_t)index withinFrame:(CGRect)frame;
- (CGRect)_selectableFrame;
- (FKAGridPointPickerView)initWithFrame:(CGRect)frame;
- (unint64_t)_numberOfRows;
- (unint64_t)_numberOfRowsWithinFrame:(CGRect)frame;
- (void)_addCellViewForIndex:(unint64_t)index;
- (void)_resetCellViewsForCurrentSelectableFrame;
- (void)drillIn;
- (void)drillOut;
- (void)layoutSubviews;
- (void)moveSelectionDown;
- (void)moveSelectionLeft;
- (void)moveSelectionRight;
- (void)moveSelectionUp;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setIndexPath:(id)path;
- (void)setSelectedIndex:(unint64_t)index;
@end

@implementation FKAGridPointPickerView

- (FKAGridPointPickerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = FKAGridPointPickerView;
  v3 = [(FKAGridPointPickerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    indexPath = v3->_indexPath;
    v3->_indexPath = v4;

    v6 = +[NSMutableArray array];
    cellViews = v3->_cellViews;
    v3->_cellViews = v6;

    [(FKAGridPointPickerView *)v3 _resetCellViewsForCurrentSelectableFrame];
  }

  return v3;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(FKAGridPointPickerView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = FKAGridPointPickerView;
  [(FKAGridPointPickerView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(FKAGridPointPickerView *)self _resetCellViewsForCurrentSelectableFrame];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(FKAGridPointPickerView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = FKAGridPointPickerView;
  [(FKAGridPointPickerView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(FKAGridPointPickerView *)self _resetCellViewsForCurrentSelectableFrame];
  }
}

- (void)layoutSubviews
{
  [(FKAGridPointPickerView *)self _selectableFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  cellViews = [(FKAGridPointPickerView *)self cellViews];
  v12 = [cellViews count];

  _numberOfRows = [(FKAGridPointPickerView *)self _numberOfRows];
  if (v12 != [(FKAGridPointPickerView *)self _numberOfColumns]* _numberOfRows)
  {
    v14 = FKALogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_100014468(v12, v14);
    }
  }

  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      cellViews2 = [(FKAGridPointPickerView *)self cellViews];
      v17 = [cellViews2 objectAtIndexedSubscript:i];

      [(FKAGridPointPickerView *)self _frameForIndex:i withinFrame:v4, v6, v8, v10];
      [v17 setFrame:?];
    }
  }
}

- (void)setSelectedIndex:(unint64_t)index
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex != index)
  {
    cellViews = [(FKAGridPointPickerView *)self cellViews];
    v7 = [cellViews count];

    if (selectedIndex < v7)
    {
      v8 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.2];
      cellViews2 = [(FKAGridPointPickerView *)self cellViews];
      v10 = [cellViews2 objectAtIndexedSubscript:self->_selectedIndex];
      [v10 setBackgroundColor:v8];
    }

    cellViews3 = [(FKAGridPointPickerView *)self cellViews];
    v12 = [cellViews3 count];
    _numberOfRows = [(FKAGridPointPickerView *)self _numberOfRows];
    v14 = [(FKAGridPointPickerView *)self _numberOfColumns]* _numberOfRows;

    if (v12 != v14)
    {
      _AXAssert();
    }

    v15 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.4];
    cellViews4 = [(FKAGridPointPickerView *)self cellViews];
    v17 = [cellViews4 objectAtIndexedSubscript:index];
    [v17 setBackgroundColor:v15];

    self->_selectedIndex = index;
  }
}

- (void)setIndexPath:(id)path
{
  pathCopy = path;
  if (self->_indexPath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_indexPath, path);
    [(FKAGridPointPickerView *)self _resetCellViewsForCurrentSelectableFrame];
    pathCopy = v6;
  }
}

- (CGPoint)selectedScreenPoint
{
  cellViews = [(FKAGridPointPickerView *)self cellViews];
  v4 = [cellViews objectAtIndexedSubscript:{-[FKAGridPointPickerView selectedIndex](self, "selectedIndex")}];

  window = [(FKAGridPointPickerView *)self window];
  [v4 bounds];
  AX_CGRectGetCenter();
  [v4 convertPoint:0 toView:?];
  [window convertPoint:0 toWindow:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)moveSelectionLeft
{
  selectedIndex = [(FKAGridPointPickerView *)self selectedIndex];
  if (selectedIndex % [(FKAGridPointPickerView *)self _numberOfColumns])
  {
    v4 = [(FKAGridPointPickerView *)self selectedIndex]- 1;

    [(FKAGridPointPickerView *)self setSelectedIndex:v4];
  }
}

- (void)moveSelectionRight
{
  _numberOfColumns = [(FKAGridPointPickerView *)self _numberOfColumns];
  if ([(FKAGridPointPickerView *)self selectedIndex]% _numberOfColumns < _numberOfColumns - 1)
  {
    v4 = [(FKAGridPointPickerView *)self selectedIndex]+ 1;

    [(FKAGridPointPickerView *)self setSelectedIndex:v4];
  }
}

- (void)moveSelectionUp
{
  _numberOfColumns = [(FKAGridPointPickerView *)self _numberOfColumns];
  if (_numberOfColumns <= [(FKAGridPointPickerView *)self selectedIndex])
  {
    v4 = [(FKAGridPointPickerView *)self selectedIndex]- _numberOfColumns;

    [(FKAGridPointPickerView *)self setSelectedIndex:v4];
  }
}

- (void)moveSelectionDown
{
  _numberOfRows = [(FKAGridPointPickerView *)self _numberOfRows];
  _numberOfColumns = [(FKAGridPointPickerView *)self _numberOfColumns];
  if ([(FKAGridPointPickerView *)self selectedIndex]/ _numberOfColumns < _numberOfRows - 1)
  {
    v5 = [(FKAGridPointPickerView *)self selectedIndex]+ _numberOfColumns;

    [(FKAGridPointPickerView *)self setSelectedIndex:v5];
  }
}

- (void)drillIn
{
  indexPath = [(FKAGridPointPickerView *)self indexPath];
  v4 = [indexPath indexPathByAddingIndex:{-[FKAGridPointPickerView selectedIndex](self, "selectedIndex")}];
  [(FKAGridPointPickerView *)self setIndexPath:v4];

  _numberOfRows = [(FKAGridPointPickerView *)self _numberOfRows];
  _numberOfColumns = [(FKAGridPointPickerView *)self _numberOfColumns];
  v7 = [(FKAGridPointPickerView *)self _indexForRow:_numberOfRows >> 1 column:_numberOfColumns >> 1 numberOfColumns:_numberOfColumns];

  [(FKAGridPointPickerView *)self setSelectedIndex:v7];
}

- (void)drillOut
{
  indexPath = [(FKAGridPointPickerView *)self indexPath];
  v4 = [indexPath length];

  if (v4)
  {
    indexPath2 = [(FKAGridPointPickerView *)self indexPath];
    v6 = [indexPath2 indexAtPosition:v4 - 1];

    indexPath3 = [(FKAGridPointPickerView *)self indexPath];
    indexPathByRemovingLastIndex = [indexPath3 indexPathByRemovingLastIndex];
    [(FKAGridPointPickerView *)self setIndexPath:indexPathByRemovingLastIndex];

    [(FKAGridPointPickerView *)self setSelectedIndex:v6];
  }
}

- (CGRect)_selectableFrame
{
  [(FKAGridPointPickerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  indexPath = [(FKAGridPointPickerView *)self indexPath];
  v12 = [indexPath length];

  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      indexPath2 = [(FKAGridPointPickerView *)self indexPath];
      v15 = [indexPath2 indexAtPosition:i];

      [(FKAGridPointPickerView *)self _frameForIndex:v15 withinFrame:v4, v6, v8, v10];
      v4 = v16;
      v6 = v17;
      v8 = v18;
      v10 = v19;
    }
  }

  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)_resetCellViewsForCurrentSelectableFrame
{
  _numberOfRows = [(FKAGridPointPickerView *)self _numberOfRows];
  _numberOfColumns = [(FKAGridPointPickerView *)self _numberOfColumns];
  v5 = _numberOfColumns * _numberOfRows;
  cellViews = [(FKAGridPointPickerView *)self cellViews];
  v7 = [cellViews count];

  v8 = (v7 - _numberOfColumns * _numberOfRows);
  if (v7 <= _numberOfColumns * _numberOfRows)
  {
    if (v7 < v5)
    {
      do
      {
        [(FKAGridPointPickerView *)self _addCellViewForIndex:v7++];
      }

      while (v5 != v7);
    }
  }

  else
  {
    v9 = _numberOfColumns * _numberOfRows;
    do
    {
      cellViews2 = [(FKAGridPointPickerView *)self cellViews];
      v11 = [cellViews2 objectAtIndexedSubscript:v9];
      [v11 removeFromSuperview];

      ++v9;
    }

    while (v7 != v9);
    cellViews3 = [(FKAGridPointPickerView *)self cellViews];
    [cellViews3 removeObjectsInRange:{v5, v8}];
  }

  [(FKAGridPointPickerView *)self setSelectedIndex:[(FKAGridPointPickerView *)self _indexForRow:_numberOfRows >> 1 column:_numberOfColumns >> 1 numberOfColumns:_numberOfColumns]];

  [(FKAGridPointPickerView *)self setNeedsLayout];
}

- (void)_addCellViewForIndex:(unint64_t)index
{
  v14 = objc_opt_new();
  v5 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:dbl_100022700[[(FKAGridPointPickerView *)self selectedIndex]== index]];
  [v14 setBackgroundColor:v5];

  traitCollection = [(FKAGridPointPickerView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v8 = 4.0;
  }

  else
  {
    v8 = 2.0;
  }

  layer = [v14 layer];
  [layer setBorderWidth:v8];

  v10 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  cGColor = [v10 CGColor];
  layer2 = [v14 layer];
  [layer2 setBorderColor:cGColor];

  cellViews = [(FKAGridPointPickerView *)self cellViews];
  [cellViews addObject:v14];

  [(FKAGridPointPickerView *)self addSubview:v14];
}

- (unint64_t)_numberOfRows
{
  [(FKAGridPointPickerView *)self _selectableFrame];

  return [(FKAGridPointPickerView *)self _numberOfRowsWithinFrame:?];
}

- (unint64_t)_numberOfRowsWithinFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectIsEmpty(frame))
  {
    return 3;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectGetHeight(v14) / 3.0;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = v8 / (CGRectGetWidth(v15) / 3.0);
  v10 = 3;
  while (1)
  {
    v7 = v10;
    if (v9 <= 1.0)
    {
      break;
    }

    v11 = v9;
    v10 += 2;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v12 = CGRectGetHeight(v16) / v10;
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v9 = v12 / (CGRectGetWidth(v17) / 3.0);
    if (v9 < 1.0)
    {
      if (1.0 / v9 < v11)
      {
        v7 += 2;
      }

      return v7;
    }
  }

  return v7;
}

- (CGRect)_frameForIndex:(unint64_t)index withinFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = [(FKAGridPointPickerView *)self _numberOfRowsWithinFrame:?];
  _numberOfColumns = [(FKAGridPointPickerView *)self _numberOfColumns];
  v12 = [(FKAGridPointPickerView *)self _rowForIndex:index numberOfColumns:_numberOfColumns];
  v13 = [(FKAGridPointPickerView *)self _columnForIndex:index numberOfColumns:_numberOfColumns];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v15 = MinX + CGRectGetWidth(v24) * v13 / _numberOfColumns;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinY = CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v17 = MinY + CGRectGetHeight(v26) * v12 / v10;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v18 = CGRectGetWidth(v27) / _numberOfColumns;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v19 = CGRectGetHeight(v28) / v10;
  v20 = v15;
  v21 = v17;
  v22 = v18;
  result.size.height = v19;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end