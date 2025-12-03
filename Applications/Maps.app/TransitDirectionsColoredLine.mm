@interface TransitDirectionsColoredLine
- (TransitDirectionsColoredLine)initWithFrame:(CGRect)frame;
- (TransitDirectionsColoredLine)initWithStyle:(unint64_t)style;
- (double)innerGapLength;
- (unint64_t)_maximumNumberOfDots:(double *)dots;
- (void)drawRect:(CGRect)rect;
- (void)setInnerGapLength:(double)length;
- (void)setLineColor:(id)color;
- (void)setOuterGapLength:(double)length;
- (void)setStyle:(unint64_t)style;
@end

@implementation TransitDirectionsColoredLine

- (void)drawRect:(CGRect)rect
{
  v24.receiver = self;
  v24.super_class = TransitDirectionsColoredLine;
  [(TransitDirectionsColoredLine *)&v24 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  lineColor = [(TransitDirectionsColoredLine *)self lineColor];
  if (lineColor)
  {
    style = [(TransitDirectionsColoredLine *)self style];
    [(TransitDirectionsColoredLine *)self bounds];
    Width = CGRectGetWidth(v26);
    v23 = 0.0;
    if (style != 4 || [(TransitDirectionsColoredLine *)self _maximumNumberOfDots:&v23])
    {
      CurrentContext = UIGraphicsGetCurrentContext();
      [(TransitDirectionsColoredLine *)self bounds];
      CGContextClearRect(CurrentContext, v27);
      CGContextSetLineWidth(CurrentContext, Width);
      CGContextSetStrokeColorWithColor(CurrentContext, [lineColor CGColor]);
      v8 = Width * 0.5;
      [(TransitDirectionsColoredLine *)self bounds];
      Height = CGRectGetHeight(v28);
      if (style)
      {
        if (style != 4)
        {
          v19 = 0.0;
          if (style >= 3)
          {
            v20 = 0.0;
          }

          else
          {
            v20 = Width * 0.5;
          }

          if ((style & 0xFFFFFFFFFFFFFFFDLL) == 1)
          {
            v19 = Width * 0.5;
          }

          v21 = Height - v19;
          [(TransitDirectionsColoredLine *)self bounds];
          MidY = CGRectGetMidY(v30);
          CGContextSetLineCap(CurrentContext, (style < 3));
          CGContextMoveToPoint(CurrentContext, v8, MidY);
          CGContextAddLineToPoint(CurrentContext, v8, v20);
          if (style != 1)
          {
            CGContextStrokePath(CurrentContext);
          }

          CGContextSetLineCap(CurrentContext, ((style & 0xFFFFFFFFFFFFFFFDLL) == 1));
          CGContextMoveToPoint(CurrentContext, v8, MidY);
          v16 = CurrentContext;
          v17 = v8;
          v18 = v21;
          goto LABEL_17;
        }

        [(TransitDirectionsColoredLine *)self innerGapLength];
        v11 = v10 + Width;
        [(TransitDirectionsColoredLine *)self bounds];
        v12 = (CGRectGetHeight(v29) - v23) * 0.5;
        Height = Height - v12;
        lengths[0] = 0.0;
        lengths[1] = v11;
        CGContextSetLineDash(CurrentContext, v11 + v8, lengths, 2uLL);
        CGContextSetLineCap(CurrentContext, kCGLineCapRound);
        v13 = CurrentContext;
        v14 = v8;
        v15 = v12;
      }

      else
      {
        v15 = 0.0;
        v13 = CurrentContext;
        v14 = Width * 0.5;
      }

      CGContextMoveToPoint(v13, v14, v15);
      v16 = CurrentContext;
      v17 = v8;
      v18 = Height;
LABEL_17:
      CGContextAddLineToPoint(v16, v17, v18);
      CGContextStrokePath(CurrentContext);
    }
  }
}

- (unint64_t)_maximumNumberOfDots:(double *)dots
{
  [(TransitDirectionsColoredLine *)self bounds];
  Width = CGRectGetWidth(v19);
  [(TransitDirectionsColoredLine *)self innerGapLength];
  v7 = v6;
  [(TransitDirectionsColoredLine *)self outerGapLength];
  v9 = v8;
  [(TransitDirectionsColoredLine *)self bounds];
  Height = CGRectGetHeight(v20);
  [(TransitDirectionsColoredLine *)self outerGapLength];
  v12 = Height - v11;
  v13 = v9 + Width;
  v14 = 0;
  while (v13 <= v12)
  {
    ++v14;
    v13 = v13 + v7 + Width;
  }

  if (dots)
  {
    [(TransitDirectionsColoredLine *)self outerGapLength];
    v16 = Width * (v14 + (v14 & 1) - 1) + v15 * 2.0;
    if (v14 + (v14 & 1) != 1)
    {
      [(TransitDirectionsColoredLine *)self innerGapLength];
      v16 = v16 + v17 * ((v14 & 1) + v14);
    }

    *dots = v16;
  }

  return v14 + (v14 & 1) - 1;
}

- (void)setInnerGapLength:(double)length
{
  if (self->_innerGapLength != length)
  {
    self->_innerGapLength = length;
    [(TransitDirectionsColoredLine *)self setNeedsDisplay];
  }
}

- (double)innerGapLength
{
  result = self->_innerGapLength;
  if (result <= 0.0)
  {
    [(TransitDirectionsColoredLine *)self bounds];

    return CGRectGetWidth(*&v5);
  }

  return result;
}

- (void)setOuterGapLength:(double)length
{
  if (self->_outerGapLength != length)
  {
    self->_outerGapLength = length;
    [(TransitDirectionsColoredLine *)self setNeedsDisplay];
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(TransitDirectionsColoredLine *)self setNeedsDisplay];
  }
}

- (void)setLineColor:(id)color
{
  colorCopy = color;
  if (self->_lineColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_lineColor, color);
    [(TransitDirectionsColoredLine *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (TransitDirectionsColoredLine)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsColoredLine;
  v3 = [(TransitDirectionsColoredLine *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitDirectionsColoredLine *)v3 setBackgroundColor:v4];

    [(TransitDirectionsColoredLine *)v3 setContentMode:3];
  }

  return v3;
}

- (TransitDirectionsColoredLine)initWithStyle:(unint64_t)style
{
  result = [(TransitDirectionsColoredLine *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

@end