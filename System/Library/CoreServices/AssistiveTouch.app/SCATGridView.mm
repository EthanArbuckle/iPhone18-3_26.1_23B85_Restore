@interface SCATGridView
- (CGSize)shadowOffset;
- (SCATGridDelegate)delegate;
- (SCATGridView)initWithFrame:(CGRect)frame;
- (double)_adjustOriginValue:(double)value forDistance:(double)distance maximumEndPosition:(double)position;
- (void)_drawLinesInContext:(CGContext *)context forRows:(BOOL)rows;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setCenterPointVisible:(BOOL)visible;
- (void)setLineColor:(id)color;
- (void)setLineThickness:(double)thickness;
- (void)setNumberOfColumns:(unint64_t)columns;
- (void)setNumberOfRows:(unint64_t)rows;
- (void)setShadowColor:(id)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShouldIncludeCenterPoint:(BOOL)point;
- (void)setShowsBottomBorder:(BOOL)border;
- (void)setShowsLeftBorder:(BOOL)border;
- (void)setShowsRightBorder:(BOOL)border;
- (void)setShowsTopBorder:(BOOL)border;
@end

@implementation SCATGridView

- (SCATGridView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SCATGridView;
  v3 = [(SCATGridView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setShouldIncludeCenterPoint:(BOOL)point
{
  if (self->_shouldIncludeCenterPoint != point)
  {
    self->_shouldIncludeCenterPoint = point;
    if (point && self->_centerPoint)
    {
      [(SCATGridView *)self addSubview:self->_centerPoint];
    }

    else
    {
      [(UIImageView *)self->_centerPoint removeFromSuperview];
    }
  }
}

- (double)_adjustOriginValue:(double)value forDistance:(double)distance maximumEndPosition:(double)position
{
  result = 0.0;
  if (value >= 0.0)
  {
    result = value;
    if (value + distance > position)
    {
      return position - distance;
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
    delegate = [(SCATGridView *)self delegate];
    v12 = [delegate centerPointImageForGrid:self];
    [(UIImageView *)self->_centerPoint setImage:v12];

    [(UIImageView *)self->_centerPoint sizeToFit];
    [(UIImageView *)self->_centerPoint frame];
    v14 = floor(v4 + (v8 - v13) * 0.5);
    centerPoint = self->_centerPoint;
    v17 = floor(v6 + (v10 - v15) * 0.5);

    [(UIImageView *)centerPoint setFrame:v14, v17];
  }
}

- (void)setShowsTopBorder:(BOOL)border
{
  if (self->_showsTopBorder != border)
  {
    self->_showsTopBorder = border;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setShowsBottomBorder:(BOOL)border
{
  if (self->_showsBottomBorder != border)
  {
    self->_showsBottomBorder = border;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setShowsLeftBorder:(BOOL)border
{
  if (self->_showsLeftBorder != border)
  {
    self->_showsLeftBorder = border;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setShowsRightBorder:(BOOL)border
{
  if (self->_showsRightBorder != border)
  {
    self->_showsRightBorder = border;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfColumns:(unint64_t)columns
{
  if (self->_numberOfColumns != columns)
  {
    self->_numberOfColumns = columns;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setNumberOfRows:(unint64_t)rows
{
  if (self->_numberOfRows != rows)
  {
    self->_numberOfRows = rows;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setLineThickness:(double)thickness
{
  if (self->_lineThickness != thickness)
  {
    self->_lineThickness = thickness;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setLineColor:(id)color
{
  colorCopy = color;
  if (self->_lineColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_lineColor, color);
    [(SCATGridView *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  if (self->_shadowColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_shadowColor, color);
    [(SCATGridView *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (void)setShadowOffset:(CGSize)offset
{
  if (self->_shadowOffset.width != offset.width || self->_shadowOffset.height != offset.height)
  {
    self->_shadowOffset = offset;
    [(SCATGridView *)self setNeedsDisplay];
  }
}

- (void)setCenterPointVisible:(BOOL)visible
{
  if (self->_centerPointVisible != visible)
  {
    self->_centerPointVisible = visible;
    [(UIImageView *)self->_centerPoint setHidden:!visible];
  }
}

- (void)_drawLinesInContext:(CGContext *)context forRows:(BOOL)rows
{
  rowsCopy = rows;
  if (rows)
  {
    numberOfRows = [(SCATGridView *)self numberOfRows];
    [(SCATGridView *)self bounds];
    v8 = v7;
  }

  else
  {
    numberOfRows = [(SCATGridView *)self numberOfColumns];
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
  if (numberOfRows != -1)
  {
    v17 = 0;
    v33 = v8 / numberOfRows;
    v18 = v11 * -0.5;
    v19 = v32 + v15;
    v20 = v31 + v16;
    for (i = -numberOfRows; i != 1; ++i)
    {
      if (rowsCopy)
      {
        showsTopBorder = [(SCATGridView *)self showsTopBorder];
        if (!v17 && !showsTopBorder || ![(SCATGridView *)self showsBottomBorder]&& !i)
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
        showsLeftBorder = [(SCATGridView *)self showsLeftBorder];
        if (!v17 && !showsLeftBorder || ![(SCATGridView *)self showsRightBorder]&& !i)
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

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  lineColor = [(SCATGridView *)self lineColor];
  [lineColor set];

  [(SCATGridView *)self shadowOffset];
  v7 = v6;
  v9 = v8;
  shadowColor = [(SCATGridView *)self shadowColor];
  cGColor = [shadowColor CGColor];
  v13.width = v7;
  v13.height = v9;
  CGContextSetShadowWithColor(CurrentContext, v13, 0.0, cGColor);

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