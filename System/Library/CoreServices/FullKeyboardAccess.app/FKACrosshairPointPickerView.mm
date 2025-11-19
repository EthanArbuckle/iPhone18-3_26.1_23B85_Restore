@interface FKACrosshairPointPickerView
- (CGPoint)selectedPoint;
- (CGPoint)selectedScreenPoint;
- (FKACrosshairPointPickerView)initWithFrame:(CGRect)a3;
- (void)decreaseXPrecision;
- (void)decreaseYPrecision;
- (void)increaseXPrecision;
- (void)increaseYPrecision;
- (void)layoutSubviews;
- (void)moveDown;
- (void)moveLeft;
- (void)moveRight;
- (void)moveUp;
- (void)setSelectedPoint:(CGPoint)a3;
@end

@implementation FKACrosshairPointPickerView

- (FKACrosshairPointPickerView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = FKACrosshairPointPickerView;
  v3 = [(FKACrosshairPointPickerView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    __asm { FMOV            V0.2D, #0.5 }

    *(v3 + 40) = _Q0;
    v10 = objc_opt_new();
    verticalLineView = v4->_verticalLineView;
    v4->_verticalLineView = v10;

    v12 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.4];
    [(UIView *)v4->_verticalLineView setBackgroundColor:v12];

    v13 = objc_opt_new();
    horizontalLineView = v4->_horizontalLineView;
    v4->_horizontalLineView = v13;

    v15 = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.4];
    [(UIView *)v4->_horizontalLineView setBackgroundColor:v15];

    [(FKACrosshairPointPickerView *)v4 addSubview:v4->_verticalLineView];
    [(FKACrosshairPointPickerView *)v4 addSubview:v4->_horizontalLineView];
  }

  return v4;
}

- (CGPoint)selectedScreenPoint
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  MinX = CGRectGetMinX(v28);
  [(FKACrosshairPointPickerView *)self selectedPoint];
  v14 = v13;
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  v15 = MinX + v14 * CGRectGetWidth(v29);
  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  MinY = CGRectGetMinY(v30);
  [(FKACrosshairPointPickerView *)self selectedPoint];
  v18 = v17;
  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  v19 = MinY + v18 * CGRectGetHeight(v31);
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  v20 = CGRectGetMinX(v32) + 1.0;
  if (v15 >= v20)
  {
    v21 = v15;
  }

  else
  {
    v21 = v20;
  }

  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  v22 = CGRectGetMaxX(v33) + -1.0;
  if (v21 >= v22)
  {
    v21 = v22;
  }

  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  v23 = CGRectGetMinY(v34) + 1.0;
  if (v19 < v23)
  {
    v19 = v23;
  }

  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  v24 = CGRectGetMaxY(v35) + -1.0;
  if (v19 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v19;
  }

  v26 = v21;
  result.y = v25;
  result.x = v26;
  return result;
}

- (void)setSelectedPoint:(CGPoint)a3
{
  if (self->_selectedPoint.x != a3.x || self->_selectedPoint.y != a3.y)
  {
    self->_selectedPoint = a3;
    [(FKACrosshairPointPickerView *)self setNeedsLayout];
  }
}

- (void)moveLeft
{
  [(FKACrosshairPointPickerView *)self selectedPoint];
  v4 = v3;
  v6 = v5;
  [(FKACrosshairPointPickerView *)self _xIncrement];
  v8 = fmax(v4 - v7, 0.0);

  [(FKACrosshairPointPickerView *)self setSelectedPoint:v8, v6];
}

- (void)moveRight
{
  [(FKACrosshairPointPickerView *)self selectedPoint];
  v4 = v3;
  v6 = v5;
  [(FKACrosshairPointPickerView *)self _xIncrement];
  v8 = v4 + v7;
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  [(FKACrosshairPointPickerView *)self setSelectedPoint:v8, v6];
}

- (void)moveUp
{
  [(FKACrosshairPointPickerView *)self selectedPoint];
  v4 = v3;
  v6 = v5;
  [(FKACrosshairPointPickerView *)self _yIncrement];
  v8 = fmax(v6 - v7, 0.0);

  [(FKACrosshairPointPickerView *)self setSelectedPoint:v4, v8];
}

- (void)moveDown
{
  [(FKACrosshairPointPickerView *)self selectedPoint];
  v4 = v3;
  v6 = v5;
  [(FKACrosshairPointPickerView *)self _yIncrement];
  v8 = v6 + v7;
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  [(FKACrosshairPointPickerView *)self setSelectedPoint:v4, v9];
}

- (void)increaseXPrecision
{
  v3 = [(FKACrosshairPointPickerView *)self xPrecisionLevel]+ 1;

  [(FKACrosshairPointPickerView *)self setXPrecisionLevel:v3];
}

- (void)decreaseXPrecision
{
  if ([(FKACrosshairPointPickerView *)self xPrecisionLevel])
  {
    v3 = [(FKACrosshairPointPickerView *)self xPrecisionLevel]- 1;

    [(FKACrosshairPointPickerView *)self setXPrecisionLevel:v3];
  }
}

- (void)increaseYPrecision
{
  v3 = [(FKACrosshairPointPickerView *)self yPrecisionLevel]+ 1;

  [(FKACrosshairPointPickerView *)self setYPrecisionLevel:v3];
}

- (void)decreaseYPrecision
{
  if ([(FKACrosshairPointPickerView *)self yPrecisionLevel])
  {
    v3 = [(FKACrosshairPointPickerView *)self yPrecisionLevel]- 1;

    [(FKACrosshairPointPickerView *)self setYPrecisionLevel:v3];
  }
}

- (void)layoutSubviews
{
  [(FKACrosshairPointPickerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(FKACrosshairPointPickerView *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v12))
  {
    v13 = 8.0;
  }

  else
  {
    v13 = 4.0;
  }

  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  MinX = CGRectGetMinX(v37);
  [(FKACrosshairPointPickerView *)self selectedPoint];
  v16 = v15;
  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  v17 = MinX + v16 * CGRectGetWidth(v38);
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v13;
  v39.size.height = v10;
  v18 = v17 - CGRectGetWidth(v39);
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  v19 = CGRectGetMinX(v40);
  if (v18 < v19)
  {
    v18 = v19;
  }

  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = v18;
  v42.origin.y = v6;
  v42.size.width = v13;
  v42.size.height = v10;
  v21 = MaxX - CGRectGetWidth(v42);
  if (v18 >= v21)
  {
    v18 = v21;
  }

  v22 = [(FKACrosshairPointPickerView *)self verticalLineView];
  [v22 setFrame:{v18, v6, v13, v10}];

  v23 = [(FKACrosshairPointPickerView *)self traitCollection];
  v24 = [v23 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v24))
  {
    v25 = 8.0;
  }

  else
  {
    v25 = 4.0;
  }

  v43.origin.x = v4;
  v43.origin.y = v6;
  v43.size.width = v8;
  v43.size.height = v10;
  MinY = CGRectGetMinY(v43);
  [(FKACrosshairPointPickerView *)self selectedPoint];
  v28 = v27;
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  v29 = MinY + v28 * CGRectGetHeight(v44);
  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v25;
  v30 = v29 - CGRectGetHeight(v45);
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  v31 = CGRectGetMinY(v46);
  if (v30 < v31)
  {
    v30 = v31;
  }

  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  MaxY = CGRectGetMaxY(v47);
  v48.origin.x = v4;
  v48.origin.y = v30;
  v48.size.width = v8;
  v48.size.height = v25;
  v33 = MaxY - CGRectGetHeight(v48);
  if (v30 >= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v30;
  }

  v35 = [(FKACrosshairPointPickerView *)self horizontalLineView];
  [v35 setFrame:{v4, v34, v8, v25}];
}

- (CGPoint)selectedPoint
{
  x = self->_selectedPoint.x;
  y = self->_selectedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end