@interface SCATGridPointPickerView
- (CGPath)pathForCenterPointAtSelectionPath:(id)path;
- (CGRect)_availableFrameForCenterPointAtSelectionPath:(id)path;
- (CGRect)frameForCenterPointAtSelectionPath:(id)path;
- (CGRect)frameForSelectionPath:(id)path;
- (SCATGridPointPickerView)initWithFrame:(CGRect)frame;
- (id)centerPointImageForGrid:(id)grid;
- (void)_updateGridProperties;
- (void)layoutSubviews;
- (void)setCurrentSelectionPath:(id)path;
@end

@implementation SCATGridPointPickerView

- (SCATGridPointPickerView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = SCATGridPointPickerView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(SCATGridPointPickerView *)&v13 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v7 = +[SCATStyleProvider sharedStyleProvider];
    height2 = [[SCATGridView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    grid = height->_grid;
    height->_grid = height2;

    [(SCATGridView *)height->_grid setDelegate:height];
    [(SCATGridView *)height->_grid setAutoresizingMask:18];
    [(SCATGridView *)height->_grid setNumberOfColumns:3];
    [v7 gridLineThickness];
    [(SCATGridView *)height->_grid setLineThickness:?];
    gridColor = [v7 gridColor];
    [(SCATGridView *)height->_grid setLineColor:gridColor];

    gridShadowColor = [v7 gridShadowColor];
    [(SCATGridView *)height->_grid setShadowColor:gridShadowColor];

    [v7 gridShadowOffset];
    [(SCATGridView *)height->_grid setShadowOffset:?];
    [(SCATGridPointPickerView *)height _updateGridProperties];
    [(SCATGridPointPickerView *)height addSubview:height->_grid];
  }

  return height;
}

- (CGRect)frameForSelectionPath:(id)path
{
  pathCopy = path;
  [(SCATGridPointPickerView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [pathCopy length];
  if (v13)
  {
    v14 = v13;
    for (i = 0; i != v14; ++i)
    {
      v16 = [pathCopy indexAtPosition:i];
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

- (CGRect)frameForCenterPointAtSelectionPath:(id)path
{
  pathCopy = path;
  v5 = +[SCATStyleProvider sharedStyleProvider];
  [(SCATGridPointPickerView *)self _availableFrameForCenterPointAtSelectionPath:pathCopy];
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

- (CGPath)pathForCenterPointAtSelectionPath:(id)path
{
  pathCopy = path;
  v5 = +[SCATStyleProvider sharedStyleProvider];
  [(SCATGridPointPickerView *)self _availableFrameForCenterPointAtSelectionPath:pathCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v5 gridCenterPointPathWithAvailableFrame:{v7, v9, v11, v13}];
  return v14;
}

- (CGRect)_availableFrameForCenterPointAtSelectionPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (!pathCopy)
  {
    v26 = xmmword_1001BD350;
    v8 = [NSIndexPath indexPathWithIndexes:&v26 length:2];
    goto LABEL_5;
  }

  v6 = [pathCopy length];
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
  currentSelectionPath = [(SCATGridPointPickerView *)self currentSelectionPath];
  [(SCATGridPointPickerView *)self frameForSelectionPath:currentSelectionPath];
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
  currentSelectionPath2 = [(SCATGridPointPickerView *)self currentSelectionPath];
  v13 = [currentSelectionPath2 length];

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

- (void)setCurrentSelectionPath:(id)path
{
  pathCopy = path;
  if (self->_currentSelectionPath != pathCopy)
  {
    v6 = pathCopy;
    objc_storeStrong(&self->_currentSelectionPath, path);
    [(SCATGridPointPickerView *)self _updateGridProperties];
    pathCopy = v6;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SCATGridPointPickerView;
  [(SCATPromptView *)&v4 layoutSubviews];
  currentSelectionPath = [(SCATGridPointPickerView *)self currentSelectionPath];
  [(SCATGridPointPickerView *)self frameForSelectionPath:currentSelectionPath];
  [(SCATGridView *)self->_grid setFrame:?];
}

- (id)centerPointImageForGrid:(id)grid
{
  currentSelectionPath = [(SCATGridPointPickerView *)self currentSelectionPath];
  [(SCATGridPointPickerView *)self _availableFrameForCenterPointAtSelectionPath:currentSelectionPath];
  v6 = v5;
  v8 = v7;

  v9 = +[SCATStyleProvider sharedStyleProvider];
  v10 = [v9 gridCenterPointImageWithAvailableSize:{v6, v8}];

  return v10;
}

@end