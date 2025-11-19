@interface SCATGridPointPickerView
- (CGPath)pathForCenterPointAtSelectionPath:(id)a3;
- (CGRect)_availableFrameForCenterPointAtSelectionPath:(id)a3;
- (CGRect)frameForCenterPointAtSelectionPath:(id)a3;
- (CGRect)frameForSelectionPath:(id)a3;
- (SCATGridPointPickerView)initWithFrame:(CGRect)a3;
- (id)centerPointImageForGrid:(id)a3;
- (void)_updateGridProperties;
- (void)layoutSubviews;
- (void)setCurrentSelectionPath:(id)a3;
@end

@implementation SCATGridPointPickerView

- (SCATGridPointPickerView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = SCATGridPointPickerView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v6 = [(SCATGridPointPickerView *)&v13 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v6)
  {
    v7 = +[SCATStyleProvider sharedStyleProvider];
    v8 = [[SCATGridView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    grid = v6->_grid;
    v6->_grid = v8;

    [(SCATGridView *)v6->_grid setDelegate:v6];
    [(SCATGridView *)v6->_grid setAutoresizingMask:18];
    [(SCATGridView *)v6->_grid setNumberOfColumns:3];
    [v7 gridLineThickness];
    [(SCATGridView *)v6->_grid setLineThickness:?];
    v10 = [v7 gridColor];
    [(SCATGridView *)v6->_grid setLineColor:v10];

    v11 = [v7 gridShadowColor];
    [(SCATGridView *)v6->_grid setShadowColor:v11];

    [v7 gridShadowOffset];
    [(SCATGridView *)v6->_grid setShadowOffset:?];
    [(SCATGridPointPickerView *)v6 _updateGridProperties];
    [(SCATGridPointPickerView *)v6 addSubview:v6->_grid];
  }

  return v6;
}

- (CGRect)frameForSelectionPath:(id)a3
{
  v4 = a3;
  [(SCATGridPointPickerView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 length];
  if (v13)
  {
    v14 = v13;
    for (i = 0; i != v14; ++i)
    {
      v16 = [v4 indexAtPosition:i];
      if (i)
      {
        v10 = v10 / [(SCATGridPointPickerView *)self numberOfColumns];
        v6 = v6 + v16 * v10;
      }

      else
      {
        v12 = v12 / [(SCATGridPointPickerView *)self numberOfRows];
        v8 = v8 + v16 * v12;
      }
    }
  }

  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v26 = CGRectIntegral(v25);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)frameForCenterPointAtSelectionPath:(id)a3
{
  v4 = a3;
  v5 = +[SCATStyleProvider sharedStyleProvider];
  [(SCATGridPointPickerView *)self _availableFrameForCenterPointAtSelectionPath:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v5 gridCenterPointFrameWithAvailableFrame:{v7, v9, v11, v13}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGPath)pathForCenterPointAtSelectionPath:(id)a3
{
  v4 = a3;
  v5 = +[SCATStyleProvider sharedStyleProvider];
  [(SCATGridPointPickerView *)self _availableFrameForCenterPointAtSelectionPath:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v5 gridCenterPointPathWithAvailableFrame:{v7, v9, v11, v13}];
  return v14;
}

- (CGRect)_availableFrameForCenterPointAtSelectionPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v26 = xmmword_1001BD350;
    v8 = [NSIndexPath indexPathWithIndexes:&v26 length:2];
    goto LABEL_5;
  }

  v6 = [v4 length];
  v7 = [v5 indexPathByAddingIndex:1];
  v8 = v7;
  if (v6)
  {
LABEL_5:
    [(SCATGridPointPickerView *)self frameForSelectionPath:v8];
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
    goto LABEL_6;
  }

  v9 = [v7 indexPathByAddingIndex:1];
  [(SCATGridPointPickerView *)self frameForSelectionPath:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

LABEL_6:
  v22 = v11;
  v23 = v13;
  v24 = v15;
  v25 = v17;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)_updateGridProperties
{
  v3 = [(SCATGridPointPickerView *)self currentSelectionPath];
  [(SCATGridPointPickerView *)self frameForSelectionPath:v3];
  [(SCATGridView *)self->_grid setFrame:?];

  [(SCATGridView *)self->_grid frame];
  v5 = v4;
  [(SCATGridPointPickerView *)self bounds];
  [(SCATGridView *)self->_grid setShowsLeftBorder:v5 > v6];
  [(SCATGridView *)self->_grid frame];
  MaxX = CGRectGetMaxX(v17);
  [(SCATGridPointPickerView *)self bounds];
  [(SCATGridView *)self->_grid setShowsRightBorder:MaxX < CGRectGetMaxX(v18)];
  [(SCATGridView *)self->_grid frame];
  v9 = v8;
  [(SCATGridPointPickerView *)self bounds];
  [(SCATGridView *)self->_grid setShowsTopBorder:v9 > v10];
  [(SCATGridView *)self->_grid frame];
  MaxY = CGRectGetMaxY(v19);
  [(SCATGridPointPickerView *)self bounds];
  [(SCATGridView *)self->_grid setShowsBottomBorder:MaxY < CGRectGetMaxY(v20)];
  v12 = [(SCATGridPointPickerView *)self currentSelectionPath];
  v13 = [v12 length];

  grid = self->_grid;
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  [(SCATGridView *)grid setNumberOfRows:v15];
}

- (void)setCurrentSelectionPath:(id)a3
{
  v5 = a3;
  if (self->_currentSelectionPath != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentSelectionPath, a3);
    [(SCATGridPointPickerView *)self _updateGridProperties];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SCATGridPointPickerView;
  [(SCATPromptView *)&v4 layoutSubviews];
  v3 = [(SCATGridPointPickerView *)self currentSelectionPath];
  [(SCATGridPointPickerView *)self frameForSelectionPath:v3];
  [(SCATGridView *)self->_grid setFrame:?];
}

- (id)centerPointImageForGrid:(id)a3
{
  v4 = [(SCATGridPointPickerView *)self currentSelectionPath];
  [(SCATGridPointPickerView *)self _availableFrameForCenterPointAtSelectionPath:v4];
  v6 = v5;
  v8 = v7;

  v9 = +[SCATStyleProvider sharedStyleProvider];
  v10 = [v9 gridCenterPointImageWithAvailableSize:{v6, v8}];

  return v10;
}

@end