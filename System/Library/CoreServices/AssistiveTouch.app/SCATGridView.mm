@interface SCATGridView
- (CGSize)shadowOffset;
- (SCATGridDelegate)delegate;
- (SCATGridView)initWithFrame:(CGRect)a3;
- (double)_adjustOriginValue:(double)a3 forDistance:(double)a4 maximumEndPosition:(double)a5;
- (void)_drawLinesInContext:(CGContext *)a3 forRows:(BOOL)a4;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCenterPointVisible:(BOOL)a3;
- (void)setLineColor:(id)a3;
- (void)setLineThickness:(double)a3;
- (void)setNumberOfColumns:(unint64_t)a3;
- (void)setNumberOfRows:(unint64_t)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShouldIncludeCenterPoint:(BOOL)a3;
- (void)setShowsBottomBorder:(BOOL)a3;
- (void)setShowsLeftBorder:(BOOL)a3;
- (void)setShowsRightBorder:(BOOL)a3;
- (void)setShowsTopBorder:(BOOL)a3;
@end

@implementation SCATGridView

- (SCATGridView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SCATGridView;
  v3 = [(SCATGridView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SCATGridView *)v3 setShouldIncludeCenterPoint:1];
    [(SCATGridView *)v4 setOpaque:0];
    v5 = objc_alloc_init(UIImageView);
    centerPoint = v4->_centerPoint;
    v4->_centerPoint = v5;

    [(SCATGridView *)v4 addSubview:v4->_centerPoint];
    [(UIImageView *)v4->_centerPoint setHidden:1];
    v4->_showsRightBorder = 1;
    v4->_showsLeftBorder = 1;
    v4->_showsBottomBorder = 1;
    v4->_showsTopBorder = 1;
  }

  return v4;
}

- (void)setShouldIncludeCenterPoint:(BOOL)a3
{
  if (self->_shouldIncludeCenterPoint != a3)
  {
    self->_shouldIncludeCenterPoint = a3;
    if (a3 && self->_centerPoint)
    {
      [(SCATGridView *)self addSubview:self->_centerPoint];
    }

    else
    {
      [(UIImageView *)self->_centerPoint removeFromSuperview];
    }
  }
}

- (double)_adjustOriginValue:(double)a3 forDistance:(double)a4 maximumEndPosition:(double)a5
{
  result = 0.0;
  if (a3 >= 0.0)
  {
    result = a3;
    if (a3 + a4 > a5)
    {
      return a5 - a4;
    }
  }

  return result;
}

- (void)layoutSubviews
{
  if ([(SCATGridView *)self shouldIncludeCenterPoint])
  {
    [(SCATGridView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(SCATGridView *)self delegate];
    v12 = [v11 centerPointImageForGrid:self];
    [(UIImageView *)self->_centerPoint setImage:v12];

    [(UIImageView *)self->_centerPoint sizeToFit];
    [(UIImageView *)self->_centerPoint frame];
    v14 = floor(v4 + (v8 - v13) * 0.5);
    centerPoint = self->_centerPoint;
    v17 = floor(v6 + (v10 - v15) * 0.5);

    [(UIImageView *)centerPoint setFrame:v14, v17];
  }
}

- (void)setShowsTopBorder:(BOOL)a3
{
  if (self->_showsTopBorder != a3)
  {
    self->_showsTopBorder = a3;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setShowsBottomBorder:(BOOL)a3
{
  if (self->_showsBottomBorder != a3)
  {
    self->_showsBottomBorder = a3;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setShowsLeftBorder:(BOOL)a3
{
  if (self->_showsLeftBorder != a3)
  {
    self->_showsLeftBorder = a3;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setShowsRightBorder:(BOOL)a3
{
  if (self->_showsRightBorder != a3)
  {
    self->_showsRightBorder = a3;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfColumns:(unint64_t)a3
{
  if (self->_numberOfColumns != a3)
  {
    self->_numberOfColumns = a3;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfRows:(unint64_t)a3
{
  if (self->_numberOfRows != a3)
  {
    self->_numberOfRows = a3;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setLineThickness:(double)a3
{
  if (self->_lineThickness != a3)
  {
    self->_lineThickness = a3;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setLineColor:(id)a3
{
  v5 = a3;
  if (self->_lineColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lineColor, a3);
    [(SCATGridView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  if (self->_shadowColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_shadowColor, a3);
    [(SCATGridView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setShadowOffset:(CGSize)a3
{
  if (self->_shadowOffset.width != a3.width || self->_shadowOffset.height != a3.height)
  {
    self->_shadowOffset = a3;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setCenterPointVisible:(BOOL)a3
{
  if (self->_centerPointVisible != a3)
  {
    self->_centerPointVisible = a3;
    [(UIImageView *)self->_centerPoint setHidden:!a3];
  }
}

- (void)_drawLinesInContext:(CGContext *)a3 forRows:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = [(SCATGridView *)self numberOfRows];
    [(SCATGridView *)self bounds];
    v8 = v7;
  }

  else
  {
    v6 = [(SCATGridView *)self numberOfColumns];
    [(SCATGridView *)self bounds];
    v8 = v9;
  }

  [(SCATGridView *)self lineThickness];
  v11 = v10;
  [(SCATGridView *)self bounds];
  v32 = v12;
  [(SCATGridView *)self bounds];
  v31 = v13;
  [(SCATGridView *)self bounds];
  v15 = v14;
  [(SCATGridView *)self bounds];
  if (v6 != -1)
  {
    v17 = 0;
    v33 = v8 / v6;
    v18 = v11 * -0.5;
    v19 = v32 + v15;
    v20 = v31 + v16;
    for (i = -v6; i != 1; ++i)
    {
      if (v4)
      {
        v22 = [(SCATGridView *)self showsTopBorder];
        if (!v17 && !v22 || ![(SCATGridView *)self showsBottomBorder]&& !i)
        {
          goto LABEL_18;
        }

        v23 = v32;
        v24 = floor(v18 + v17 * v33);
        v25 = 0.0;
        v26 = v11;
      }

      else
      {
        v27 = [(SCATGridView *)self showsLeftBorder];
        if (!v17 && !v27 || ![(SCATGridView *)self showsRightBorder]&& !i)
        {
          goto LABEL_18;
        }

        v25 = floor(v18 + v17 * v33);
        v24 = 0.0;
        v23 = v11;
        v26 = v31;
      }

      [(SCATGridView *)self _adjustOriginValue:v25 forDistance:v23 maximumEndPosition:v19];
      v29 = v28;
      [(SCATGridView *)self _adjustOriginValue:v24 forDistance:v26 maximumEndPosition:v20];
      v34.origin.y = v30;
      v34.origin.x = v29;
      v34.size.width = v23;
      v34.size.height = v26;
      UIRectFill(v34);
LABEL_18:
      ++v17;
    }
  }
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [(SCATGridView *)self lineColor];
  [v5 set];

  [(SCATGridView *)self shadowOffset];
  v7 = v6;
  v9 = v8;
  v10 = [(SCATGridView *)self shadowColor];
  v11 = [v10 CGColor];
  v13.width = v7;
  v13.height = v9;
  CGContextSetShadowWithColor(CurrentContext, v13, 0.0, v11);

  CGContextBeginTransparencyLayer(CurrentContext, 0);
  [(SCATGridView *)self _drawLinesInContext:CurrentContext forRows:1];
  [(SCATGridView *)self _drawLinesInContext:CurrentContext forRows:0];

  CGContextEndTransparencyLayer(CurrentContext);
}

- (SCATGridDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end