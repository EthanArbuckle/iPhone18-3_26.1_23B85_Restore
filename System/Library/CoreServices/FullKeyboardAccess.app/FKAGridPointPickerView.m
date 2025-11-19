@interface FKAGridPointPickerView
- (CGPoint)selectedScreenPoint;
- (CGRect)_frameForIndex:(unint64_t)a3 withinFrame:(CGRect)a4;
- (CGRect)_selectableFrame;
- (FKAGridPointPickerView)initWithFrame:(CGRect)a3;
- (unint64_t)_numberOfRows;
- (unint64_t)_numberOfRowsWithinFrame:(CGRect)a3;
- (void)_addCellViewForIndex:(unint64_t)a3;
- (void)_resetCellViewsForCurrentSelectableFrame;
- (void)drillIn;
- (void)drillOut;
- (void)layoutSubviews;
- (void)moveSelectionDown;
- (void)moveSelectionLeft;
- (void)moveSelectionRight;
- (void)moveSelectionUp;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIndexPath:(id)a3;
- (void)setSelectedIndex:(unint64_t)a3;
@end

@implementation FKAGridPointPickerView

- (FKAGridPointPickerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = FKAGridPointPickerView;
  v3 = [(FKAGridPointPickerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v11 = [(FKAGridPointPickerView *)self cellViews];
  v12 = [v11 count];

  v13 = [(FKAGridPointPickerView *)self _numberOfRows];
  if (v12 != [(FKAGridPointPickerView *)self _numberOfColumns]* v13)
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
      v16 = [(FKAGridPointPickerView *)self cellViews];
      v17 = [v16 objectAtIndexedSubscript:i];

      [(FKAGridPointPickerView *)self _frameForIndex:i withinFrame:v4, v6, v8, v10];
      [v17 setFrame:?];
    }
  }
}

- (void)setSelectedIndex:(unint64_t)a3
{
  selectedIndex = self->_selectedIndex;
  if (selectedIndex != a3)
  {
    v6 = [(FKAGridPointPickerView *)self cellViews];
    v7 = [v6 count];

    if (selectedIndex < v7)
    {
      v8 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.2];
      v9 = [(FKAGridPointPickerView *)self cellViews];
      v10 = [v9 objectAtIndexedSubscript:self->_selectedIndex];
      [v10 setBackgroundColor:v8];
    }

    v11 = [(FKAGridPointPickerView *)self cellViews];
    v12 = [v11 count];
    v13 = [(FKAGridPointPickerView *)self _numberOfRows];
    v14 = [(FKAGridPointPickerView *)self _numberOfColumns]* v13;

    if (v12 != v14)
    {
      _AXAssert();
    }

    v15 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.4];
    v16 = [(FKAGridPointPickerView *)self cellViews];
    v17 = [v16 objectAtIndexedSubscript:a3];
    [v17 setBackgroundColor:v15];

    self->_selectedIndex = a3;
  }
}

- (void)setIndexPath:(id)a3
{
  v5 = a3;
  if (self->_indexPath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_indexPath, a3);
    [(FKAGridPointPickerView *)self _resetCellViewsForCurrentSelectableFrame];
    v5 = v6;
  }
}

- (CGPoint)selectedScreenPoint
{
  v3 = [(FKAGridPointPickerView *)self cellViews];
  v4 = [v3 objectAtIndexedSubscript:{-[FKAGridPointPickerView selectedIndex](self, "selectedIndex")}];

  v5 = [(FKAGridPointPickerView *)self window];
  [v4 bounds];
  AX_CGRectGetCenter();
  [v4 convertPoint:0 toView:?];
  [v5 convertPoint:0 toWindow:?];
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
  v3 = [(FKAGridPointPickerView *)self selectedIndex];
  if (v3 % [(FKAGridPointPickerView *)self _numberOfColumns])
  {
    v4 = [(FKAGridPointPickerView *)self selectedIndex]- 1;

    [(FKAGridPointPickerView *)self setSelectedIndex:v4];
  }
}

- (void)moveSelectionRight
{
  v3 = [(FKAGridPointPickerView *)self _numberOfColumns];
  if ([(FKAGridPointPickerView *)self selectedIndex]% v3 < v3 - 1)
  {
    v4 = [(FKAGridPointPickerView *)self selectedIndex]+ 1;

    [(FKAGridPointPickerView *)self setSelectedIndex:v4];
  }
}

- (void)moveSelectionUp
{
  v3 = [(FKAGridPointPickerView *)self _numberOfColumns];
  if (v3 <= [(FKAGridPointPickerView *)self selectedIndex])
  {
    v4 = [(FKAGridPointPickerView *)self selectedIndex]- v3;

    [(FKAGridPointPickerView *)self setSelectedIndex:v4];
  }
}

- (void)moveSelectionDown
{
  v3 = [(FKAGridPointPickerView *)self _numberOfRows];
  v4 = [(FKAGridPointPickerView *)self _numberOfColumns];
  if ([(FKAGridPointPickerView *)self selectedIndex]/ v4 < v3 - 1)
  {
    v5 = [(FKAGridPointPickerView *)self selectedIndex]+ v4;

    [(FKAGridPointPickerView *)self setSelectedIndex:v5];
  }
}

- (void)drillIn
{
  v3 = [(FKAGridPointPickerView *)self indexPath];
  v4 = [v3 indexPathByAddingIndex:{-[FKAGridPointPickerView selectedIndex](self, "selectedIndex")}];
  [(FKAGridPointPickerView *)self setIndexPath:v4];

  v5 = [(FKAGridPointPickerView *)self _numberOfRows];
  v6 = [(FKAGridPointPickerView *)self _numberOfColumns];
  v7 = [(FKAGridPointPickerView *)self _indexForRow:v5 >> 1 column:v6 >> 1 numberOfColumns:v6];

  [(FKAGridPointPickerView *)self setSelectedIndex:v7];
}

- (void)drillOut
{
  v3 = [(FKAGridPointPickerView *)self indexPath];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(FKAGridPointPickerView *)self indexPath];
    v6 = [v5 indexAtPosition:v4 - 1];

    v7 = [(FKAGridPointPickerView *)self indexPath];
    v8 = [v7 indexPathByRemovingLastIndex];
    [(FKAGridPointPickerView *)self setIndexPath:v8];

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
  v11 = [(FKAGridPointPickerView *)self indexPath];
  v12 = [v11 length];

  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = [(FKAGridPointPickerView *)self indexPath];
      v15 = [v14 indexAtPosition:i];

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
  v3 = [(FKAGridPointPickerView *)self _numberOfRows];
  v4 = [(FKAGridPointPickerView *)self _numberOfColumns];
  v5 = v4 * v3;
  v6 = [(FKAGridPointPickerView *)self cellViews];
  v7 = [v6 count];

  v8 = (v7 - v4 * v3);
  if (v7 <= v4 * v3)
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
    v9 = v4 * v3;
    do
    {
      v10 = [(FKAGridPointPickerView *)self cellViews];
      v11 = [v10 objectAtIndexedSubscript:v9];
      [v11 removeFromSuperview];

      ++v9;
    }

    while (v7 != v9);
    v12 = [(FKAGridPointPickerView *)self cellViews];
    [v12 removeObjectsInRange:{v5, v8}];
  }

  [(FKAGridPointPickerView *)self setSelectedIndex:[(FKAGridPointPickerView *)self _indexForRow:v3 >> 1 column:v4 >> 1 numberOfColumns:v4]];

  [(FKAGridPointPickerView *)self setNeedsLayout];
}

- (void)_addCellViewForIndex:(unint64_t)a3
{
  v14 = objc_opt_new();
  v5 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:dbl_100022700[[(FKAGridPointPickerView *)self selectedIndex]== a3]];
  [v14 setBackgroundColor:v5];

  v6 = [(FKAGridPointPickerView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v7))
  {
    v8 = 4.0;
  }

  else
  {
    v8 = 2.0;
  }

  v9 = [v14 layer];
  [v9 setBorderWidth:v8];

  v10 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v11 = [v10 CGColor];
  v12 = [v14 layer];
  [v12 setBorderColor:v11];

  v13 = [(FKAGridPointPickerView *)self cellViews];
  [v13 addObject:v14];

  [(FKAGridPointPickerView *)self addSubview:v14];
}

- (unint64_t)_numberOfRows
{
  [(FKAGridPointPickerView *)self _selectableFrame];

  return [(FKAGridPointPickerView *)self _numberOfRowsWithinFrame:?];
}

- (unint64_t)_numberOfRowsWithinFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
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

- (CGRect)_frameForIndex:(unint64_t)a3 withinFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(FKAGridPointPickerView *)self _numberOfRowsWithinFrame:?];
  v11 = [(FKAGridPointPickerView *)self _numberOfColumns];
  v12 = [(FKAGridPointPickerView *)self _rowForIndex:a3 numberOfColumns:v11];
  v13 = [(FKAGridPointPickerView *)self _columnForIndex:a3 numberOfColumns:v11];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v15 = MinX + CGRectGetWidth(v24) * v13 / v11;
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
  v18 = CGRectGetWidth(v27) / v11;
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