@interface TransitDirectionsColoredLine
- (TransitDirectionsColoredLine)initWithFrame:(CGRect)a3;
- (TransitDirectionsColoredLine)initWithStyle:(unint64_t)a3;
- (double)innerGapLength;
- (unint64_t)_maximumNumberOfDots:(double *)a3;
- (void)drawRect:(CGRect)a3;
- (void)setInnerGapLength:(double)a3;
- (void)setLineColor:(id)a3;
- (void)setOuterGapLength:(double)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation TransitDirectionsColoredLine

- (void)drawRect:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = TransitDirectionsColoredLine;
  [(TransitDirectionsColoredLine *)&v24 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(TransitDirectionsColoredLine *)self lineColor];
  if (v4)
  {
    v5 = [(TransitDirectionsColoredLine *)self style];
    [(TransitDirectionsColoredLine *)self bounds];
    Width = CGRectGetWidth(v26);
    v23 = 0.0;
    if (v5 != 4 || [(TransitDirectionsColoredLine *)self _maximumNumberOfDots:&v23])
    {
      CurrentContext = UIGraphicsGetCurrentContext();
      [(TransitDirectionsColoredLine *)self bounds];
      CGContextClearRect(CurrentContext, v27);
      CGContextSetLineWidth(CurrentContext, Width);
      CGContextSetStrokeColorWithColor(CurrentContext, [v4 CGColor]);
      v8 = Width * 0.5;
      [(TransitDirectionsColoredLine *)self bounds];
      Height = CGRectGetHeight(v28);
      if (v5)
      {
        if (v5 != 4)
        {
          v19 = 0.0;
          if (v5 >= 3)
          {
            v20 = 0.0;
          }

          else
          {
            v20 = Width * 0.5;
          }

          if ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
          {
            v19 = Width * 0.5;
          }

          v21 = Height - v19;
          [(TransitDirectionsColoredLine *)self bounds];
          MidY = CGRectGetMidY(v30);
          CGContextSetLineCap(CurrentContext, (v5 < 3));
          CGContextMoveToPoint(CurrentContext, v8, MidY);
          CGContextAddLineToPoint(CurrentContext, v8, v20);
          if (v5 != 1)
          {
            CGContextStrokePath(CurrentContext);
          }

          CGContextSetLineCap(CurrentContext, ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 1));
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

- (unint64_t)_maximumNumberOfDots:(double *)a3
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

  if (a3)
  {
    [(TransitDirectionsColoredLine *)self outerGapLength];
    v16 = Width * (v14 + (v14 & 1) - 1) + v15 * 2.0;
    if (v14 + (v14 & 1) != 1)
    {
      [(TransitDirectionsColoredLine *)self innerGapLength];
      v16 = v16 + v17 * ((v14 & 1) + v14);
    }

    *a3 = v16;
  }

  return v14 + (v14 & 1) - 1;
}

- (void)setInnerGapLength:(double)a3
{
  if (self->_innerGapLength != a3)
  {
    self->_innerGapLength = a3;
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

- (void)setOuterGapLength:(double)a3
{
  if (self->_outerGapLength != a3)
  {
    self->_outerGapLength = a3;
    [(TransitDirectionsColoredLine *)self setNeedsDisplay];
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(TransitDirectionsColoredLine *)self setNeedsDisplay];
  }
}

- (void)setLineColor:(id)a3
{
  v5 = a3;
  if (self->_lineColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lineColor, a3);
    [(TransitDirectionsColoredLine *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (TransitDirectionsColoredLine)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsColoredLine;
  v3 = [(TransitDirectionsColoredLine *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitDirectionsColoredLine *)v3 setBackgroundColor:v4];

    [(TransitDirectionsColoredLine *)v3 setContentMode:3];
  }

  return v3;
}

- (TransitDirectionsColoredLine)initWithStyle:(unint64_t)a3
{
  result = [(TransitDirectionsColoredLine *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (result)
  {
    result->_style = a3;
  }

  return result;
}

@end